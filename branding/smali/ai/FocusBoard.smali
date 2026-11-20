.class public final Lcom/isaigu/gymapp/ai/FocusBoard;
.super Ljava/lang/Object;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/FocusBoard$Chip;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Shape;,
        Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$PressLater;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;,
        Lcom/isaigu/gymapp/ai/FocusBoard$LinkClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Turn;,
        Lcom/isaigu/gymapp/ai/FocusBoard$TurnClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;,
        Lcom/isaigu/gymapp/ai/FocusBoard$ModeMenuClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$ModePick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;,
        Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;,
        Lcom/isaigu/gymapp/ai/FocusBoard$RowsAfresh;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Ring;,
        Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$WaveClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Step;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Later;,
        Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Unpop;,
        Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;,
        Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$RemoveAnswer;
    }
.end annotation


# static fields
.field private static final CLOCK:Ljava/text/SimpleDateFormat;

.field private static final H:Landroid/os/Handler;

.field static final HZ1:I = 0x2

.field static final HZ2:I = 0x3

.field private static final ICONS:[Ljava/lang/String;

.field static final INT1:I = 0x0

.field static final INT2:I = 0x1

.field static final KEY:I = 0x2e

.field private static final K_LOCK:Ljava/lang/String; = "lock"

.field private static final K_ROWS:Ljava/lang/String; = "rows"

.field private static final K_UPRIGHT:Ljava/lang/String; = "upright"

.field private static final LEFT:[I

.field private static final MODE_HINTS_BG:[Ljava/lang/String;

.field private static final MODE_HINTS_EN:[Ljava/lang/String;

.field private static final MODE_IDS:[Ljava/lang/String;

.field private static final MODE_NAMES_BG:[Ljava/lang/String;

.field private static final MODE_NAMES_EN:[Ljava/lang/String;

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

.field static final SLIDE:I = 0x14

.field static final T1:I = 0x4

.field static final T2:I = 0x5

.field private static battText:Landroid/widget/TextView;

.field private static board:Landroid/view/View;

.field private static body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

.field private static builtPortrait:Z

.field private static final chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

.field private static clientRow:Landroid/widget/LinearLayout;

.field private static clientsKey:Ljava/lang/String;

.field private static focus:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static frame:Landroid/widget/FrameLayout;

.field private static hostOrientation:I

.field private static hz1Val:Landroid/widget/TextView;

.field private static hz2Row:Landroid/view/View;

.field private static hz2Val:Landroid/widget/TextView;

.field private static imp1Val:Landroid/widget/TextView;

.field private static imp2Title:Landroid/widget/TextView;

.field private static imp2Val:Landroid/widget/TextView;

.field private static landDensity:F

.field private static landScaled:F

.field private static leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

.field private static left:Landroid/view/View;

.field private static linkIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

.field private static linkKey:Landroid/widget/LinearLayout;

.field private static linkText:Landroid/widget/TextView;

.field private static lockKey:Landroid/widget/ImageView;

.field private static locked:Z

.field private static looping:Z

.field private static modeDot:Landroid/view/View;

.field private static modeKey:Landroid/widget/LinearLayout;

.field private static modeName:Landroid/widget/TextView;

.field private static modePop:Landroid/widget/PopupWindow;

.field private static pick:I

.field private static pill:Landroid/widget/TextView;

.field private static ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

.field private static ring1Label:Landroid/widget/TextView;

.field private static ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

.field private static ring2Steps:Landroid/view/View;

.field private static root:Landroid/view/View;

.field private static sessionBar:Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

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

.field private static turned:Z

.field private static waveKey:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->REFRESH:Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_ee

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_fc

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "xiong"

    aput-object v1, v0, v3

    const-string v1, "fubu"

    aput-object v1, v0, v4

    const-string v1, "xiazhi"

    aput-object v1, v0, v5

    const-string v1, "xiaotui"

    aput-object v1, v0, v6

    const-string v1, "shoubi"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "houxie"

    aput-object v2, v0, v1

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

    .line 71
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "mainModeBtn"

    aput-object v1, v0, v3

    const-string v1, "strenthExist"

    aput-object v1, v0, v4

    const-string v1, "youyangyundong"

    aput-object v1, v0, v5

    const-string v1, "anmo"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_IDS:[Ljava/lang/String;

    .line 91
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->CLOCK:Ljava/text/SimpleDateFormat;

    .line 112
    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    .line 115
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    .line 117
    const v0, -0xc82f15

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 118
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    .line 133
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 134
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 750
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u041e\u0441\u043d\u043e\u0432\u0435\u043d"

    aput-object v1, v0, v3

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    aput-object v1, v0, v4

    const-string v1, "\u041a\u0430\u0440\u0434\u0438\u043e"

    aput-object v1, v0, v5

    const-string v1, "\u041c\u0430\u0441\u0430\u0436"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_NAMES_BG:[Ljava/lang/String;

    .line 751
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Main"

    aput-object v1, v0, v3

    const-string v1, "Muscle"

    aput-object v1, v0, v4

    const-string v1, "Cardio"

    aput-object v1, v0, v5

    const-string v1, "Massage"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_NAMES_EN:[Ljava/lang/String;

    .line 752
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u0441\u0438\u043b\u0430 \u0438 \u0438\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u043e\u0441\u0442"

    aput-object v1, v0, v3

    const-string v1, "\u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u043d\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435"

    aput-object v1, v0, v4

    const-string v1, "\u043f\u0443\u043b\u0441 \u0438 \u0438\u0437\u0433\u0430\u0440\u044f\u043d\u0435"

    aput-object v1, v0, v5

    const-string v1, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_HINTS_BG:[Ljava/lang/String;

    .line 754
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "strength and endurance"

    aput-object v1, v0, v3

    const-string v1, "maximal load"

    aput-object v1, v0, v4

    const-string v1, "heart rate and burn"

    aput-object v1, v0, v5

    const-string v1, "recovery"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_HINTS_EN:[Ljava/lang/String;

    .line 1161
    sput v3, Lcom/isaigu/gymapp/ai/FocusBoard;->hostOrientation:I

    return-void

    .line 65
    nop

    :array_ee
    .array-data 4
        0x0
        0x4
        0x1
        0x2
        0x3
    .end array-data

    .line 66
    :array_fc
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
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Landroid/view/View;
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->openModeMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_IDS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->wantUpright(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()Landroid/view/View;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 3

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    return v0
.end method

.method static synthetic access$1700()Landroid/view/View;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z

    return v0
.end method

.method static synthetic access$1900()Z
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->framePortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    return-void
.end method

.method static synthetic access$2000()Landroid/widget/FrameLayout;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2202(Z)Z
    .registers 1

    .prologue
    .line 55
    sput-boolean p0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    return p0
.end method

.method static synthetic access$2300()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(IZ)Landroid/view/View;
    .registers 3

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    .prologue
    .line 55
    sput-boolean p0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    return p0
.end method

.method static synthetic access$3100()Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    return-object v0
.end method

.method static synthetic access$3200()Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    return-object v0
.end method

.method static synthetic access$3300()[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    return-object v0
.end method

.method static synthetic access$3400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->ICONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500()[I
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    return-object v0
.end method

.method static synthetic access$3600()[I
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/WeakHashMap;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$500()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/train/model/TrainItem;II)F
    .registers 4

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->paintLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$802(I)I
    .registers 1

    .prologue
    .line 55
    sput p0, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    return p0
.end method

.method static synthetic access$900()Landroid/widget/PopupWindow;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modePop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 1042
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 1043
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 1044
    check-cast v0, Landroid/app/Activity;

    .line 1048
    :goto_b
    return-object v0

    .line 1046
    :cond_c
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 1048
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 598
    if-eqz p0, :cond_e

    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 599
    :goto_7
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_10

    move-result-object v0

    .line 601
    :cond_d
    :goto_d
    return-object v0

    :cond_e
    move-object v1, v0

    .line 598
    goto :goto_7

    .line 600
    :catch_10
    move-exception v1

    goto :goto_d
.end method

.method private static bodyPane(Landroid/content/Context;)Landroid/view/View;
    .registers 12

    .prologue
    const/high16 v10, 0x43280000    # 168.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x41900000    # 18.0f

    const/4 v6, -0x1

    .line 951
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 952
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 953
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 954
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 955
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 956
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipColumn(Landroid/content/Context;[I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 959
    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->sessionBar:Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    .line 960
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->sessionBar:Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42780000    # 62.0f

    .line 961
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 960
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 963
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;-><init>()V

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 964
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    const-string v4, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b, \u0437\u0430 \u0434\u0430 \u0433\u043e \u0438\u0437\u0431\u0435\u0440\u0435\u0448"

    const-string v5, "Tap a muscle to pick it"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 965
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 966
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 967
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    .line 970
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42380000    # 46.0f

    .line 971
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 972
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 973
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 974
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 975
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 976
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 978
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 979
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 980
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 981
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipColumn(Landroid/content/Context;[I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 984
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 986
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    .line 987
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 989
    return-object v1
.end method

.method private static bodytech(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 1991
    if-eqz p0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 1992
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 1991
    :goto_11
    return v0

    .line 1992
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static build(Landroid/content/Context;)Landroid/view/View;
    .registers 10

    .prologue
    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 627
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 628
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->framePortrait()Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z

    .line 629
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 630
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 631
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 632
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 633
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 635
    sget-boolean v1, Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z

    if-eqz v1, :cond_61

    .line 638
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->topBar(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 641
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 642
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->figurePane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 644
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 645
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->controlPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    :goto_5e
    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 661
    return-object v0

    .line 647
    :cond_61
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->topBar(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42580000    # 54.0f

    .line 648
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 647
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 650
    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 651
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 652
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 653
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bodyPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43ba0000    # 372.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 657
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 658
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->controlPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5e
.end method

.method static channel(II)V
    .registers 5

    .prologue
    .line 2142
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 2143
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    if-nez v1, :cond_b

    .line 2153
    :goto_a
    return-void

    .line 2147
    :cond_b
    :try_start_b
    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->channelBy(Lcom/isaigu/gymapp/train/model/TrainItem;II)V

    .line 2148
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_13} :catch_17

    .line 2152
    :goto_13
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto :goto_a

    .line 2149
    :catch_17
    move-exception v0

    .line 2150
    const-string v1, "FocusBoard.channel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method static chipClick(I)V
    .registers 4

    .prologue
    .line 2012
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

    .line 2013
    :goto_1f
    if-eqz v0, :cond_24

    .line 2014
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2016
    :cond_24
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 2017
    return-void

    .line 2012
    :cond_28
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static chipColumn(Landroid/content/Context;[I)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 993
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    move v0, v1

    .line 994
    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_32

    .line 995
    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v2, p1, v0

    invoke-direct {v4, p0, v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;-><init>(Landroid/content/Context;IZ)V

    .line 996
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v5, p1, v0

    aput-object v4, v2, v5

    .line 997
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 998
    if-nez v0, :cond_2b

    move v2, v1

    :goto_21
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 999
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 998
    :cond_2b
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    goto :goto_21

    .line 1001
    :cond_32
    return-object v3
.end method

.method private static clientChip(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Z)Landroid/view/View;
    .registers 14

    .prologue
    const/high16 v10, 0x42080000    # 34.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v1, 0x1

    const/high16 v7, 0x40800000    # 4.0f

    .line 1722
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1723
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1724
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v3, v0

    .line 1725
    if-eqz p2, :cond_11b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 1726
    :goto_33
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1725
    invoke-static {v0, v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1727
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v3

    .line 1728
    invoke-static {p0, p1, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->photo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1729
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1730
    const/high16 v4, 0x41700000    # 15.0f

    if-eqz p2, :cond_12b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_5a
    invoke-static {p0, v3, v4, v0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1731
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1732
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1733
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1734
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1735
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1736
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1737
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_12f

    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_12f

    move v0, v1

    .line 1738
    :goto_89
    if-nez v0, :cond_132

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_8d
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1739
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1740
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1741
    if-eqz p2, :cond_f7

    .line 1743
    const-string v0, "\u2715"

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1744
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1745
    const-string v3, "\u041c\u0430\u0445\u043d\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v4, "Remove the client"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1746
    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;

    invoke-direct {v3, p1}, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1747
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1748
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1749
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1750
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1751
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1753
    :cond_f7
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1754
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1755
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1756
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v3, 0x42280000    # 42.0f

    .line 1757
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1758
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1759
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1760
    return-object v2

    .line 1726
    :cond_11b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_33

    .line 1730
    :cond_12b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_5a

    .line 1737
    :cond_12f
    const/4 v0, 0x0

    goto/16 :goto_89

    .line 1738
    :cond_132
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_13c

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_8d

    :cond_13c
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto/16 :goto_8d
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
    .line 289
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 291
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 293
    :goto_10
    if-eqz v2, :cond_33

    .line 294
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 295
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 296
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 297
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2b} :catch_32

    .line 294
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 292
    :cond_2f
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_10

    .line 301
    :catch_32
    move-exception v0

    .line 303
    :cond_33
    return-object v3
.end method

.method static closeModeMenu()V
    .registers 1

    .prologue
    .line 823
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modePop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 824
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modePop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_d

    .line 828
    :cond_9
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modePop:Landroid/widget/PopupWindow;

    .line 829
    return-void

    .line 826
    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method private static controlPane(Landroid/content/Context;)Landroid/view/View;
    .registers 16

    .prologue
    .line 1240
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v13

    .line 1241
    const-string v0, "xems_focus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    .line 1244
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1245
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1246
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1247
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

    .line 1248
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;-><init>(Landroid/content/Context;II)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    .line 1249
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;-><init>(Landroid/content/Context;II)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    .line 1250
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

    .line 1251
    const-string v1, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 2"

    const-string v2, "Intensity 2"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1252
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

    .line 1255
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1256
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1257
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    .line 1258
    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 1259
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1260
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1261
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1262
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1263
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

    .line 1264
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->paintLock(Landroid/content/Context;)V

    .line 1265
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1266
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

    .line 1267
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1268
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1269
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1270
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1271
    const-string v3, "2=1"

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    .line 1272
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1273
    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 1274
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/16 v7, 0x99

    .line 1275
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 1274
    invoke-static {v5, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v5, v6, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1276
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    const-string v4, "\u0418\u043c\u043f\u0443\u043b\u0441 2 = \u0438\u043c\u043f\u0443\u043b\u0441 1"

    const-string v5, "Impulse 2 = impulse 1"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1277
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1278
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1279
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

    .line 1280
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    .line 1283
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

    .line 1285
    const/4 v1, 0x0

    aget-object v1, v2, v1

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Steps:Landroid/view/View;

    .line 1286
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3fa00000    # 1.25f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v14

    .line 1290
    const/4 v0, 0x3

    new-array v5, v0, [Landroid/widget/TextView;

    .line 1291
    const/4 v0, 0x3

    new-array v11, v0, [Landroid/widget/TextView;

    .line 1292
    const/4 v0, 0x1

    new-array v12, v0, [Landroid/view/View;

    .line 1293
    const/16 v0, 0x70

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1294
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

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1296
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1297
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1298
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

    .line 1299
    const/4 v0, 0x1

    aget-object v0, v5, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp1Val:Landroid/widget/TextView;

    .line 1300
    const/4 v0, 0x2

    aget-object v0, v5, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz1Val:Landroid/widget/TextView;

    .line 1301
    const/4 v0, 0x0

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    .line 1302
    const/4 v0, 0x1

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    .line 1303
    const/4 v0, 0x2

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Val:Landroid/widget/TextView;

    .line 1304
    const/4 v0, 0x0

    aget-object v0, v12, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Row:Landroid/view/View;

    .line 1305
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1306
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1307
    invoke-virtual {v13, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1310
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1311
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1312
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 1313
    const-string v2, "\u223f"

    const/high16 v3, 0x42080000    # 34.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    .line 1314
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1315
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$WaveClick;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/FocusBoard$WaveClick;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1316
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    const-string v3, "\u0412\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "Second impulse"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1317
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1318
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1320
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    .line 1321
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1322
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startIcon:Landroid/widget/ImageView;

    .line 1323
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

    .line 1324
    const-string v2, ""

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    .line 1325
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1326
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1327
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1328
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v4, "startpaulse"

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1329
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1330
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0x3fd9999a    # 1.7f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1331
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1332
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1334
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1335
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/4 v8, -0x1

    const v9, 0x3da3d70a    # 0.08f

    .line 1336
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

    .line 1337
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1338
    const/4 v4, -0x1

    invoke-static {v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1339
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1340
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1341
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

    .line 1342
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1343
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v3, "stop"

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1344
    const-string v1, "\u0421\u0442\u043e\u043f"

    const-string v3, "Stop"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1345
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1346
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1347
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1348
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x429c0000    # 78.0f

    .line 1351
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1352
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1353
    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1354
    return-object v13
.end method

.method private static current()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 2

    .prologue
    .line 318
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v0

    .line 319
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 320
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 323
    :goto_12
    return-object v0

    .line 322
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x0

    :goto_1a
    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 323
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    goto :goto_12

    .line 322
    :cond_1f
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    goto :goto_1a
.end method

.method private static engineFree()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 245
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->onScreen()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ownsOutput()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 255
    :cond_14
    :goto_14
    return v0

    .line 248
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    .line 249
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v2, v3, :cond_14

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v2, v3, :cond_14

    .line 252
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    .line 253
    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_31

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_31

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2f} :catch_33

    if-ne v2, v3, :cond_14

    :cond_31
    move v0, v1

    goto :goto_14

    .line 254
    :catch_33
    move-exception v0

    move v0, v1

    .line 255
    goto :goto_14
.end method

.method private static figurePane(Landroid/content/Context;)Landroid/view/View;
    .registers 12

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v4, 0x41900000    # 18.0f

    const/4 v2, 0x0

    const/4 v9, -0x1

    .line 906
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 907
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 908
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 909
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v5, v0, v1, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 910
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->sessionBar:Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    .line 911
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->sessionBar:Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42780000    # 62.0f

    .line 912
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 911
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 914
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 915
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    const-string v1, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b, \u0437\u0430 \u0434\u0430 \u0433\u043e \u0438\u0437\u0431\u0435\u0440\u0435\u0448"

    const-string v3, "Tap a muscle to pick it"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 916
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 917
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    .line 920
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 923
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 924
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    .line 926
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42380000    # 46.0f

    .line 927
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 928
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 929
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 930
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 931
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v4, v2

    .line 932
    :goto_b4
    const/4 v0, 0x2

    if-ge v4, v0, :cond_107

    .line 933
    if-nez v4, :cond_e3

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    .line 934
    :goto_bb
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    move v1, v2

    .line 935
    :goto_c0
    array-length v3, v0

    if-ge v1, v3, :cond_ed

    .line 936
    new-instance v7, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v3, v0, v1

    const/4 v8, 0x1

    invoke-direct {v7, p0, v3, v8}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;-><init>(Landroid/content/Context;IZ)V

    .line 937
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v8, v0, v1

    aput-object v7, v3, v8

    .line 938
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 939
    if-nez v1, :cond_e6

    move v3, v2

    :goto_d9
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 940
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 935
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    .line 933
    :cond_e3
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    goto :goto_bb

    .line 939
    :cond_e6
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    goto :goto_d9

    .line 942
    :cond_ed
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42680000    # 58.0f

    .line 943
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 944
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 945
    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_b4

    .line 947
    :cond_107
    return-object v5
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

    .line 1693
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_b

    .line 1719
    :cond_a
    :goto_a
    return-void

    .line 1696
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 1697
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_68

    .line 1698
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1699
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

    .line 1700
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

    .line 1701
    :goto_57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1697
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_64
    move v3, v2

    .line 1699
    goto :goto_38

    :cond_66
    move v0, v2

    .line 1700
    goto :goto_57

    .line 1703
    :cond_68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1704
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1707
    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 1708
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v1, v2

    .line 1709
    :goto_7c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9a

    .line 1710
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1711
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    if-ne v0, p2, :cond_98

    move v3, v4

    :goto_8d
    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->clientChip(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1709
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7c

    :cond_98
    move v3, v2

    .line 1711
    goto :goto_8d

    .line 1713
    :cond_9a
    const-string v0, "+"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x28

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1714
    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u0438 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v2, "Add client"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1715
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1716
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1717
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1718
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a
.end method

.method private static find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2979
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2980
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2981
    if-eqz v1, :cond_19

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 2983
    :cond_19
    :goto_19
    return-object v0

    .line 2982
    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method private static framePortrait()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1008
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 1009
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    if-lez v3, :cond_1f

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-lez v3, :cond_1f

    .line 1010
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_1d

    .line 1016
    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    .line 1010
    goto :goto_1c

    .line 1013
    :cond_1f
    if-eqz v2, :cond_2d

    :try_start_21
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2b} :catch_2f

    if-eq v2, v0, :cond_1c

    :cond_2d
    move v0, v1

    goto :goto_1c

    .line 1015
    :catch_2f
    move-exception v0

    move v0, v1

    .line 1016
    goto :goto_1c
.end method

.method private static hint(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2989
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 2990
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 2994
    :cond_12
    :goto_12
    return-void

    .line 2992
    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method private static impulseCard(Landroid/content/Context;Ljava/lang/String;III[Landroid/widget/TextView;[Landroid/view/View;)Landroid/view/View;
    .registers 16

    .prologue
    .line 1399
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1400
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1401
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1402
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1403
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

    .line 1404
    const/high16 v1, 0x41500000    # 13.0f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, p2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1405
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1407
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1408
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1409
    const-string v3, "\u2014"

    const/high16 v4, 0x41c00000    # 24.0f

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, p2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1410
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1411
    const-string v4, "\u2212"

    const/4 v5, -0x1

    invoke-static {p0, v4, p3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1412
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1413
    const-string v4, "+"

    const/4 v5, 0x1

    invoke-static {p0, v4, p3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1414
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1416
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1417
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1419
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1420
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1421
    const-string v4, "\u2014"

    const/high16 v5, 0x41900000    # 18.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1422
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1423
    const-string v5, "\u2212"

    const/4 v6, -0x1

    invoke-static {p0, v5, p4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1424
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1425
    const-string v5, "+"

    const/4 v6, 0x1

    invoke-static {p0, v5, p4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1426
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1428
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1429
    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1430
    const/4 v5, 0x0

    aput-object v1, p5, v5

    .line 1431
    const/4 v1, 0x1

    aput-object v3, p5, v1

    .line 1432
    const/4 v1, 0x2

    aput-object v4, p5, v1

    .line 1433
    if-eqz p6, :cond_e2

    .line 1434
    const/4 v1, 0x0

    aput-object v2, p6, v1

    .line 1436
    :cond_e2
    return-object v0
.end method

.method private static inRow(Ljava/lang/String;)Landroid/view/View;
    .registers 2

    .prologue
    .line 354
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->row()Landroid/view/View;

    move-result-object v0

    .line 355
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
    .line 142
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
    .line 1391
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x2e

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1392
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Step;

    invoke-direct {v1, p2}, Lcom/isaigu/gymapp/ai/FocusBoard$Step;-><init>(I)V

    invoke-static {v0, v1, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 1393
    return-object v0
.end method

.method private static later()V
    .registers 4

    .prologue
    .line 1468
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Later;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Later;-><init>()V

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1469
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Later;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Later;-><init>()V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1470
    return-void
.end method

.method private static main(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    .registers 7

    .prologue
    .line 467
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 468
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 469
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 470
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 472
    :cond_d
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 473
    sget-boolean v3, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v3, :cond_3a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v3

    if-eqz v3, :cond_3a

    if-eq v2, v0, :cond_3a

    .line 474
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    .line 475
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

    .line 476
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-eq v0, v1, :cond_3a

    .line 477
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    .line 480
    :cond_3a
    return-void
.end method

.method private static marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .prologue
    .line 616
    if-eqz p0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_19

    .line 617
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 616
    :goto_18
    return v0

    .line 617
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static minutes(Lcom/isaigu/gymapp/bean/TrainProgram;I)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 896
    if-nez p0, :cond_4

    .line 901
    :cond_3
    :goto_3
    return v0

    .line 899
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 901
    :goto_9
    if-eqz v1, :cond_3

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    if-lez v2, :cond_3

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    add-int/lit8 v0, v0, 0x1e

    div-int/lit8 v0, v0, 0x3c

    goto :goto_3

    .line 899
    :cond_16
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1c

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_9

    .line 900
    :cond_1c
    const/4 v1, 0x3

    if-ne p1, v1, :cond_22

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_9

    :cond_22
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_9
.end method

.method private static mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 606
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 607
    :goto_6
    if-eqz v0, :cond_d

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    :goto_a
    return v0

    .line 606
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 607
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static modeKey(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 10

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v4, 0x41000000    # 8.0f

    const/4 v7, 0x1

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v5, 0x0

    .line 763
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 764
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 765
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 766
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 767
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeDot:Landroid/view/View;

    .line 769
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeDot:Landroid/view/View;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v5, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeDot:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->modeLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v1, v6, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    .line 772
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    const v2, 0x3d75c28f    # 0.06f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 773
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 774
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 775
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 776
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 777
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 778
    new-instance v2, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 779
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 781
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$ModeMenuClick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$ModeMenuClick;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    const-string v1, "\u0420\u0435\u0436\u0438\u043c \u2014 \u0438\u0437\u0431\u0435\u0440\u0438"

    const-string v2, "Mode \u2014 choose"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 783
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 784
    return-object v0
.end method

.method static modeLabel(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 758
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_NAMES_BG:[Ljava/lang/String;

    aget-object v0, v0, p0

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_NAMES_EN:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1795
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 1796
    :goto_11
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_35

    .line 1797
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    .line 1799
    :cond_25
    :goto_25
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1801
    :goto_2b
    return-object v0

    :cond_2c
    move-object v1, v0

    .line 1795
    goto :goto_11

    .line 1799
    :cond_2e
    const-string v0, ""
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_2b

    .line 1800
    :catch_31
    move-exception v0

    .line 1801
    const-string v0, ""

    goto :goto_2b

    :cond_35
    move-object v0, v1

    goto :goto_25
.end method

.method private static off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .prologue
    .line 621
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

.method public static onPage(Z)V
    .registers 2

    .prologue
    .line 1153
    if-nez p0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-eqz v0, :cond_a

    .line 1154
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->orient(Z)V

    .line 1156
    :cond_a
    return-void
.end method

.method private static openModeMenu(Landroid/view/View;)V
    .registers 15

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 837
    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 838
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 839
    if-eqz v2, :cond_177

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    move v7, v0

    .line 840
    :goto_11
    if-eqz v2, :cond_17a

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    move-object v6, v0

    .line 841
    :goto_18
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 842
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v8, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 843
    invoke-virtual {v9, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 844
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 845
    invoke-static {v8, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 844
    invoke-static {v0, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 846
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v5, v1

    .line 847
    :goto_47
    const/4 v0, 0x4

    if-ge v5, v0, :cond_1a5

    .line 848
    if-ne v5, v7, :cond_17e

    move v3, v4

    .line 849
    :goto_4d
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 850
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 851
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v8, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {v8, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v8, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v10, v0, v2, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 852
    const/high16 v0, 0x41300000    # 11.0f

    invoke-static {v8, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, v0

    .line 853
    if-eqz v3, :cond_181

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v8, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 854
    :goto_80
    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 853
    invoke-static {v0, v11, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 855
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 856
    if-eqz v3, :cond_18a

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    :goto_92
    const/high16 v11, 0x40800000    # 4.0f

    .line 857
    invoke-static {v8, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 856
    invoke-static {v0, v11, v12, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v8, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v8, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v0, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 860
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v11, 0x0

    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v8, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v11, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 861
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->modeLabel(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v11, 0x41780000    # 15.5f

    sget v12, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v13, 0x1

    invoke-static {v8, v2, v11, v12, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 862
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 863
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_HINTS_BG:[Ljava/lang/String;

    aget-object v2, v2, v5

    sget-object v11, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_HINTS_EN:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-static {v2, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v11, 0x41400000    # 12.0f

    sget v12, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v13, 0x0

    invoke-static {v8, v2, v11, v12, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 864
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 865
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v2, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    invoke-static {v6, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->minutes(Lcom/isaigu/gymapp/bean/TrainProgram;I)I

    move-result v0

    .line 867
    if-lez v0, :cond_194

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u043c\u0438\u043d"

    const-string v11, "min"

    invoke-static {v2, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_125
    const/high16 v11, 0x41500000    # 13.0f

    .line 868
    if-eqz v3, :cond_198

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    :goto_12b
    const/4 v12, 0x1

    .line 867
    invoke-static {v8, v2, v11, v0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 869
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 870
    if-eqz v3, :cond_19b

    const-string v0, "\u2713"

    :goto_137
    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v11, 0x1

    invoke-static {v8, v0, v2, v3, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 871
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 872
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v8, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v11, -0x2

    invoke-direct {v2, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 874
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$ModePick;

    invoke-direct {v0, v5}, Lcom/isaigu/gymapp/ai/FocusBoard$ModePick;-><init>(I)V

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 875
    invoke-static {v10}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 876
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 878
    if-nez v5, :cond_19e

    move v0, v1

    :goto_16d
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 879
    invoke-virtual {v9, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 847
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_47

    :cond_177
    move v7, v1

    .line 839
    goto/16 :goto_11

    .line 840
    :cond_17a
    const/4 v0, 0x0

    move-object v6, v0

    goto/16 :goto_18

    :cond_17e
    move v3, v1

    .line 848
    goto/16 :goto_4d

    .line 854
    :cond_181
    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v0, v2, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_80

    .line 856
    :cond_18a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v11, 0x80

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto/16 :goto_92

    .line 867
    :cond_194
    const-string v0, ""

    move-object v2, v0

    goto :goto_125

    .line 868
    :cond_198
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_12b

    .line 870
    :cond_19b
    const-string v0, ""

    goto :goto_137

    .line 878
    :cond_19e
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v8, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    goto :goto_16d

    .line 881
    :cond_1a5
    new-instance v0, Landroid/widget/PopupWindow;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 883
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 884
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 885
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 886
    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 887
    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modePop:Landroid/widget/PopupWindow;

    .line 888
    const/4 v1, 0x0

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
    :try_end_1db
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1db} :catch_1dc

    .line 892
    :goto_1db
    return-void

    .line 889
    :catch_1dc
    move-exception v0

    .line 890
    const-string v1, "FocusBoard.modeMenu"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1db
.end method

.method static orient(Z)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x7

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 1059
    :try_start_4
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 1060
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 1061
    :goto_10
    if-nez v2, :cond_15

    .line 1096
    :cond_12
    :goto_12
    return-void

    :cond_13
    move-object v2, v1

    .line 1060
    goto :goto_10

    .line 1064
    :cond_15
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1065
    sget-boolean v5, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-nez v5, :cond_2f

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v6, :cond_2f

    .line 1066
    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    sput v5, Lcom/isaigu/gymapp/ai/FocusBoard;->landDensity:F

    .line 1067
    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landScaled:F

    .line 1069
    :cond_2f
    if-eqz p0, :cond_76

    .line 1070
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-nez v4, :cond_3e

    .line 1071
    const/4 v4, 0x1

    sput-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    .line 1072
    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->hostOrientation:I

    .line 1074
    :cond_3e
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landDensity:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_4c

    .line 1075
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landDensity:F

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedDensity:F

    .line 1076
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landScaled:F

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedScaled:F

    .line 1078
    :cond_4c
    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    if-eq v4, v8, :cond_56

    .line 1079
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1088
    :cond_56
    :goto_56
    sget-boolean v2, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsNav;->compact(Z)V

    .line 1089
    if-eqz v3, :cond_63

    const-string v1, "rightLayout"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 1090
    :cond_63
    if-eqz v1, :cond_12

    .line 1091
    sget-boolean v2, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-eqz v2, :cond_6b

    const/16 v0, 0x8

    :cond_6b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_6e} :catch_6f

    goto :goto_12

    .line 1093
    :catch_6f
    move-exception v0

    .line 1094
    const-string v1, "FocusBoard.orient"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 1081
    :cond_76
    :try_start_76
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-eqz v4, :cond_56

    .line 1082
    const/4 v4, 0x0

    sput-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    .line 1083
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedDensity:F

    .line 1084
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedScaled:F

    .line 1085
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->hostOrientation:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1086
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$RowsAfresh;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$RowsAfresh;-><init>()V

    const-wide/16 v6, 0x2bc

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_94} :catch_6f

    goto :goto_56
.end method

.method private static paintLink(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 10

    .prologue
    const v7, 0xffffff

    .line 1630
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    if-nez v0, :cond_8

    .line 1664
    :cond_7
    :goto_7
    return-void

    .line 1633
    :cond_8
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->state(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v3

    .line 1636
    if-nez v3, :cond_8a

    .line 1637
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 1638
    const-string v0, ""

    .line 1650
    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1651
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1654
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1655
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->linkIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/XemsIcon;->setColor(I)V

    .line 1656
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1657
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1658
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e6

    const/4 v2, 0x0

    :goto_52
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1659
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v4, v2

    .line 1660
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    if-nez v3, :cond_ea

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    :goto_62
    and-int/2addr v1, v7

    const/high16 v6, 0x66000000

    or-int/2addr v1, v6

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1661
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 1660
    invoke-static {v2, v4, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1662
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    if-nez v3, :cond_85

    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d"

    const-string v2, "Suit connected"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_85
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1639
    :cond_8a
    const/4 v0, 0x1

    if-ne v3, v0, :cond_cb

    .line 1640
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->waitingSeconds(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v2

    .line 1641
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026 "

    const-string v5, "Reconnecting\u2026 "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v4, v2, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    rem-int/lit8 v0, v2, 0x3c

    const/16 v5, 0xa

    if-ge v0, v5, :cond_c8

    const-string v0, "0"

    :goto_b8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    :cond_c8
    const-string v0, ""

    goto :goto_b8

    .line 1643
    :cond_cb
    const/4 v0, 0x2

    if-ne v3, v0, :cond_da

    .line 1644
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 1645
    const-string v0, "\u2713 \u041f\u0430\u043a \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d \u00b7 \u25b6"

    const-string v2, "\u2713 Back \u00b7 \u25b6"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 1647
    :cond_da
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 1648
    const-string v0, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430"

    const-string v2, "No link"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 1658
    :cond_e6
    const/16 v2, 0x8

    goto/16 :goto_52

    .line 1660
    :cond_ea
    and-int v2, v1, v7

    const/high16 v6, 0x22000000

    or-int/2addr v2, v6

    goto/16 :goto_62
.end method

.method private static paintLock(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 585
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 594
    :goto_4
    return-void

    .line 588
    :cond_5
    const/high16 v0, 0x41b80000    # 23.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v1, v0

    .line 589
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v0, :cond_4d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_16
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    invoke-direct {v3, v0, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;-><init>(IZ)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
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

    .line 591
    :goto_32
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 590
    invoke-static {v0, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
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

    .line 589
    :cond_4d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_16

    .line 591
    :cond_50
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_32

    .line 593
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
    .line 484
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 485
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 486
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    .line 487
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 488
    sget-boolean v3, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v3, :cond_40

    if-eq v2, v1, :cond_40

    .line 489
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    .line 490
    const v1, 0x3a83126f    # 0.001f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_40

    .line 491
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

    .line 492
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-eq v0, v1, :cond_40

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int v1, v0, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v1

    if-nez v1, :cond_40

    .line 493
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 497
    :cond_40
    return-void
.end method

.method private static photo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1766
    :try_start_3
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v0

    .line 1767
    if-eqz v0, :cond_52

    const-string v2, "userIcon"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1768
    :goto_14
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_54

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1769
    :goto_1e
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    move-object v1, v0

    .line 1770
    :cond_25
    if-eqz v1, :cond_57

    .line 1771
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1772
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1773
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1774
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 1775
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1776
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1777
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1778
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_51} :catch_56

    .line 1790
    :goto_51
    return-object v0

    :cond_52
    move-object v0, v1

    .line 1767
    goto :goto_14

    :cond_54
    move-object v0, v1

    .line 1768
    goto :goto_1e

    .line 1781
    :catch_56
    move-exception v0

    .line 1783
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

    .line 1784
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1785
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1786
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1787
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1788
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1789
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_51

    .line 1783
    :cond_94
    const-string v0, "?"

    goto :goto_65
.end method

.method private static position(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 308
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 310
    :goto_b
    if-eqz v1, :cond_11

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_14

    move-result v0

    .line 312
    :cond_11
    :goto_11
    return v0

    .line 309
    :cond_12
    const/4 v1, 0x0

    goto :goto_b

    .line 311
    :catch_14
    move-exception v1

    goto :goto_11
.end method

.method static press(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 363
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 364
    if-nez v0, :cond_14

    .line 365
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$PressLater;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$PressLater;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 366
    const/4 v0, 0x0

    .line 370
    :goto_13
    return v0

    .line 368
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 369
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 370
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private static ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F
    .registers 5

    .prologue
    .line 501
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 502
    if-nez v0, :cond_18

    .line 503
    if-lez p1, :cond_1d

    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    :goto_f
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 504
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 503
    :cond_1d
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_f
.end method

.method static refresh()V
    .registers 30

    .prologue
    .line 1474
    :try_start_0
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-nez v2, :cond_5

    .line 1626
    :cond_4
    :goto_4
    return-void

    .line 1477
    :cond_5
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    .line 1478
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v2

    .line 1479
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v20

    .line 1480
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->fillClients(Landroid/content/Context;Ljava/util/List;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 1481
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v21

    .line 1482
    if-eqz v20, :cond_4

    if-eqz v21, :cond_4

    .line 1485
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v2

    .line 1486
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v22

    .line 1487
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    if-eqz v3, :cond_4c

    .line 1488
    invoke-static/range {v22 .. v22}, Lcom/isaigu/gymapp/ai/FocusBoard;->modeLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1489
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 1490
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1493
    :cond_4c
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->CLOCK:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1494
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 1495
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1497
    :cond_68
    const-string v3, "batteryValueTextView"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1498
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_1b0

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v2, :cond_1b0

    const/4 v2, 0x1

    .line 1499
    :goto_7f
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    if-eqz v2, :cond_1b3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25ae "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9c
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1500
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1501
    invoke-static/range {v19 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->paintLink(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 1503
    invoke-static/range {v20 .. v21}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v7

    .line 1504
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v3

    .line 1505
    if-eqz v3, :cond_1b7

    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/train/model/SoftRamp;->clock(Lcom/isaigu/gymapp/train/model/TrainItem;)[J

    move-result-object v4

    .line 1508
    :goto_b7
    if-eqz v4, :cond_1c2

    .line 1509
    const/4 v2, 0x0

    aget-wide v8, v4, v2

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_1ba

    const/4 v2, 0x1

    :goto_c3
    move/from16 v18, v2

    .line 1513
    :goto_c5
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_1d0

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_cc
    sput v2, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 1514
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    if-eqz v2, :cond_df

    .line 1515
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    move-object/from16 v0, v21

    iget v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->set(Z[JIIZ)V

    .line 1517
    :cond_df
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->sessionBar:Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    if-eqz v2, :cond_f9

    .line 1518
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->shownTime(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v2

    .line 1519
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sessionBar:Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    iget v6, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static/range {v22 .. v22}, Lcom/isaigu/gymapp/ai/FocusBoard;->modeLabel(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v2, v5, v6}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->set(ZIILjava/lang/String;)V

    .line 1522
    :cond_f9
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v17

    .line 1523
    if-eqz v7, :cond_1dd

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v16

    .line 1524
    :goto_10d
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_1e1

    if-eqz v16, :cond_1e1

    move-object/from16 v15, v16

    .line 1525
    :goto_116
    const/4 v14, 0x0

    .line 1526
    const/4 v2, 0x0

    .line 1527
    const/16 v4, 0xa

    new-array v0, v4, [D

    move-object/from16 v23, v0

    .line 1528
    const/16 v4, 0xa

    new-array v0, v4, [Z

    move-object/from16 v24, v0

    .line 1529
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->bodytech(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v25

    .line 1530
    const/4 v4, 0x0

    move v6, v4

    :goto_12a
    const/16 v4, 0xa

    if-ge v6, v4, :cond_206

    .line 1531
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v4, v4, v6

    if-eqz v4, :cond_14d

    .line 1532
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v8, v4, v6

    if-eqz v25, :cond_142

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->zone(Lcom/isaigu/gymapp/train/model/TrainItem;I)I

    move-result v4

    if-ne v4, v6, :cond_1e5

    :cond_142
    const/4 v4, 0x1

    move v5, v4

    :goto_144
    if-eqz v25, :cond_1e9

    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->rowName(I)Ljava/lang/String;

    move-result-object v4

    :goto_14a
    invoke-virtual {v8, v5, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->show(ZLjava/lang/String;)V

    .line 1534
    :cond_14d
    if-eqz v15, :cond_1ec

    array-length v4, v15

    if-ge v6, v4, :cond_1ec

    aget v9, v15, v6

    .line 1535
    :goto_154
    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v11

    .line 1536
    if-eqz v11, :cond_4a4

    .line 1537
    const/4 v4, 0x1

    .line 1538
    if-eqz v17, :cond_1ef

    move-object/from16 v0, v17

    array-length v5, v0

    if-ge v6, v5, :cond_1ef

    aget v5, v17, v6

    :goto_166
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1540
    :goto_16a
    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v5

    aput-boolean v5, v24, v6

    .line 1541
    const-wide/high16 v12, 0x3ff4000000000000L    # 1.25

    int-to-double v0, v9

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x404e000000000000L    # 60.0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    aput-wide v12, v23, v6

    .line 1542
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v5, v5, v6

    if-eqz v5, :cond_1aa

    .line 1545
    if-eqz v11, :cond_1f2

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result v5

    if-eqz v5, :cond_1f2

    const/4 v12, 0x1

    .line 1547
    :goto_192
    sget v10, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 1548
    if-eqz v12, :cond_1f6

    .line 1549
    if-eqz v16, :cond_1f4

    move-object/from16 v0, v16

    array-length v5, v0

    if-ge v6, v5, :cond_1f4

    aget v9, v16, v6

    .line 1550
    :goto_19f
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1555
    :cond_1a1
    :goto_1a1
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v8, v5, v6

    aget-boolean v13, v24, v6

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->set(IIZZZ)V

    .line 1530
    :cond_1aa
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v14, v4

    goto/16 :goto_12a

    .line 1498
    :cond_1b0
    const/4 v2, 0x0

    goto/16 :goto_7f

    .line 1499
    :cond_1b3
    const-string v2, ""

    goto/16 :goto_9c

    .line 1505
    :cond_1b7
    const/4 v4, 0x0

    goto/16 :goto_b7

    .line 1509
    :cond_1ba
    if-eqz v7, :cond_1bf

    const/4 v2, 0x2

    goto/16 :goto_c3

    :cond_1bf
    const/4 v2, 0x0

    goto/16 :goto_c3

    .line 1511
    :cond_1c2
    sget v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1ce

    if-eqz v7, :cond_1ce

    const/4 v2, 0x2

    :goto_1ca
    move/from16 v18, v2

    goto/16 :goto_c5

    :cond_1ce
    const/4 v2, 0x1

    goto :goto_1ca

    .line 1513
    :cond_1d0
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_1d9

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto/16 :goto_cc

    :cond_1d9
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_cc

    .line 1523
    :cond_1dd
    const/16 v16, 0x0

    goto/16 :goto_10d

    :cond_1e1
    move-object/from16 v15, v17

    .line 1524
    goto/16 :goto_116

    .line 1532
    :cond_1e5
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_144

    :cond_1e9
    const/4 v4, 0x0

    goto/16 :goto_14a

    .line 1534
    :cond_1ec
    const/4 v9, 0x0

    goto/16 :goto_154

    .line 1538
    :cond_1ef
    const/4 v5, 0x0

    goto/16 :goto_166

    .line 1545
    :cond_1f2
    const/4 v12, 0x0

    goto :goto_192

    .line 1549
    :cond_1f4
    const/4 v9, 0x0

    goto :goto_19f

    .line 1551
    :cond_1f6
    if-eqz v11, :cond_1a1

    .line 1552
    if-eqz v17, :cond_204

    move-object/from16 v0, v17

    array-length v5, v0

    if-ge v6, v5, :cond_204

    aget v9, v17, v6

    .line 1553
    :goto_201
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_1a1

    .line 1552
    :cond_204
    const/4 v9, 0x0

    goto :goto_201

    .line 1558
    :cond_206
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    if-eqz v4, :cond_26f

    .line 1559
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    move-object/from16 v0, v20

    if-eq v4, v0, :cond_220

    .line 1560
    sput-object v20, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;
    :try_end_212
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_212} :catch_24c

    .line 1562
    :try_start_212
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v4

    .line 1563
    if-eqz v4, :cond_243

    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v5, :cond_243

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_21e
    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_220
    .catch Ljava/lang/Throwable; {:try_start_212 .. :try_end_220} :catch_246

    .line 1568
    :cond_220
    :goto_220
    if-eqz v25, :cond_259

    .line 1570
    const/4 v4, 0x0

    move v6, v4

    :goto_224
    const/16 v4, 0xa

    if-ge v6, v4, :cond_259

    .line 1571
    :try_start_228
    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->zone(Lcom/isaigu/gymapp/train/model/TrainItem;I)I

    move-result v8

    .line 1572
    if-eq v8, v6, :cond_23f

    .line 1573
    if-ltz v8, :cond_254

    aget-wide v4, v23, v8

    :goto_234
    aput-wide v4, v23, v6

    .line 1574
    if-ltz v8, :cond_23c

    aget-boolean v4, v24, v8

    if-eqz v4, :cond_257

    :cond_23c
    const/4 v4, 0x1

    :goto_23d
    aput-boolean v4, v24, v6
    :try_end_23f
    .catch Ljava/lang/Throwable; {:try_start_228 .. :try_end_23f} :catch_24c

    .line 1570
    :cond_23f
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_224

    .line 1563
    :cond_243
    :try_start_243
    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_245
    .catch Ljava/lang/Throwable; {:try_start_243 .. :try_end_245} :catch_246

    goto :goto_21e

    .line 1564
    :catch_246
    move-exception v4

    .line 1565
    :try_start_247
    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_24b
    .catch Ljava/lang/Throwable; {:try_start_247 .. :try_end_24b} :catch_24c

    goto :goto_220

    .line 1623
    :catch_24c
    move-exception v2

    .line 1624
    const-string v3, "FocusBoard.refresh"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1573
    :cond_254
    const-wide/16 v4, 0x0

    goto :goto_234

    .line 1574
    :cond_257
    const/4 v4, 0x0

    goto :goto_23d

    .line 1578
    :cond_259
    :try_start_259
    sget-object v8, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    sget-object v9, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, v23

    move-object/from16 v12, v24

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z[Z)V

    .line 1579
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    if-eqz v4, :cond_26f

    .line 1580
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->invalidate()V

    .line 1584
    :cond_26f
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1Label:Landroid/widget/TextView;

    if-eqz v14, :cond_433

    const-string v4, "\u0418\u0437\u0431\u0440\u0430\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v6, "Selected muscles"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_27b
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1586
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    if-eqz v14, :cond_43d

    move v4, v2

    :goto_283
    const/4 v6, 0x1

    if-eqz v3, :cond_444

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_444

    const/4 v2, 0x1

    :goto_28c
    invoke-virtual {v5, v4, v6, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->set(IZZ)V

    .line 1587
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    if-eqz v14, :cond_447

    if-eqz v7, :cond_447

    invoke-static/range {v20 .. v21}, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Level(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v2

    move v4, v2

    :goto_29a
    if-eqz v3, :cond_44e

    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_44e

    const/4 v2, 0x1

    :goto_2a2
    invoke-virtual {v5, v4, v7, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->set(IZZ)V

    .line 1588
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Steps:Landroid/view/View;

    if-eqz v7, :cond_451

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2ab
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1589
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    if-eqz v7, :cond_456

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2b4
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1590
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    if-eqz v7, :cond_45b

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2bd
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1591
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->imp1Val:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1592
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->hz1Val:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Hz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1593
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    if-eqz v7, :cond_460

    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441 2"

    const-string v5, "Impulse 2"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_304
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1594
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    if-eqz v7, :cond_46a

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_30d
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1595
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1596
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    if-eqz v7, :cond_46e

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_332
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1597
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Val:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Hz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1598
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Row:Landroid/view/View;

    if-eqz v7, :cond_472

    const/4 v2, 0x0

    :goto_356
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1600
    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v5, v2

    .line 1601
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_475

    const/4 v2, 0x1

    move v4, v2

    .line 1602
    :goto_369
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1603
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_479

    const-string v2, "on"

    :goto_378
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v4, :cond_47d

    const-string v2, "m"

    :goto_380
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1604
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3bb

    .line 1605
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1606
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v7, :cond_481

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_399
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1607
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v7, :cond_485

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    move-object/from16 v0, v19

    invoke-static {v0, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    :goto_3a8
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v7, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1609
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v4, :cond_48d

    const v2, 0x3eb33333    # 0.35f

    :goto_3b8
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1611
    :cond_3bb
    if-eqz v3, :cond_491

    const/4 v2, 0x1

    move v3, v2

    .line 1612
    :goto_3bf
    sget v2, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    if-eq v3, v2, :cond_4

    .line 1613
    sput v3, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 1614
    const/4 v2, 0x1

    if-ne v3, v2, :cond_495

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1615
    :goto_3ca
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const v10, 0x3df5c28f    # 0.12f

    .line 1616
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

    .line 1617
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1618
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

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

    .line 1619
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    invoke-static {v4, v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1620
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->startIcon:Landroid/widget/ImageView;

    new-instance v5, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v2, 0x1

    if-ne v3, v2, :cond_499

    const/16 v2, 0x8

    :goto_41a
    const/4 v6, -0x1

    invoke-direct {v5, v2, v6}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1621
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-ne v3, v2, :cond_49b

    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v3, "Pause"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_42e
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1585
    :cond_433
    const-string v4, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 1"

    const-string v6, "Intensity 1"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_27b

    .line 1586
    :cond_43d
    move-object/from16 v0, v21

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    move v4, v2

    goto/16 :goto_283

    :cond_444
    const/4 v2, 0x0

    goto/16 :goto_28c

    .line 1587
    :cond_447
    move-object/from16 v0, v21

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    move v4, v2

    goto/16 :goto_29a

    :cond_44e
    const/4 v2, 0x0

    goto/16 :goto_2a2

    .line 1588
    :cond_451
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_2ab

    .line 1589
    :cond_456
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_2b4

    .line 1590
    :cond_45b
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_2bd

    .line 1593
    :cond_460
    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v5, "Pause"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_304

    .line 1594
    :cond_46a
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_30d

    .line 1596
    :cond_46e
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_332

    .line 1598
    :cond_472
    const/4 v2, 0x4

    goto/16 :goto_356

    .line 1601
    :cond_475
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_369

    .line 1603
    :cond_479
    const-string v2, "off"

    goto/16 :goto_378

    :cond_47d
    const-string v2, ""

    goto/16 :goto_380

    .line 1606
    :cond_481
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_399

    .line 1607
    :cond_485
    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto/16 :goto_3a8

    .line 1609
    :cond_48d
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_3b8

    .line 1611
    :cond_491
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_3bf

    .line 1614
    :cond_495
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto/16 :goto_3ca

    .line 1620
    :cond_499
    const/4 v2, 0x7

    goto :goto_41a

    .line 1621
    :cond_49b
    const-string v2, "\u0421\u0442\u0430\u0440\u0442"

    const-string v3, "Start"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4a2
    .catch Ljava/lang/Throwable; {:try_start_259 .. :try_end_4a2} :catch_24c

    move-result-object v2

    goto :goto_42e

    :cond_4a4
    move v4, v14

    goto/16 :goto_16a
.end method

.method static remove(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1967
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    .line 1968
    if-eqz v1, :cond_1f

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1987
    :cond_1f
    :goto_1f
    return-void

    .line 1971
    :cond_20
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_28

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 1972
    :cond_28
    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->removeTrainItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 1973
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsChanged()V

    .line 1974
    if-eqz v0, :cond_37

    .line 1975
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->removeTrainingUser(Ljava/lang/String;)V

    .line 1977
    :cond_37
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-ne v0, p0, :cond_41

    .line 1978
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1979
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1981
    :cond_41
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 1982
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->tick()V

    .line 1983
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4b} :catch_4c

    goto :goto_1f

    .line 1984
    :catch_4c
    move-exception v0

    .line 1985
    const-string v1, "FocusBoard.remove"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method private static ring2Level(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 3

    .prologue
    .line 511
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selectedSecond(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    .line 512
    if-ltz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    goto :goto_6
.end method

.method private static ringColumn(Landroid/content/Context;Lcom/isaigu/gymapp/ai/FocusBoard$Ring;Landroid/widget/TextView;I[Landroid/view/View;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, -0x2

    .line 1361
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1362
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1363
    const/16 v1, 0x11

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1364
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1366
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1367
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1368
    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1369
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/ai/FocusBoard;->stepper(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1370
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1372
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1373
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1374
    if-eqz p4, :cond_40

    .line 1375
    aput-object v1, p4, v6

    .line 1377
    :cond_40
    return-object v0
.end method

.method private static ringLevel(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 517
    invoke-static {p0, p1, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v2

    .line 518
    const/4 v0, -0x1

    .line 519
    :goto_6
    if-eqz v2, :cond_1a

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 520
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 521
    aget v3, v2, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 519
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 524
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
    .line 349
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 350
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

    .line 328
    if-ltz p0, :cond_7

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    if-nez v0, :cond_9

    :cond_7
    move-object v0, v2

    .line 345
    :goto_8
    return-object v0

    .line 331
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 332
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_17

    move-object v0, v2

    .line 333
    goto :goto_8

    .line 335
    :cond_17
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 336
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2f

    .line 337
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 338
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p0, :cond_2c

    move-object v0, v3

    .line 339
    goto :goto_8

    .line 336
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 342
    :cond_2f
    if-eqz p1, :cond_34

    .line 343
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_34
    move-object v0, v2

    .line 345
    goto :goto_8
.end method

.method static rowsAdapter(Landroid/view/View;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1129
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getOriginAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_14} :catch_18

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_19

    .line 1135
    :goto_17
    return-object v0

    .line 1133
    :catch_18
    move-exception v0

    .line 1135
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAdapter"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17
.end method

.method static rowsChanged()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1141
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    if-eqz v1, :cond_29

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    const-string v2, "recyclerView"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 1142
    :goto_d
    if-eqz v1, :cond_13

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsAdapter(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 1143
    :cond_13
    if-eqz v0, :cond_28

    .line 1144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "notifyDataSetChanged"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_28} :catch_2b

    .line 1149
    :cond_28
    :goto_28
    return-void

    :cond_29
    move-object v1, v0

    .line 1141
    goto :goto_d

    .line 1146
    :catch_2b
    move-exception v0

    .line 1147
    const-string v1, "FocusBoard.rowsChanged"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method private static rowsMode(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 261
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

    .line 263
    :goto_f
    return v0

    .line 262
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private static running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 1689
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

    .line 612
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
    .line 456
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 457
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 458
    if-nez v1, :cond_b

    .line 463
    :goto_a
    return-void

    .line 461
    :cond_b
    const/4 v2, 0x1

    if-ne p0, v2, :cond_18

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Level(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    .line 462
    :goto_12
    sub-int v0, p1, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->step(II)V

    goto :goto_a

    .line 461
    :cond_18
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ringLevel(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    goto :goto_12
.end method

.method private static startLoop()V
    .registers 2

    .prologue
    .line 1442
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    if-nez v0, :cond_e

    .line 1443
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    .line 1444
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->REFRESH:Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1446
    :cond_e
    return-void
.end method

.method static step(II)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 405
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 406
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 407
    if-eqz v2, :cond_d

    if-nez p1, :cond_e

    .line 452
    :cond_d
    :goto_d
    return-void

    .line 410
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

    .line 412
    packed-switch p0, :pswitch_data_74

    goto :goto_d

    .line 414
    :pswitch_1d
    const/4 v0, 0x0

    :try_start_1e
    invoke-static {v1, p1, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->boardSelected(Lcom/isaigu/gymapp/train/model/TrainItem;IZ)Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_2c

    move-result v0

    if-eqz v0, :cond_28

    .line 451
    :cond_24
    :goto_24
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto :goto_d

    .line 417
    :cond_28
    :try_start_28
    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->main(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_24

    .line 448
    :catch_2c
    move-exception v0

    .line 449
    const-string v1, "FocusBoard.step"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    .line 420
    :pswitch_33
    :try_start_33
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 421
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u223f."

    const-string v1, "Turn the second impulse on with \u223f."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    goto :goto_d

    .line 424
    :cond_45
    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->boardSelected(Lcom/isaigu/gymapp/train/model/TrainItem;IZ)Z

    move-result v0

    if-nez v0, :cond_24

    .line 427
    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->pause(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    goto :goto_24

    .line 430
    :pswitch_50
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addHz(I)V

    goto :goto_24

    .line 433
    :pswitch_54
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 434
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u223f."

    const-string v1, "Turn the second impulse on with \u223f."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    goto :goto_d

    .line 437
    :cond_66
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseHz(I)V

    goto :goto_24

    .line 440
    :pswitch_6a
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->time(ZI)V

    goto :goto_d

    .line 443
    :pswitch_6f
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->time(ZI)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_73} :catch_2c

    goto :goto_d

    .line 412
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_33
        :pswitch_50
        :pswitch_54
        :pswitch_6a
        :pswitch_6f
    .end packed-switch
.end method

.method private static stepper(Landroid/content/Context;I)Landroid/widget/LinearLayout;
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1382
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1383
    const-string v1, "\u2212"

    const/4 v2, -0x1

    invoke-static {p0, v1, p1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1384
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1385
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    const-string v1, "+"

    invoke-static {p0, v1, p1, v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1387
    return-object v0
.end method

.method public static sync(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 147
    if-eqz p0, :cond_8

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 150
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->tick()V

    .line 151
    return-void
.end method

.method private static textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1806
    if-eqz p0, :cond_17

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1807
    :goto_6
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_16

    .line 1808
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1809
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1811
    :cond_16
    return-object p2

    .line 1806
    :cond_17
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static tick()V
    .registers 10

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 156
    :try_start_4
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 157
    if-nez v3, :cond_9

    .line 192
    :cond_8
    :goto_8
    return-void

    .line 160
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 161
    const-string v5, "leftLayout"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 162
    if-eqz v3, :cond_8

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->isTrainingPage()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 165
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->left:Landroid/view/View;

    if-ne v3, v5, :cond_2b

    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2b

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    if-eq v5, v6, :cond_2e

    .line 166
    :cond_2b
    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->wrap(Landroid/content/Context;Landroid/view/View;)V

    .line 168
    :cond_2e
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 169
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->engineFree()Z

    move-result v6

    .line 170
    if-eqz v6, :cond_ac

    if-lez v5, :cond_ac

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_ac

    move v3, v2

    .line 171
    :goto_45
    if-eqz v3, :cond_ae

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->wantUpright(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_ae

    :goto_4d
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->orient(Z)V

    .line 172
    if-eqz v3, :cond_b0

    .line 173
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-nez v2, :cond_85

    .line 174
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->build(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    .line 175
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 178
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v8, 0xdc

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 180
    :cond_85
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->startLoop()V

    .line 185
    :cond_8e
    :goto_8e
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 186
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    if-nez v3, :cond_bc

    if-eqz v6, :cond_bc

    if-lez v5, :cond_bc

    :goto_9a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_a2} :catch_a4

    goto/16 :goto_8

    .line 189
    :catch_a4
    move-exception v0

    .line 190
    const-string v1, "FocusBoard.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_ac
    move v3, v0

    .line 170
    goto :goto_45

    :cond_ae
    move v2, v0

    .line 171
    goto :goto_4d

    .line 182
    :cond_b0
    :try_start_b0
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-eqz v2, :cond_8e

    .line 183
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_bb} :catch_a4

    goto :goto_8e

    :cond_bc
    move v0, v1

    .line 186
    goto :goto_9a
.end method

.method static time(ZI)V
    .registers 4

    .prologue
    .line 395
    if-eqz p0, :cond_1b

    const-string v0, "paulsestop"

    :goto_4
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_21

    if-lez p1, :cond_1e

    const-string v0, "btnIncrease"

    :goto_e
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 397
    :goto_12
    if-eqz v0, :cond_17

    .line 398
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 400
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 401
    return-void

    .line 395
    :cond_1b
    const-string v0, "paulsecontinue"

    goto :goto_4

    .line 396
    :cond_1e
    const-string v0, "btnDecrease"

    goto :goto_e

    :cond_21
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static topBar(Landroid/content/Context;Z)Landroid/view/View;
    .registers 12

    .prologue
    const/high16 v6, 0x41000000    # 8.0f

    const/4 v9, -0x2

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 665
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 666
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v0, v2, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 669
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 670
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 671
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 672
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    .line 673
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 674
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->modeKey(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modeKey:Landroid/widget/LinearLayout;

    .line 677
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42280000    # 42.0f

    .line 678
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 679
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 680
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 681
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->modeKey:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->CLOCK:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_253

    const/high16 v0, 0x41a00000    # 20.0f

    :goto_78
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v0, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    .line 684
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 685
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    const-string v4, "\u0427\u0430\u0441\u044a\u0442 \u0441\u0435\u0433\u0430"

    const-string v5, "The time now"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 686
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 687
    const-string v0, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    .line 688
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 689
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 692
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    .line 693
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 694
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 695
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 696
    new-instance v4, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/16 v5, 0x14

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 697
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 698
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    const-string v0, ""

    const/high16 v4, 0x41480000    # 12.5f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    .line 700
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 701
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v4, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 702
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 703
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 704
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$LinkClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$LinkClick;-><init>()V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 706
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    .line 707
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 708
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 709
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    const-string v0, "\u2699"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x28

    invoke-static {p0, v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 712
    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v5, "setting"

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    const-string v4, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v5, "Client parameters"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 714
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 716
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 717
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 718
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 719
    new-instance v5, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    if-nez p1, :cond_257

    move v0, v1

    :goto_186
    invoke-direct {v5, v6, v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;-><init>(IZ)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 720
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, v0

    .line 721
    if-eqz p1, :cond_25a

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 722
    :goto_19b
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 721
    invoke-static {v0, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 724
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$TurnClick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$TurnClick;-><init>()V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    if-eqz p1, :cond_26a

    const-string v0, "\u0425\u043e\u0440\u0438\u0437\u043e\u043d\u0442\u0430\u043b\u043d\u043e"

    const-string v2, "Landscape"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b9
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 726
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 727
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 728
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 729
    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    if-eqz p1, :cond_274

    const-string v0, "\u2630"

    :goto_1dd
    const/high16 v2, 0x41580000    # 13.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 732
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 733
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41100000    # 9.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 734
    const-string v2, "\u0420\u0435\u0434\u043e\u0432\u0435"

    const-string v4, "Rows"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 735
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 736
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v4, v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 738
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 739
    new-instance v2, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;-><init>(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 742
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 743
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    if-eqz p1, :cond_252

    .line 745
    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 747
    :cond_252
    return-object v3

    .line 683
    :cond_253
    const/high16 v0, 0x41b00000    # 22.0f

    goto/16 :goto_78

    :cond_257
    move v0, v2

    .line 719
    goto/16 :goto_186

    .line 722
    :cond_25a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_19b

    .line 725
    :cond_26a
    const-string v0, "\u0418\u0437\u043f\u0440\u0430\u0432\u0435\u043d\u043e"

    const-string v2, "Upright"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b9

    .line 731
    :cond_274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2630  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0420\u0435\u0434\u043e\u0432\u0435"

    const-string v4, "Rows"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1dd
.end method

.method private static wantUpright(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1022
    :try_start_1
    const-string v1, "xems_focus"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "upright"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_10

    move-result v0

    .line 1024
    :goto_f
    return v0

    .line 1023
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private static wrap(Landroid/content/Context;Landroid/view/View;)V
    .registers 11

    .prologue
    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->closeModeMenu()V

    .line 197
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    .line 198
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    .line 199
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 200
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 201
    sput-object p1, Lcom/isaigu/gymapp/ai/FocusBoard;->left:Landroid/view/View;

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_20

    .line 236
    :goto_1f
    return-void

    .line 205
    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 206
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_e2

    const-string v1, "xems_focus_frame"

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 207
    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 208
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 209
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    :goto_49
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Shape;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Shape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 223
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

    .line 224
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 225
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

    .line 226
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 227
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 229
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 232
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 233
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 234
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1f

    .line 212
    :cond_e2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 214
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 215
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 216
    const-string v4, "xems_focus_frame"

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 217
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 220
    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    goto/16 :goto_49
.end method

.method static zone(Lcom/isaigu/gymapp/train/model/TrainItem;I)I
    .registers 4

    .prologue
    .line 2001
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bodytech(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2008
    :cond_6
    :goto_6
    return p1

    .line 2004
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->thighSlider()I

    move-result v0

    .line 2005
    if-ltz v0, :cond_16

    const/4 v1, 0x2

    if-eq p1, v1, :cond_14

    const/16 v1, 0x9

    if-ne p1, v1, :cond_16

    :cond_14
    move p1, v0

    .line 2006
    goto :goto_6

    .line 2008
    :cond_16
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hasChannel(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 p1, -0x1

    goto :goto_6
.end method
