.class public final Lcom/isaigu/gymapp/ai/FocusBoard;
.super Ljava/lang/Object;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/FocusBoard$Chip;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;,
        Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;,
        Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;,
        Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Ring;,
        Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Step;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Later;,
        Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Unpop;,
        Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;,
        Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;
    }
.end annotation


# static fields
.field private static final H:Landroid/os/Handler;

.field static final HZ1:I = 0x2

.field static final HZ2:I = 0x3

.field private static final ICONS:[Ljava/lang/String;

.field static final INT1:I = 0x0

.field static final INT2:I = 0x1

.field static final KEY:I = 0x2e

.field private static final K_LOCK:Ljava/lang/String; = "lock"

.field private static final K_ROWS:Ljava/lang/String; = "rows"

.field private static final LEFT:[I

.field private static final MODE_IDS:[Ljava/lang/String;

.field private static final PREFS:Ljava/lang/String; = "xems_focus"

.field private static final RATIO:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFRESH:Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;

.field private static final REFRESH_MS:J = 0x12cL

.field private static final RIGHT:[I

.field static final T1:I = 0x4

.field static final T2:I = 0x5

.field private static battText:Landroid/widget/TextView;

.field private static board:Landroid/view/View;

.field private static body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

.field private static final chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

.field private static clientRow:Landroid/widget/LinearLayout;

.field private static clientsKey:Ljava/lang/String;

.field private static focus:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static frame:Landroid/widget/FrameLayout;

.field private static hz1Val:Landroid/widget/TextView;

.field private static hz2Row:Landroid/view/View;

.field private static hz2Val:Landroid/widget/TextView;

.field private static imp1Val:Landroid/widget/TextView;

.field private static imp2Title:Landroid/widget/TextView;

.field private static imp2Val:Landroid/widget/TextView;

.field private static leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

.field private static left:Landroid/view/View;

.field private static lockKey:Landroid/widget/ImageView;

.field private static locked:Z

.field private static looping:Z

.field private static final modeTabs:[Landroid/widget/TextView;

.field private static pick:I

.field private static pill:Landroid/widget/TextView;

.field private static ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

.field private static ring1Label:Landroid/widget/TextView;

.field private static ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

.field private static ring2Steps:Landroid/view/View;

.field private static root:Landroid/view/View;

.field private static sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

.field private static sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static shownStart:I

.field static shownTint:I

.field private static startIcon:Landroid/widget/ImageView;

.field private static startKey:Landroid/widget/LinearLayout;

.field private static startLabel:Landroid/widget/TextView;

.field private static syncKey:Landroid/widget/TextView;

.field private static timeText:Landroid/widget/TextView;

.field private static timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

.field private static waveKey:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->REFRESH:Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;

    .line 64
    new-array v0, v5, [I

    fill-array-data v0, :array_94

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    .line 65
    new-array v0, v5, [I

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "xiong"

    aput-object v1, v0, v6

    const-string v1, "fubu"

    aput-object v1, v0, v3

    const-string v1, "xiazhi"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "xiaotui"

    aput-object v2, v0, v1

    const-string v1, "shoubi"

    aput-object v1, v0, v4

    const-string v1, "houxie"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "bei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "yao"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bibu"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "tui"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->ICONS:[Ljava/lang/String;

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mainModeBtn"

    aput-object v1, v0, v6

    const-string v1, "strenthExist"

    aput-object v1, v0, v3

    const-string v1, "youyangyundong"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "anmo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_IDS:[Ljava/lang/String;

    .line 88
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 89
    new-array v0, v4, [Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modeTabs:[Landroid/widget/TextView;

    .line 98
    sput v3, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    .line 101
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    .line 103
    const v0, -0xdd3c0b

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 104
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    .line 119
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 120
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    return-void

    .line 64
    nop

    :array_94
    .array-data 4
        0x0
        0x4
        0x1
        0x2
        0x3
    .end array-data

    .line 65
    :array_a2
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .prologue
    .line 55
    sput-boolean p0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/WeakHashMap;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(IZ)Landroid/view/View;
    .registers 3

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 3

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    return-object v0
.end method

.method static synthetic access$1700()[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    return-object v0
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->ICONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900()[I
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    return-object v0
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000()[I
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/model/TrainItem;II)F
    .registers 4

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->paintLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$602(I)I
    .registers 1

    .prologue
    .line 55
    sput p0, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    return p0
.end method

.method static synthetic access$700()V
    .registers 0

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    return-void
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .prologue
    .line 55
    sput-boolean p0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    return p0
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 542
    if-eqz p0, :cond_e

    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 543
    :goto_7
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_10

    move-result-object v0

    .line 545
    :cond_d
    :goto_d
    return-object v0

    :cond_e
    move-object v1, v0

    .line 542
    goto :goto_7

    .line 544
    :catch_10
    move-exception v1

    goto :goto_d
.end method

.method private static bodyPane(Landroid/content/Context;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x43280000    # 168.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    .line 658
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 659
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 660
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 662
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 663
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipColumn(Landroid/content/Context;[I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 666
    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    .line 667
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42380000    # 46.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 669
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;-><init>()V

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 670
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    const-string v4, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b, \u0437\u0430 \u0434\u0430 \u0433\u043e \u0438\u0437\u0431\u0435\u0440\u0435\u0448"

    const-string v5, "Tap a muscle to pick it"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 671
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 672
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 673
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 675
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 676
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 677
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipColumn(Landroid/content/Context;[I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 681
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    .line 684
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    return-object v1
.end method

.method private static build(Landroid/content/Context;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    .line 571
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 572
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 573
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 574
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 575
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 576
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 578
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->topBar(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 581
    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 582
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 583
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 584
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bodyPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43ba0000    # 372.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 589
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 590
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->controlPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 592
    return-object v0
.end method

.method static channel(II)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1382
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 1383
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 1384
    if-eqz v3, :cond_1c

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_1c

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v0, :cond_1c

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v0, v0

    if-lt p0, v0, :cond_1d

    .line 1405
    :cond_1c
    :goto_1c
    return-void

    .line 1388
    :cond_1d
    :try_start_1d
    iget-object v0, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v0, v0, p0

    .line 1390
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    if-ne v4, v5, :cond_77

    .line 1391
    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v4

    .line 1392
    if-eqz v4, :cond_35

    array-length v5, v4

    if-ge p0, v5, :cond_35

    aget v1, v4, p0

    .line 1393
    :cond_35
    if-lez v1, :cond_66

    mul-int/2addr v0, p1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1398
    :cond_3f
    :goto_3f
    const/4 v1, 0x0

    const/16 v4, 0x64

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1399
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v0, v0, p0

    if-eqz v0, :cond_89

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    :goto_56
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-static {v0, v4, v3, p0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bar(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V

    .line 1400
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_62} :catch_8b

    .line 1404
    :goto_62
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto :goto_1c

    .line 1394
    :cond_66
    :try_start_66
    iget v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-lez v1, :cond_3f

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_3f

    .line 1396
    :cond_77
    iget v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lez v1, :cond_3f

    int-to-double v0, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    iget v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_86} :catch_8b

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_3f

    .line 1399
    :cond_89
    const/4 v0, 0x0

    goto :goto_56

    .line 1401
    :catch_8b
    move-exception v0

    .line 1402
    const-string v1, "FocusBoard.channel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_62
.end method

.method static chipClick(I)V
    .registers 4

    .prologue
    .line 1265
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buwei"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1266
    :goto_1f
    if-eqz v0, :cond_24

    .line 1267
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1269
    :cond_24
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 1270
    return-void

    .line 1265
    :cond_28
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static chipColumn(Landroid/content/Context;[I)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 690
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    move v0, v1

    .line 691
    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_32

    .line 692
    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v2, p1, v0

    invoke-direct {v4, p0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;-><init>(Landroid/content/Context;I)V

    .line 693
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v5, p1, v0

    aput-object v4, v2, v5

    .line 694
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 695
    if-nez v0, :cond_2b

    move v2, v1

    :goto_21
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 696
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 695
    :cond_2b
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    goto :goto_21

    .line 698
    :cond_32
    return-object v3
.end method

.method private static clientChip(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Z)Landroid/view/View;
    .registers 13

    .prologue
    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v1, 0x1

    .line 1097
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1098
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1099
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v4, v0

    .line 1100
    if-eqz p2, :cond_c8

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 1101
    :goto_32
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1100
    invoke-static {v0, v5, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1102
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v4

    .line 1103
    invoke-static {p0, p1, v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->photo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1104
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42080000    # 34.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x42080000    # 34.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1105
    const/high16 v5, 0x41700000    # 15.0f

    if-eqz p2, :cond_d8

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_5d
    invoke-static {p0, v4, v5, v0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1106
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1108
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1109
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1110
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1111
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1112
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_db

    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_db

    move v0, v1

    .line 1113
    :goto_8a
    if-nez v0, :cond_dd

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_8e
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1114
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1115
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1117
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1118
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1119
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x42280000    # 42.0f

    .line 1120
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1121
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1122
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    return-object v3

    .line 1101
    :cond_c8
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_32

    .line 1105
    :cond_d8
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_5d

    :cond_db
    move v0, v2

    .line 1112
    goto :goto_8a

    .line 1113
    :cond_dd
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_e6

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_8e

    :cond_e6
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto :goto_8e
.end method

.method private static clients()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 264
    :goto_10
    if-eqz v2, :cond_33

    .line 265
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 266
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 267
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 268
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2b} :catch_32

    .line 265
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 263
    :cond_2f
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_10

    .line 272
    :catch_32
    move-exception v0

    .line 274
    :cond_33
    return-object v3
.end method

.method private static controlPane(Landroid/content/Context;)Landroid/view/View;
    .registers 16

    .prologue
    .line 702
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v13

    .line 703
    const-string v0, "xems_focus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    .line 706
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 707
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 708
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 709
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 710
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;-><init>(Landroid/content/Context;II)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    .line 711
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;-><init>(Landroid/content/Context;II)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    .line 712
    const-string v1, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 1"

    const-string v2, "Intensity 1"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1Label:Landroid/widget/TextView;

    .line 713
    const-string v1, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 2"

    const-string v2, "Intensity 2"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 714
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1Label:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->ringColumn(Landroid/content/Context;Lcom/isaigu/gymapp/ai/FocusBoard$Ring;Landroid/widget/TextView;I[Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 718
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 719
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    .line 720
    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 721
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 722
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 723
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 725
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42380000    # 46.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42380000    # 46.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->paintLock(Landroid/content/Context;)V

    .line 727
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 728
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/16 v5, 0xcc

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 729
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 730
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 731
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 732
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    const-string v3, "2=1"

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    .line 734
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 735
    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 736
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/16 v7, 0x99

    .line 737
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 736
    invoke-static {v5, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v5, v6, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 738
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    const-string v4, "\u0418\u043c\u043f\u0443\u043b\u0441 2 = \u0438\u043c\u043f\u0443\u043b\u0441 1"

    const-string v5, "Impulse 2 = impulse 1"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 739
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 741
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42380000    # 46.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42380000    # 46.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    .line 745
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    const/4 v4, 0x1

    invoke-static {p0, v3, v1, v4, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->ringColumn(Landroid/content/Context;Lcom/isaigu/gymapp/ai/FocusBoard$Ring;Landroid/widget/TextView;I[Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    const/4 v1, 0x0

    aget-object v1, v2, v1

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Steps:Landroid/view/View;

    .line 748
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v14

    .line 752
    const/4 v0, 0x3

    new-array v5, v0, [Landroid/widget/TextView;

    .line 753
    const/4 v0, 0x3

    new-array v11, v0, [Landroid/widget/TextView;

    .line 754
    const/4 v0, 0x1

    new-array v12, v0, [Landroid/view/View;

    .line 755
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441 1"

    const-string v1, "Impulse 1"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->impulseCard(Landroid/content/Context;Ljava/lang/String;III[Landroid/widget/TextView;[Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 758
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 759
    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441 2"

    const-string v2, "Impulse 2"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v9, 0x5

    const/4 v10, 0x3

    move-object v6, p0

    invoke-static/range {v6 .. v12}, Lcom/isaigu/gymapp/ai/FocusBoard;->impulseCard(Landroid/content/Context;Ljava/lang/String;III[Landroid/widget/TextView;[Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v14, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    const/4 v0, 0x1

    aget-object v0, v5, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp1Val:Landroid/widget/TextView;

    .line 761
    const/4 v0, 0x2

    aget-object v0, v5, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz1Val:Landroid/widget/TextView;

    .line 762
    const/4 v0, 0x0

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    .line 763
    const/4 v0, 0x1

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    .line 764
    const/4 v0, 0x2

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Val:Landroid/widget/TextView;

    .line 765
    const/4 v0, 0x0

    aget-object v0, v12, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Row:Landroid/view/View;

    .line 766
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 768
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 769
    invoke-virtual {v13, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 773
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 774
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 775
    const-string v2, "\u223f"

    const/high16 v3, 0x42080000    # 34.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    .line 776
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 777
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v4, "save"

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    const-string v3, "\u0412\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "Second impulse"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 779
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 780
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    .line 783
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 784
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startIcon:Landroid/widget/ImageView;

    .line 785
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->startIcon:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    const-string v2, ""

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    .line 787
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 788
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 789
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 790
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v4, "startpaulse"

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 792
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0x3fd9999a    # 1.7f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 793
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 794
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 797
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/4 v8, -0x1

    const v9, 0x3da3d70a    # 0.08f

    .line 798
    invoke-static {v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/high16 v8, -0x1000000

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-static {v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v7

    aput v7, v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 799
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 800
    const/4 v4, -0x1

    invoke-static {v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 801
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 802
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 803
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/16 v6, 0x11

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 805
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v3, "stop"

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    const-string v1, "\u0421\u0442\u043e\u043f"

    const-string v3, "Stop"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 807
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 808
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 809
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 810
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42900000    # 72.0f

    .line 813
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 814
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 815
    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    return-object v13
.end method

.method private static current()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 2

    .prologue
    .line 289
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v0

    .line 290
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 291
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 294
    :goto_12
    return-object v0

    .line 293
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x0

    :goto_1a
    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 294
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    goto :goto_12

    .line 293
    :cond_1f
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    goto :goto_1a
.end method

.method private static engineFree()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 227
    :cond_7
    :goto_7
    return v0

    .line 226
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/OutputOwner;->holder()Ljava/lang/String;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_16

    const-string v2, "music"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_16
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static fillClients(Landroid/content/Context;Ljava/util/List;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ")V"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x42200000    # 40.0f

    const/4 v4, 0x1

    const/16 v7, 0x3a

    const/4 v2, 0x0

    .line 1068
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_b

    .line 1094
    :cond_a
    :goto_a
    return-void

    .line 1071
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 1072
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_68

    .line 1073
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1074
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, p2, :cond_64

    move v3, v4

    .line 1075
    :goto_38
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v6, :cond_66

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_66

    move v0, v4

    .line 1076
    :goto_57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1072
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_64
    move v3, v2

    .line 1074
    goto :goto_38

    :cond_66
    move v0, v2

    .line 1075
    goto :goto_57

    .line 1078
    :cond_68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1079
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1082
    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 1083
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v1, v2

    .line 1084
    :goto_7c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9a

    .line 1085
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1086
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    if-ne v0, p2, :cond_98

    move v3, v4

    :goto_8d
    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->clientChip(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1084
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7c

    :cond_98
    move v3, v2

    .line 1086
    goto :goto_8d

    .line 1088
    :cond_9a
    const-string v0, "+"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x28

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1089
    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u0438 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v2, "Add client"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1090
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1092
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1093
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a
.end method

.method private static find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2038
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2039
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2040
    if-eqz v1, :cond_19

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 2042
    :cond_19
    :goto_19
    return-object v0

    .line 2041
    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method private static hint(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2048
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 2049
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 2053
    :cond_12
    :goto_12
    return-void

    .line 2051
    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method private static impulseCard(Landroid/content/Context;Ljava/lang/String;III[Landroid/widget/TextView;[Landroid/view/View;)Landroid/view/View;
    .registers 16

    .prologue
    .line 861
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 862
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 863
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 864
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 865
    const/high16 v1, 0x41500000    # 13.0f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, p2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 866
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 868
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 869
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 870
    const-string v3, "\u2014"

    const/high16 v4, 0x41c00000    # 24.0f

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, p2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 871
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 872
    const-string v4, "\u2212"

    const/4 v5, -0x1

    invoke-static {p0, v4, p3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 873
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    const-string v4, "+"

    const/4 v5, 0x1

    invoke-static {p0, v4, p3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 875
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 877
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 878
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 881
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 882
    const-string v4, "\u2014"

    const/high16 v5, 0x41900000    # 18.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 883
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 884
    const-string v5, "\u2212"

    const/4 v6, -0x1

    invoke-static {p0, v5, p4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 885
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    const-string v5, "+"

    const/4 v6, 0x1

    invoke-static {p0, v5, p4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 887
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 889
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 890
    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    const/4 v5, 0x0

    aput-object v1, p5, v5

    .line 892
    const/4 v1, 0x1

    aput-object v3, p5, v1

    .line 893
    const/4 v1, 0x2

    aput-object v4, p5, v1

    .line 894
    if-eqz p6, :cond_dd

    .line 895
    const/4 v1, 0x0

    aput-object v2, p6, v1

    .line 897
    :cond_dd
    return-object v0
.end method

.method private static inRow(Ljava/lang/String;)Landroid/view/View;
    .registers 2

    .prologue
    .line 325
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->row()Landroid/view/View;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_b

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isShowing()Z
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 7

    .prologue
    .line 853
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x2e

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 854
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Step;

    invoke-direct {v1, p2}, Lcom/isaigu/gymapp/ai/FocusBoard$Step;-><init>(I)V

    invoke-static {v0, v1, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 855
    return-object v0
.end method

.method private static later()V
    .registers 4

    .prologue
    .line 929
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Later;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Later;-><init>()V

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 930
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Later;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Later;-><init>()V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 931
    return-void
.end method

.method private static main(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    .registers 7

    .prologue
    .line 432
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 433
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 434
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 435
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 437
    :cond_d
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 438
    sget-boolean v3, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v3, :cond_3a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v3

    if-eqz v3, :cond_3a

    if-eq v2, v0, :cond_3a

    .line 439
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    .line 440
    const/4 v1, 0x0

    const/16 v3, 0x64

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 441
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-eq v0, v1, :cond_3a

    .line 442
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    .line 445
    :cond_3a
    return-void
.end method

.method private static marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .prologue
    .line 560
    if-eqz p0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_19

    .line 561
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 560
    :goto_18
    return v0

    .line 561
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 550
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 551
    :goto_6
    if-eqz v0, :cond_d

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    :goto_a
    return v0

    .line 550
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 551
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1158
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 1159
    :goto_11
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_35

    .line 1160
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    .line 1162
    :cond_25
    :goto_25
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1164
    :goto_2b
    return-object v0

    :cond_2c
    move-object v1, v0

    .line 1158
    goto :goto_11

    .line 1162
    :cond_2e
    const-string v0, ""
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_2b

    .line 1163
    :catch_31
    move-exception v0

    .line 1164
    const-string v0, ""

    goto :goto_2b

    :cond_35
    move-object v0, v1

    goto :goto_25
.end method

.method private static off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .prologue
    .line 565
    if-eqz p0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static paintLock(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 529
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 538
    :goto_4
    return-void

    .line 532
    :cond_5
    const/high16 v0, 0x41b80000    # 23.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v1, v0

    .line 533
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v0, :cond_4d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_16
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    invoke-direct {v3, v0, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;-><init>(IZ)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v0, :cond_50

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 535
    :goto_32
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 534
    invoke-static {v0, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v0, :cond_5f

    const-string v0, "\u0421\u044a\u043e\u0442\u043d\u043e\u0448\u0435\u043d\u0438\u0435\u0442\u043e \u0435 \u0437\u0430\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    const-string v2, "Ratio locked"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_49
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 533
    :cond_4d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_16

    .line 535
    :cond_50
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_32

    .line 537
    :cond_5f
    const-string v0, "\u0417\u0430\u043a\u043b\u044e\u0447\u0438 \u0441\u044a\u043e\u0442\u043d\u043e\u0448\u0435\u043d\u0438\u0435\u0442\u043e 1 : 2"

    const-string v2, "Lock the 1 : 2 ratio"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49
.end method

.method private static pause(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    .registers 7

    .prologue
    .line 449
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 450
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 451
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    .line 452
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 453
    sget-boolean v3, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v3, :cond_40

    if-eq v2, v1, :cond_40

    .line 454
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    .line 455
    const v1, 0x3a83126f    # 0.001f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_40

    .line 456
    const/4 v1, 0x0

    const/16 v3, 0x64

    int-to-float v2, v2

    div-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 457
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-eq v0, v1, :cond_40

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int v1, v0, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v1

    if-nez v1, :cond_40

    .line 458
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 462
    :cond_40
    return-void
.end method

.method private static photo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1129
    :try_start_3
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_52

    const-string v2, "userIcon"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1131
    :goto_14
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_54

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1132
    :goto_1e
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    move-object v1, v0

    .line 1133
    :cond_25
    if-eqz v1, :cond_57

    .line 1134
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1135
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1137
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 1138
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1139
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1140
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1141
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_51} :catch_56

    .line 1153
    :goto_51
    return-object v0

    :cond_52
    move-object v0, v1

    .line 1130
    goto :goto_14

    :cond_54
    move-object v0, v1

    .line 1131
    goto :goto_1e

    .line 1144
    :catch_56
    move-exception v0

    .line 1146
    :cond_57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_94

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_65
    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1147
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1148
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1149
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1150
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1151
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1152
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_51

    .line 1146
    :cond_94
    const-string v0, "?"

    goto :goto_65
.end method

.method private static position(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 279
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 281
    :goto_b
    if-eqz v1, :cond_11

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_14

    move-result v0

    .line 283
    :cond_11
    :goto_11
    return v0

    .line 280
    :cond_12
    const/4 v1, 0x0

    goto :goto_b

    .line 282
    :catch_14
    move-exception v1

    goto :goto_11
.end method

.method static press(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 331
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 332
    if-nez v0, :cond_13

    .line 333
    const-string v0, "\u0420\u0435\u0434\u044a\u0442 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u043e\u0449\u0435 \u0441\u0435 \u0437\u0430\u0440\u0435\u0436\u0434\u0430 \u2014 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "The client\'s row is loading \u2014 try again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    .line 342
    :goto_12
    return v0

    .line 336
    :cond_13
    const-string v1, "save"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 337
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->tap(Landroid/view/View;)V

    .line 341
    :goto_1e
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 342
    const/4 v0, 0x1

    goto :goto_12

    .line 339
    :cond_23
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_1e
.end method

.method private static ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F
    .registers 5

    .prologue
    .line 466
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 467
    if-nez v0, :cond_18

    .line 468
    if-lez p1, :cond_1d

    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    :goto_f
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 469
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 468
    :cond_1d
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_f
.end method

.method static refresh()V
    .registers 28

    .prologue
    .line 935
    :try_start_0
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-nez v2, :cond_5

    .line 1061
    :cond_4
    :goto_4
    return-void

    .line 938
    :cond_5
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 939
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v2

    .line 940
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v18

    .line 941
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->fillClients(Landroid/content/Context;Ljava/util/List;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 942
    invoke-static/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v19

    .line 943
    if-eqz v18, :cond_4

    if-eqz v19, :cond_4

    .line 946
    invoke-static/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 947
    invoke-static/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/FocusBoard;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v20

    .line 948
    const/4 v2, 0x0

    move v4, v2

    :goto_31
    const/4 v2, 0x4

    if-ge v4, v2, :cond_95

    .line 949
    move/from16 v0, v20

    if-ne v4, v0, :cond_44

    const/4 v2, 0x1

    move v3, v2

    .line 950
    :goto_3a
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->modeTabs:[Landroid/widget/TextView;

    aget-object v6, v2, v4

    .line 951
    if-nez v6, :cond_47

    .line 948
    :cond_40
    :goto_40
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_31

    .line 949
    :cond_44
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3a

    .line 954
    :cond_47
    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 955
    instance-of v7, v2, Ljava/lang/Boolean;

    if-eqz v7, :cond_57

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, v3, :cond_40

    .line 956
    :cond_57
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 957
    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v7, v2

    .line 958
    if-eqz v3, :cond_8a

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_6b
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 959
    if-eqz v3, :cond_8d

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    move-object/from16 v0, v17

    invoke-static {v0, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 960
    :goto_78
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 959
    invoke-static {v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_81} :catch_82

    goto :goto_40

    .line 1058
    :catch_82
    move-exception v2

    .line 1059
    const-string v3, "FocusBoard.refresh"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 958
    :cond_8a
    :try_start_8a
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_6b

    .line 960
    :cond_8d
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v7, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto :goto_78

    .line 963
    :cond_95
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    const-string v3, "time"

    const-string v4, "\u2014"

    invoke-static {v5, v3, v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    const-string v2, "batteryValueTextView"

    const-string v3, ""

    invoke-static {v5, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 965
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_193

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v4, :cond_193

    const-string v2, "\u043d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430"

    const-string v4, "offline"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_c2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_1b2

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v2, :cond_1b2

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_d7
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 969
    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v7

    .line 970
    invoke-static/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v3

    .line 971
    if-eqz v3, :cond_1b6

    invoke-static/range {v18 .. v18}, Lcom/isaigu/gymapp/train/model/SoftRamp;->clock(Lcom/isaigu/gymapp/train/model/TrainItem;)[J

    move-result-object v4

    .line 974
    :goto_e8
    if-eqz v4, :cond_1c1

    .line 975
    const/4 v2, 0x0

    aget-wide v8, v4, v2

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_1b9

    const/4 v2, 0x1

    :goto_f4
    move/from16 v16, v2

    .line 979
    :goto_f6
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_1cf

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_fd
    sput v2, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 980
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    if-eqz v2, :cond_110

    .line 981
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->set(Z[JIIZ)V

    .line 984
    :cond_110
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_1dc

    const/4 v2, 0x1

    :goto_116
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v15

    .line 985
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_1df

    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v2

    move-object v14, v2

    .line 986
    :goto_12d
    const/4 v5, 0x0

    .line 987
    const/4 v2, 0x0

    .line 988
    const/16 v4, 0xa

    new-array v0, v4, [D

    move-object/from16 v21, v0

    .line 989
    const/16 v4, 0xa

    new-array v0, v4, [Z

    move-object/from16 v22, v0

    .line 990
    const/4 v4, 0x0

    move v6, v4

    :goto_13d
    const/16 v4, 0xa

    if-ge v6, v4, :cond_1ea

    .line 991
    if-eqz v15, :cond_1e2

    array-length v4, v15

    if-ge v6, v4, :cond_1e2

    aget v9, v15, v6

    .line 992
    :goto_148
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v11

    .line 993
    if-eqz v11, :cond_44f

    .line 994
    const/4 v4, 0x1

    .line 995
    if-eqz v14, :cond_1e5

    array-length v5, v14

    if-ge v6, v5, :cond_1e5

    aget v5, v14, v6

    :goto_158
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 997
    :goto_15c
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v5

    aput-boolean v5, v22, v6

    .line 998
    const-wide/high16 v12, 0x3ff4000000000000L    # 1.25

    int-to-double v0, v9

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x404e000000000000L    # 60.0

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    aput-wide v12, v21, v6

    .line 999
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v5, v5, v6

    if-eqz v5, :cond_18f

    .line 1000
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v8, v5, v6

    sget v10, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    if-eqz v11, :cond_1e8

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result v5

    if-eqz v5, :cond_1e8

    const/4 v12, 0x1

    :goto_18a
    aget-boolean v13, v22, v6

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->set(IIZZZ)V

    .line 990
    :cond_18f
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    goto :goto_13d

    .line 966
    :cond_193
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1ae

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25ae "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c2

    :cond_1ae
    const-string v2, ""

    goto/16 :goto_c2

    .line 967
    :cond_1b2
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_d7

    .line 971
    :cond_1b6
    const/4 v4, 0x0

    goto/16 :goto_e8

    .line 975
    :cond_1b9
    if-eqz v7, :cond_1be

    const/4 v2, 0x2

    goto/16 :goto_f4

    :cond_1be
    const/4 v2, 0x0

    goto/16 :goto_f4

    .line 977
    :cond_1c1
    sget v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1cd

    if-eqz v7, :cond_1cd

    const/4 v2, 0x2

    :goto_1c9
    move/from16 v16, v2

    goto/16 :goto_f6

    :cond_1cd
    const/4 v2, 0x1

    goto :goto_1c9

    .line 979
    :cond_1cf
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_1d8

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto/16 :goto_fd

    :cond_1d8
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_fd

    .line 984
    :cond_1dc
    const/4 v2, 0x0

    goto/16 :goto_116

    :cond_1df
    move-object v14, v15

    .line 985
    goto/16 :goto_12d

    .line 991
    :cond_1e2
    const/4 v9, 0x0

    goto/16 :goto_148

    .line 995
    :cond_1e5
    const/4 v5, 0x0

    goto/16 :goto_158

    .line 1000
    :cond_1e8
    const/4 v12, 0x0

    goto :goto_18a

    .line 1003
    :cond_1ea
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    if-eqz v4, :cond_21a

    .line 1004
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    move-object/from16 v0, v18

    if-eq v4, v0, :cond_204

    .line 1005
    sput-object v18, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;
    :try_end_1f6
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_1f6} :catch_82

    .line 1007
    :try_start_1f6
    invoke-static/range {v18 .. v18}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v4

    .line 1008
    if-eqz v4, :cond_3d9

    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v6, :cond_3d9

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_202
    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_204
    .catch Ljava/lang/Throwable; {:try_start_1f6 .. :try_end_204} :catch_3dd

    .line 1013
    :cond_204
    :goto_204
    :try_start_204
    sget-object v8, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    sget-object v9, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z[Z)V

    .line 1014
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    if-eqz v4, :cond_21a

    .line 1015
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->invalidate()V

    .line 1019
    :cond_21a
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1Label:Landroid/widget/TextView;

    if-eqz v5, :cond_3e4

    const-string v4, "\u0418\u0437\u0431\u0440\u0430\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v8, "Selected muscles"

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_226
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    if-eqz v5, :cond_3ee

    move v4, v2

    :goto_22e
    const/4 v5, 0x1

    if-eqz v3, :cond_3f5

    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_3f5

    const/4 v2, 0x1

    :goto_237
    invoke-virtual {v6, v4, v5, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->set(IZZ)V

    .line 1022
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-eqz v3, :cond_3f8

    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_3f8

    const/4 v2, 0x1

    :goto_248
    invoke-virtual {v4, v5, v7, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->set(IZZ)V

    .line 1023
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Steps:Landroid/view/View;

    if-eqz v7, :cond_3fb

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_251
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1024
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    if-eqz v7, :cond_400

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_25a
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1025
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    if-eqz v7, :cond_405

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_263
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1026
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->imp1Val:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->hz1Val:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Hz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    if-eqz v7, :cond_40a

    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441 2"

    const-string v5, "Impulse 2"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2aa
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    if-eqz v7, :cond_414

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_2b3
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1030
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    if-eqz v7, :cond_418

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_2d8
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1032
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Val:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Hz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Row:Landroid/view/View;

    if-eqz v7, :cond_41c

    const/4 v2, 0x0

    :goto_2fc
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v5, v2

    .line 1036
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_41f

    const/4 v2, 0x1

    move v4, v2

    .line 1037
    :goto_30f
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1038
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_423

    const-string v2, "on"

    :goto_31e
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v4, :cond_427

    const-string v2, "m"

    :goto_326
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1039
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_361

    .line 1040
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1041
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v7, :cond_42b

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_33f
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1042
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v7, :cond_42f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    move-object/from16 v0, v17

    invoke-static {v0, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    :goto_34e
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v7, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1044
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v4, :cond_437

    const v2, 0x3eb33333    # 0.35f

    :goto_35e
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1046
    :cond_361
    if-eqz v3, :cond_43b

    const/4 v2, 0x1

    move v3, v2

    .line 1047
    :goto_365
    sget v2, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    if-eq v3, v2, :cond_4

    .line 1048
    sput v3, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 1049
    const/4 v2, 0x1

    if-ne v3, v2, :cond_43f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1050
    :goto_370
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const v10, 0x3df5c28f    # 0.12f

    .line 1051
    invoke-static {v2, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, -0x1000000

    const v10, 0x3e6147ae    # 0.22f

    invoke-static {v2, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v9

    aput v9, v7, v8

    invoke-direct {v4, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1052
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1053
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, -0x1

    const v8, 0x3eb33333    # 0.35f

    invoke-static {v2, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    const/16 v7, 0xaa

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v4, v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1054
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    invoke-static {v4, v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1055
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->startIcon:Landroid/widget/ImageView;

    new-instance v5, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v2, 0x1

    if-ne v3, v2, :cond_443

    const/16 v2, 0x8

    :goto_3c0
    const/4 v6, -0x1

    invoke-direct {v5, v2, v6}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1056
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-ne v3, v2, :cond_446

    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v3, "Pause"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3d4
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3d7
    .catch Ljava/lang/Throwable; {:try_start_204 .. :try_end_3d7} :catch_82

    goto/16 :goto_4

    .line 1008
    :cond_3d9
    :try_start_3d9
    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_3db
    .catch Ljava/lang/Throwable; {:try_start_3d9 .. :try_end_3db} :catch_3dd

    goto/16 :goto_202

    .line 1009
    :catch_3dd
    move-exception v4

    .line 1010
    :try_start_3de
    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_204

    .line 1020
    :cond_3e4
    const-string v4, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 1"

    const-string v8, "Intensity 1"

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_226

    .line 1021
    :cond_3ee
    move-object/from16 v0, v19

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    move v4, v2

    goto/16 :goto_22e

    :cond_3f5
    const/4 v2, 0x0

    goto/16 :goto_237

    .line 1022
    :cond_3f8
    const/4 v2, 0x0

    goto/16 :goto_248

    .line 1023
    :cond_3fb
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_251

    .line 1024
    :cond_400
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_25a

    .line 1025
    :cond_405
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_263

    .line 1028
    :cond_40a
    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v5, "Pause"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2aa

    .line 1029
    :cond_414
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_2b3

    .line 1031
    :cond_418
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_2d8

    .line 1033
    :cond_41c
    const/4 v2, 0x4

    goto/16 :goto_2fc

    .line 1036
    :cond_41f
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_30f

    .line 1038
    :cond_423
    const-string v2, "off"

    goto/16 :goto_31e

    :cond_427
    const-string v2, ""

    goto/16 :goto_326

    .line 1041
    :cond_42b
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_33f

    .line 1042
    :cond_42f
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto/16 :goto_34e

    .line 1044
    :cond_437
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_35e

    .line 1046
    :cond_43b
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_365

    .line 1049
    :cond_43f
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto/16 :goto_370

    .line 1055
    :cond_443
    const/4 v2, 0x7

    goto/16 :goto_3c0

    .line 1056
    :cond_446
    const-string v2, "\u0421\u0442\u0430\u0440\u0442"

    const-string v3, "Start"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_44d
    .catch Ljava/lang/Throwable; {:try_start_3de .. :try_end_44d} :catch_82

    move-result-object v2

    goto :goto_3d4

    :cond_44f
    move v4, v5

    goto/16 :goto_15c
.end method

.method private static ringColumn(Landroid/content/Context;Lcom/isaigu/gymapp/ai/FocusBoard$Ring;Landroid/widget/TextView;I[Landroid/view/View;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, -0x2

    .line 823
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 824
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 825
    const/16 v1, 0x11

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 826
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 829
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 830
    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/ai/FocusBoard;->stepper(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 832
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 834
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 835
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    if-eqz p4, :cond_40

    .line 837
    aput-object v1, p4, v6

    .line 839
    :cond_40
    return-object v0
.end method

.method private static ringLevel(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 476
    invoke-static {p0, p1, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v2

    .line 477
    const/4 v0, -0x1

    .line 478
    :goto_6
    if-eqz v2, :cond_1a

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 479
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 480
    aget v3, v2, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 478
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 483
    :cond_1a
    if-ltz v0, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_1c
.end method

.method private static row()Landroid/view/View;
    .registers 2

    .prologue
    .line 320
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static rowAt(IZ)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 299
    if-ltz p0, :cond_7

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    if-nez v0, :cond_9

    :cond_7
    move-object v0, v2

    .line 316
    :goto_8
    return-object v0

    .line 302
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 303
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_17

    move-object v0, v2

    .line 304
    goto :goto_8

    .line 306
    :cond_17
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 307
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2f

    .line 308
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 309
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p0, :cond_2c

    move-object v0, v3

    .line 310
    goto :goto_8

    .line 307
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 313
    :cond_2f
    if-eqz p1, :cond_34

    .line 314
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_34
    move-object v0, v2

    .line 316
    goto :goto_8
.end method

.method private static rowsMode(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 232
    :try_start_1
    const-string v1, "xems_focus"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "rows"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_10

    move-result v0

    .line 234
    :goto_f
    return v0

    .line 233
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private static running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 1064
    if-eqz p0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 556
    if-eqz p1, :cond_e

    iget-boolean v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_e

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v1

    if-eq v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static setTo(II)V
    .registers 5

    .prologue
    .line 421
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 422
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 423
    if-nez v1, :cond_b

    .line 428
    :goto_a
    return-void

    .line 426
    :cond_b
    const/4 v2, 0x1

    if-ne p0, v2, :cond_16

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 427
    :goto_10
    sub-int v0, p1, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->step(II)V

    goto :goto_a

    .line 426
    :cond_16
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ringLevel(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    goto :goto_10
.end method

.method private static startLoop()V
    .registers 2

    .prologue
    .line 903
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    if-nez v0, :cond_e

    .line 904
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    .line 905
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->REFRESH:Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 907
    :cond_e
    return-void
.end method

.method static step(II)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 373
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 374
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 375
    if-eqz v2, :cond_d

    if-nez p1, :cond_e

    .line 417
    :cond_d
    :goto_d
    return-void

    .line 378
    :cond_e
    if-eq p0, v0, :cond_16

    const/4 v3, 0x3

    if-eq p0, v3, :cond_16

    const/4 v3, 0x5

    if-ne p0, v3, :cond_17

    :cond_16
    const/4 v0, 0x2

    :cond_17
    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    .line 380
    packed-switch p0, :pswitch_data_6c

    goto :goto_d

    .line 382
    :pswitch_1d
    :try_start_1d
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_2b

    move-result v0

    if-eqz v0, :cond_27

    .line 416
    :goto_23
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto :goto_d

    .line 385
    :cond_27
    :try_start_27
    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->main(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_23

    .line 413
    :catch_2b
    move-exception v0

    .line 414
    const-string v1, "FocusBoard.step"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 388
    :pswitch_32
    :try_start_32
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 389
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u223f."

    const-string v1, "Turn the second impulse on with \u223f."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    goto :goto_d

    .line 392
    :cond_44
    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->pause(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    goto :goto_23

    .line 395
    :pswitch_48
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addHz(I)V

    goto :goto_23

    .line 398
    :pswitch_4c
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 399
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u223f."

    const-string v1, "Turn the second impulse on with \u223f."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    goto :goto_d

    .line 402
    :cond_5e
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseHz(I)V

    goto :goto_23

    .line 405
    :pswitch_62
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->time(ZI)V

    goto :goto_d

    .line 408
    :pswitch_67
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->time(ZI)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_6b} :catch_2b

    goto :goto_d

    .line 380
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_32
        :pswitch_48
        :pswitch_4c
        :pswitch_62
        :pswitch_67
    .end packed-switch
.end method

.method private static stepper(Landroid/content/Context;I)Landroid/widget/LinearLayout;
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 844
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 845
    const-string v1, "\u2212"

    const/4 v2, -0x1

    invoke-static {p0, v1, p1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 846
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 847
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    const-string v1, "+"

    invoke-static {p0, v1, p1, v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 849
    return-object v0
.end method

.method public static sync(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 133
    if-eqz p0, :cond_8

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 136
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->tick()V

    .line 137
    return-void
.end method

.method private static tap(Landroid/view/View;)V
    .registers 10

    .prologue
    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 348
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v5, v2, v3

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v6, v2, v3

    .line 350
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 351
    const-wide/16 v2, 0x3c

    add-long/2addr v2, v0

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 353
    :try_start_26
    invoke-virtual {p0, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 354
    invoke-virtual {p0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_33

    .line 356
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 357
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 359
    return-void

    .line 356
    :catchall_33
    move-exception v0

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 357
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 358
    throw v0
.end method

.method private static textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1169
    if-eqz p0, :cond_17

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1170
    :goto_6
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_16

    .line 1171
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1172
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1174
    :cond_16
    return-object p2

    .line 1169
    :cond_17
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static tick()V
    .registers 10

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 142
    :try_start_3
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 143
    if-nez v2, :cond_8

    .line 177
    :cond_7
    :goto_7
    return-void

    .line 146
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 147
    const-string v4, "leftLayout"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_7

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->isTrainingPage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 151
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->left:Landroid/view/View;

    if-ne v2, v4, :cond_2a

    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_2a

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    if-eq v4, v5, :cond_2d

    .line 152
    :cond_2a
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->wrap(Landroid/content/Context;Landroid/view/View;)V

    .line 154
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 155
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->engineFree()Z

    move-result v5

    .line 156
    if-eqz v5, :cond_a0

    if-lez v4, :cond_a0

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a0

    const/4 v2, 0x1

    .line 157
    :goto_44
    if-eqz v2, :cond_a2

    .line 158
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-nez v6, :cond_79

    .line 159
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->build(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    .line 160
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 163
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v6, 0xdc

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 165
    :cond_79
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->startLoop()V

    .line 170
    :cond_82
    :goto_82
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    .line 171
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    if-nez v2, :cond_ae

    if-eqz v5, :cond_ae

    if-lez v4, :cond_ae

    :goto_8e
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_96} :catch_98

    goto/16 :goto_7

    .line 174
    :catch_98
    move-exception v0

    .line 175
    const-string v1, "FocusBoard.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_a0
    move v2, v0

    .line 156
    goto :goto_44

    .line 167
    :cond_a2
    :try_start_a2
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-eqz v3, :cond_82

    .line 168
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_ad} :catch_98

    goto :goto_82

    :cond_ae
    move v0, v1

    .line 171
    goto :goto_8e
.end method

.method static time(ZI)V
    .registers 4

    .prologue
    .line 363
    if-eqz p0, :cond_1b

    const-string v0, "paulsestop"

    :goto_4
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_21

    if-lez p1, :cond_1e

    const-string v0, "btnIncrease"

    :goto_e
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 365
    :goto_12
    if-eqz v0, :cond_17

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 368
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 369
    return-void

    .line 363
    :cond_1b
    const-string v0, "paulsecontinue"

    goto :goto_4

    .line 364
    :cond_1e
    const-string v0, "btnDecrease"

    goto :goto_e

    :cond_21
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static topBar(Landroid/content/Context;)Landroid/view/View;
    .registers 14

    .prologue
    const/high16 v12, 0x41100000    # 9.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v1, 0x0

    .line 596
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 597
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 600
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 601
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 602
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 603
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    .line 604
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 605
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 608
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 610
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "\u041e\u0421\u041d\u041e\u0412\u0415\u041d"

    const-string v5, "MAIN"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "\u041c\u0423\u0421\u041a\u0423\u041b\u0418"

    const-string v5, "MUSCLE"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    const/4 v0, 0x2

    const-string v5, "\u041a\u0410\u0420\u0414\u0418\u041e"

    const-string v6, "CARDIO"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "\u041c\u0410\u0421\u0410\u0416"

    const-string v6, "MASSAGE"

    .line 611
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    move v0, v1

    .line 612
    :goto_a6
    const/4 v5, 0x4

    if-ge v0, v5, :cond_f9

    .line 613
    aget-object v5, v4, v0

    const/high16 v6, 0x41580000    # 13.5f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v5, v6, v7, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 614
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 615
    const v6, 0x3d23d70a    # 0.04f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 616
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 617
    new-instance v6, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    sget-object v7, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_IDS:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-direct {v6, v7}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 619
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->modeTabs:[Landroid/widget/TextView;

    aput-object v5, v6, v0

    .line 620
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42d00000    # 104.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 622
    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 624
    :cond_f9
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 626
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 627
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 628
    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    const-string v0, "\u2014"

    const/high16 v3, 0x41c00000    # 24.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v3, v4, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    .line 631
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v3, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 632
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 633
    const-string v0, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v3, v4, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    .line 634
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 635
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 637
    const-string v0, "\u2699"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x28

    invoke-static {p0, v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 638
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v3, "setting"

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    const-string v1, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v3, "Client parameters"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 640
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2630  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0420\u0435\u0434\u043e\u0432\u0435"

    const-string v3, "Rows"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41580000    # 13.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v3, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 643
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 644
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 645
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 646
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v3, v1, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 649
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;

    invoke-direct {v1, v11}, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 652
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 653
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    return-object v2
.end method

.method private static wrap(Landroid/content/Context;Landroid/view/View;)V
    .registers 11

    .prologue
    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 181
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    .line 182
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    .line 183
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 184
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 185
    sput-object p1, Lcom/isaigu/gymapp/ai/FocusBoard;->left:Landroid/view/View;

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1d

    .line 219
    :goto_1c
    return-void

    .line 189
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 190
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_d5

    const-string v1, "xems_focus_frame"

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 191
    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 192
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 193
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :goto_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u25ce  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0424\u043e\u043a\u0443\u0441"

    const-string v2, "Focus"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    .line 207
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 208
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 209
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 210
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 212
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 215
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 216
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 217
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1c

    .line 196
    :cond_d5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 199
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 200
    const-string v4, "xems_focus_frame"

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 201
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 204
    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    goto/16 :goto_46
.end method
