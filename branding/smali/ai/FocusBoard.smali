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
        Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;,
        Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;,
        Lcom/isaigu/gymapp/ai/FocusBoard$AddTime;,
        Lcom/isaigu/gymapp/ai/FocusBoard$RowsAfresh;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Ring;,
        Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$WaveClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$StartClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$StopClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Step;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Later;,
        Lcom/isaigu/gymapp/ai/FocusBoard$AllClick;,
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

.field static final SESSION_BAR_Y:I = 0x2a

.field static final SESSION_H:I = 0x5a

.field static final SESSION_TIME_CY:I = 0x13

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

.field private static pickOnlyOf:Ljava/lang/reflect/Method;

.field private static pickedOf:Ljava/lang/reflect/Method;

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

.field private static timeMinus:Landroid/widget/TextView;

.field private static timePlus:Landroid/widget/TextView;

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

    .line 114
    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    .line 117
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    .line 119
    const v0, -0xc82f15

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 120
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    .line 135
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 136
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 868
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

    .line 869
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

    .line 870
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

    .line 872
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

    .line 1343
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
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;)Z
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->anyRunning(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/train/model/TrainItem;II)F
    .registers 4

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->paintLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1202(I)I
    .registers 1

    .prologue
    .line 55
    sput p0, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    return p0
.end method

.method static synthetic access$1300()Landroid/widget/PopupWindow;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modePop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->openModeMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_IDS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->wantUpright(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Landroid/view/View;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 3

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    return v0
.end method

.method static synthetic access$2100()Landroid/view/View;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z

    return v0
.end method

.method static synthetic access$2300()Z
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->framePortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400()Landroid/widget/FrameLayout;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2502(Z)Z
    .registers 1

    .prologue
    .line 55
    sput-boolean p0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    return p0
.end method

.method static synthetic access$2600()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    return-void
.end method

.method static synthetic access$3000(IZ)Landroid/view/View;
    .registers 3

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300()Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    return-object v0
.end method

.method static synthetic access$3400()Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    return-object v0
.end method

.method static synthetic access$3500()[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    return-object v0
.end method

.method static synthetic access$3600()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->ICONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700()[I
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    return-object v0
.end method

.method static synthetic access$3800()[I
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;)Landroid/view/View;
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .registers 1

    .prologue
    .line 55
    sput-boolean p0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    return p0
.end method

.method static synthetic access$800()Ljava/util/WeakHashMap;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$900()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    return-object v0
.end method

.method private static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 1224
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 1225
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 1226
    check-cast v0, Landroid/app/Activity;

    .line 1230
    :goto_b
    return-object v0

    .line 1228
    :cond_c
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 1230
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static allTargeted()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v1

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1a

    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->targets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v2, v1, :cond_1a

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static anyRunning(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 199
    move v1, v2

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    .line 200
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 201
    const/4 v2, 0x1

    .line 204
    :cond_15
    return v2

    .line 199
    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 716
    if-eqz p0, :cond_e

    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 717
    :goto_7
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_10

    move-result-object v0

    .line 719
    :cond_d
    :goto_d
    return-object v0

    :cond_e
    move-object v1, v0

    .line 716
    goto :goto_7

    .line 718
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

    .line 1134
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1135
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1136
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1137
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 1138
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1139
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipColumn(Landroid/content/Context;[I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1141
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1142
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->sessionRow(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42b40000    # 90.0f

    .line 1143
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1142
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 1145
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;-><init>()V

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1146
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    const-string v4, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b, \u0437\u0430 \u0434\u0430 \u0433\u043e \u0438\u0437\u0431\u0435\u0440\u0435\u0448"

    const-string v5, "Tap a muscle to pick it"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1147
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1148
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1149
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1151
    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    .line 1152
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42380000    # 46.0f

    .line 1153
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1154
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1155
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1156
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1157
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1158
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1160
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1161
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1162
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipColumn(Landroid/content/Context;[I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1165
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1166
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1168
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    .line 1169
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    return-object v1
.end method

.method private static bodytech(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 2229
    if-eqz p0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 2230
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 2229
    :goto_11
    return v0

    .line 2230
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

    .line 745
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 746
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->framePortrait()Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z

    .line 747
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 748
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 749
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 750
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 751
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 753
    sget-boolean v1, Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z

    if-eqz v1, :cond_61

    .line 756
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->topBar(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 759
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 760
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->figurePane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 762
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 763
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->controlPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    :goto_5e
    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 779
    return-object v0

    .line 765
    :cond_61
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->topBar(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42580000    # 54.0f

    .line 766
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 765
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 768
    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 769
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 770
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 771
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bodyPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43ba0000    # 372.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 775
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 776
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->controlPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5e
.end method

.method static channel(II)V
    .registers 5

    .prologue
    .line 2380
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 2381
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    if-nez v1, :cond_b

    .line 2391
    :goto_a
    return-void

    .line 2385
    :cond_b
    :try_start_b
    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->channelBy(Lcom/isaigu/gymapp/train/model/TrainItem;II)V

    .line 2386
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_13} :catch_17

    .line 2390
    :goto_13
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto :goto_a

    .line 2387
    :catch_17
    move-exception v0

    .line 2388
    const-string v1, "FocusBoard.channel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method static chipClick(I)V
    .registers 4

    .prologue
    .line 2250
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

    .line 2251
    :goto_1f
    if-eqz v0, :cond_24

    .line 2252
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2254
    :cond_24
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 2255
    return-void

    .line 2250
    :cond_28
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static chipColumn(Landroid/content/Context;[I)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1175
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    move v0, v1

    .line 1176
    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_32

    .line 1177
    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v2, p1, v0

    invoke-direct {v4, p0, v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;-><init>(Landroid/content/Context;IZ)V

    .line 1178
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v5, p1, v0

    aput-object v4, v2, v5

    .line 1179
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1180
    if-nez v0, :cond_2b

    move v2, v1

    :goto_21
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1181
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1180
    :cond_2b
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    goto :goto_21

    .line 1183
    :cond_32
    return-object v3
.end method

.method private static clientChip(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;ZZ)Landroid/view/View;
    .registers 16

    .prologue
    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v10, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v2, 0x1

    .line 1953
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1954
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v0, v3, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1955
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v6, v0

    .line 1956
    if-nez p3, :cond_38

    if-eqz p2, :cond_137

    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_137

    :cond_38
    move v4, v2

    .line 1957
    :goto_39
    if-eqz v4, :cond_13a

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 1958
    :goto_41
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1957
    invoke-static {v0, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1960
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v6

    .line 1961
    invoke-static {p0, p1, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->photo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1962
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42080000    # 34.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x42080000    # 34.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1963
    const/high16 v7, 0x41700000    # 15.0f

    if-eqz v4, :cond_156

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-nez v0, :cond_156

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    move v3, v0

    .line 1964
    :goto_71
    if-nez p2, :cond_75

    if-eqz v4, :cond_164

    :cond_75
    move v0, v2

    .line 1963
    :goto_76
    invoke-static {p0, v6, v7, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1965
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v3, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1966
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1967
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1968
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1969
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1970
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1971
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_a3

    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_a3

    move v1, v2

    .line 1972
    :cond_a3
    if-nez v1, :cond_167

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_a7
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1973
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1974
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1975
    if-eqz p2, :cond_113

    .line 1977
    const-string v0, "\u2715"

    const/high16 v1, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1978
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1979
    const-string v1, "\u041c\u0430\u0445\u043d\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v3, "Remove the client"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1980
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1981
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1982
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1983
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1984
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1985
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v5, v0, v1, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1987
    :cond_113
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1988
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1989
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1990
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x42280000    # 42.0f

    .line 1991
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1992
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1993
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1994
    return-object v5

    :cond_137
    move v4, v1

    .line 1956
    goto/16 :goto_39

    .line 1958
    :cond_13a
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    if-eqz p2, :cond_14f

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    move v3, v0

    .line 1959
    :goto_141
    if-eqz p2, :cond_153

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_145
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 1958
    invoke-static {v7, v6, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_41

    :cond_14f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    move v3, v0

    goto :goto_141

    .line 1959
    :cond_153
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_145

    .line 1963
    :cond_156
    if-nez p2, :cond_15a

    if-eqz v4, :cond_15f

    :cond_15a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    move v3, v0

    goto/16 :goto_71

    .line 1964
    :cond_15f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    move v3, v0

    goto/16 :goto_71

    :cond_164
    move v0, v1

    goto/16 :goto_76

    .line 1972
    :cond_167
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_171

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_a7

    :cond_171
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto/16 :goto_a7
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
    .line 407
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 409
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 411
    :goto_10
    if-eqz v2, :cond_33

    .line 412
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 413
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 414
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 415
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2b} :catch_32

    .line 412
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 410
    :cond_2f
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_10

    .line 419
    :catch_32
    move-exception v0

    .line 421
    :cond_33
    return-object v3
.end method

.method static closeModeMenu()V
    .registers 1

    .prologue
    .line 943
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modePop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 944
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modePop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_d

    .line 948
    :cond_9
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modePop:Landroid/widget/PopupWindow;

    .line 949
    return-void

    .line 946
    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method private static controlPane(Landroid/content/Context;)Landroid/view/View;
    .registers 16

    .prologue
    .line 1422
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v13

    .line 1423
    const-string v0, "xems_focus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    .line 1426
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1427
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1428
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1429
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

    .line 1430
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;-><init>(Landroid/content/Context;II)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    .line 1431
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;-><init>(Landroid/content/Context;II)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    .line 1432
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

    .line 1433
    const-string v1, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 2"

    const-string v2, "Intensity 2"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1434
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

    .line 1437
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1438
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1439
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    .line 1440
    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 1441
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1442
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1443
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1444
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1445
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

    .line 1446
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->paintLock(Landroid/content/Context;)V

    .line 1447
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1448
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

    .line 1449
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1450
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1451
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1452
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1453
    const-string v3, "2=1"

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    .line 1454
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1455
    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 1456
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/16 v7, 0x99

    .line 1457
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 1456
    invoke-static {v5, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v5, v6, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1458
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    const-string v4, "\u0418\u043c\u043f\u0443\u043b\u0441 2 = \u0438\u043c\u043f\u0443\u043b\u0441 1"

    const-string v5, "Impulse 2 = impulse 1"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1459
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1461
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

    .line 1462
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1464
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    .line 1465
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

    .line 1467
    const/4 v1, 0x0

    aget-object v1, v2, v1

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Steps:Landroid/view/View;

    .line 1468
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3fa00000    # 1.25f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1471
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v14

    .line 1472
    const/4 v0, 0x3

    new-array v5, v0, [Landroid/widget/TextView;

    .line 1473
    const/4 v0, 0x3

    new-array v11, v0, [Landroid/widget/TextView;

    .line 1474
    const/4 v0, 0x1

    new-array v12, v0, [Landroid/view/View;

    .line 1475
    const/16 v0, 0x70

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1476
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

    .line 1478
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1479
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1480
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

    .line 1481
    const/4 v0, 0x1

    aget-object v0, v5, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp1Val:Landroid/widget/TextView;

    .line 1482
    const/4 v0, 0x2

    aget-object v0, v5, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz1Val:Landroid/widget/TextView;

    .line 1483
    const/4 v0, 0x0

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    .line 1484
    const/4 v0, 0x1

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    .line 1485
    const/4 v0, 0x2

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Val:Landroid/widget/TextView;

    .line 1486
    const/4 v0, 0x0

    aget-object v0, v12, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Row:Landroid/view/View;

    .line 1487
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1488
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1489
    invoke-virtual {v13, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1492
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1493
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1494
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 1495
    const-string v2, "\u223f"

    const/high16 v3, 0x42080000    # 34.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    .line 1496
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1497
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$WaveClick;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/FocusBoard$WaveClick;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1498
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    const-string v3, "\u0412\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "Second impulse"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1499
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1500
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1502
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    .line 1503
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1504
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startIcon:Landroid/widget/ImageView;

    .line 1505
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

    .line 1506
    const-string v2, ""

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    .line 1507
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1508
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1509
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1510
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$StartClick;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/FocusBoard$StartClick;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1511
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1512
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0x3fd9999a    # 1.7f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1513
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1514
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1516
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1517
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/4 v8, -0x1

    const v9, 0x3da3d70a    # 0.08f

    .line 1518
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

    .line 1519
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1520
    const/4 v4, -0x1

    invoke-static {v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1521
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1522
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1523
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

    .line 1524
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1525
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$StopClick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$StopClick;-><init>()V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1526
    const-string v1, "\u0421\u0442\u043e\u043f"

    const-string v3, "Stop"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1527
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1528
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1529
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1530
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1532
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x429c0000    # 78.0f

    .line 1533
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1534
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1535
    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1536
    return-object v13
.end method

.method private static current()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 2

    .prologue
    .line 436
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v0

    .line 437
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 438
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 441
    :goto_12
    return-object v0

    .line 440
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x0

    :goto_1a
    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 441
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    goto :goto_12

    .line 440
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

    .line 363
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

    .line 373
    :cond_14
    :goto_14
    return v0

    .line 366
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    .line 367
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v2, v3, :cond_14

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v2, v3, :cond_14

    .line 370
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    .line 371
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

    .line 372
    :catch_33
    move-exception v0

    move v0, v1

    .line 373
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

    .line 1029
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1030
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1031
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 1032
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v5, v0, v1, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1033
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->sessionRow(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42b40000    # 90.0f

    .line 1034
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1033
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 1036
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1037
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    const-string v1, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b, \u0437\u0430 \u0434\u0430 \u0433\u043e \u0438\u0437\u0431\u0435\u0440\u0435\u0448"

    const-string v3, "Tap a muscle to pick it"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1038
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1039
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    .line 1042
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1044
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1045
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1046
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    .line 1048
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42380000    # 46.0f

    .line 1049
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1050
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1051
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1052
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1053
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v4, v2

    .line 1054
    :goto_af
    const/4 v0, 0x2

    if-ge v4, v0, :cond_102

    .line 1055
    if-nez v4, :cond_de

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    .line 1056
    :goto_b6
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    move v1, v2

    .line 1057
    :goto_bb
    array-length v3, v0

    if-ge v1, v3, :cond_e8

    .line 1058
    new-instance v7, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v3, v0, v1

    const/4 v8, 0x1

    invoke-direct {v7, p0, v3, v8}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;-><init>(Landroid/content/Context;IZ)V

    .line 1059
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v8, v0, v1

    aput-object v7, v3, v8

    .line 1060
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1061
    if-nez v1, :cond_e1

    move v3, v2

    :goto_d4
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1062
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1057
    add-int/lit8 v1, v1, 0x1

    goto :goto_bb

    .line 1055
    :cond_de
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    goto :goto_b6

    .line 1061
    :cond_e1
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    goto :goto_d4

    .line 1064
    :cond_e8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42680000    # 58.0f

    .line 1065
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1066
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1067
    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_af

    .line 1069
    :cond_102
    return-object v5
.end method

.method private static fillClients(Landroid/content/Context;Ljava/util/List;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 13
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
    const/high16 v9, 0x42200000    # 40.0f

    const/high16 v8, 0x41600000    # 14.0f

    const/16 v7, 0x3a

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1901
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_d

    .line 1946
    :cond_c
    :goto_c
    return-void

    .line 1904
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 1905
    :goto_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_76

    .line 1906
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1907
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

    if-ne v0, p2, :cond_72

    move v3, v4

    .line 1908
    :goto_3a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_74

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v3, :cond_74

    move v3, v4

    .line 1909
    :goto_59
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->picked(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1905
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_72
    move v3, v2

    .line 1907
    goto :goto_3a

    :cond_74
    move v3, v2

    .line 1908
    goto :goto_59

    .line 1911
    :cond_76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_136

    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->allTargeted()Z

    move-result v0

    if-eqz v0, :cond_136

    move v1, v4

    .line 1912
    :goto_83
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1913
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1914
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1917
    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 1918
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1919
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_10a

    .line 1921
    const-string v0, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v3, "All"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_13d

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_139

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_af
    invoke-static {p0, v3, v8, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1923
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1924
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v0, v2, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1925
    const/high16 v0, 0x41a80000    # 21.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v5, v0

    .line 1926
    if-eqz v1, :cond_141

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 1927
    :goto_d2
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1926
    invoke-static {v0, v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1928
    const-string v0, "\u0411\u0443\u0442\u043e\u043d\u0438\u0442\u0435 \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0438"

    const-string v5, "The keys for every client"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1929
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$AllClick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$AllClick;-><init>()V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1930
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1931
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x42280000    # 42.0f

    .line 1932
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1933
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1934
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10a
    move v3, v2

    .line 1936
    :goto_10b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_154

    .line 1937
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1938
    sget-object v7, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    if-ne v0, p2, :cond_150

    move v5, v4

    :goto_11c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_152

    if-nez v1, :cond_152

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->picked(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v6

    if-eqz v6, :cond_152

    move v6, v4

    :goto_12b
    invoke-static {p0, v0, v5, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->clientChip(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;ZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1936
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_10b

    :cond_136
    move v1, v2

    .line 1911
    goto/16 :goto_83

    .line 1922
    :cond_139
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    goto/16 :goto_af

    :cond_13d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_af

    .line 1927
    :cond_141
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_d2

    :cond_150
    move v5, v2

    .line 1938
    goto :goto_11c

    :cond_152
    move v6, v2

    goto :goto_12b

    .line 1940
    :cond_154
    const-string v0, "+"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x28

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1941
    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u0438 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v2, "Add client"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1942
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1943
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1944
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1945
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c
.end method

.method private static find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 3256
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3257
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3258
    if-eqz v1, :cond_19

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 3260
    :cond_19
    :goto_19
    return-object v0

    .line 3259
    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method private static framePortrait()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1190
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 1191
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    if-lez v3, :cond_1f

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-lez v3, :cond_1f

    .line 1192
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_1d

    .line 1198
    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    .line 1192
    goto :goto_1c

    .line 1195
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

    .line 1197
    :catch_2f
    move-exception v0

    move v0, v1

    .line 1198
    goto :goto_1c
.end method

.method private static hint(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3266
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 3267
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 3271
    :cond_12
    :goto_12
    return-void

    .line 3269
    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method private static impulseCard(Landroid/content/Context;Ljava/lang/String;III[Landroid/widget/TextView;[Landroid/view/View;)Landroid/view/View;
    .registers 16

    .prologue
    .line 1581
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1582
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1583
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1584
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1585
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

    .line 1586
    const/high16 v1, 0x41580000    # 13.5f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, p2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1587
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1588
    const v2, 0x3d23d70a    # 0.04f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1589
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1591
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1592
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1593
    const-string v3, "\u2014"

    const/high16 v4, 0x41e00000    # 28.0f

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, p2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1594
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1595
    const-string v4, "\u2212"

    const/4 v5, -0x1

    invoke-static {p0, v4, p3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1596
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1597
    const-string v4, "+"

    const/4 v5, 0x1

    invoke-static {p0, v4, p3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1598
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1600
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1601
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1603
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1604
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1605
    const-string v4, "\u2014"

    const/high16 v5, 0x41a80000    # 21.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1606
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1607
    const-string v5, "\u2212"

    const/4 v6, -0x1

    invoke-static {p0, v5, p4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1608
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1609
    const-string v5, "+"

    const/4 v6, 0x1

    invoke-static {p0, v5, p4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1610
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1612
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1613
    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1614
    const/4 v5, 0x0

    aput-object v1, p5, v5

    .line 1615
    const/4 v1, 0x1

    aput-object v3, p5, v1

    .line 1616
    const/4 v1, 0x2

    aput-object v4, p5, v1

    .line 1617
    if-eqz p6, :cond_ed

    .line 1618
    const/4 v1, 0x0

    aput-object v2, p6, v1

    .line 1620
    :cond_ed
    return-object v0
.end method

.method private static inRow(Ljava/lang/String;)Landroid/view/View;
    .registers 2

    .prologue
    .line 472
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->row()Landroid/view/View;

    move-result-object v0

    .line 473
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
    .line 260
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
    .line 1573
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x2e

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1574
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Step;

    invoke-direct {v1, p2}, Lcom/isaigu/gymapp/ai/FocusBoard$Step;-><init>(I)V

    invoke-static {v0, v1, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 1575
    return-object v0
.end method

.method private static later()V
    .registers 4

    .prologue
    .line 1652
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Later;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Later;-><init>()V

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1653
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Later;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Later;-><init>()V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1654
    return-void
.end method

.method private static main(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    .registers 7

    .prologue
    .line 585
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 586
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 587
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 588
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 590
    :cond_d
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 591
    sget-boolean v3, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v3, :cond_3a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v3

    if-eqz v3, :cond_3a

    if-eq v2, v0, :cond_3a

    .line 592
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    .line 593
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

    .line 594
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-eq v0, v1, :cond_3a

    .line 595
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    .line 598
    :cond_3a
    return-void
.end method

.method private static marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .prologue
    .line 734
    if-eqz p0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_19

    .line 735
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 734
    :goto_18
    return v0

    .line 735
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static minutes(Lcom/isaigu/gymapp/bean/TrainProgram;I)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1019
    if-nez p0, :cond_4

    .line 1024
    :cond_3
    :goto_3
    return v0

    .line 1022
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 1024
    :goto_9
    if-eqz v1, :cond_3

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    if-lez v2, :cond_3

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    add-int/lit8 v0, v0, 0x1e

    div-int/lit8 v0, v0, 0x3c

    goto :goto_3

    .line 1022
    :cond_16
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1c

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_9

    .line 1023
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
    .line 724
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 725
    :goto_6
    if-eqz v0, :cond_d

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    :goto_a
    return v0

    .line 724
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 725
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static modeKey(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v8, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v6, 0x0

    .line 881
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 882
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 883
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, v0, v6, v1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 884
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 885
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 886
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modeDot:Landroid/view/View;

    .line 888
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_d8

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 889
    :goto_41
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->modeDot:Landroid/view/View;

    sget-boolean v1, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v1, :cond_dc

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    :goto_49
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v4, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 890
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeDot:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->modeLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    .line 892
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    const v3, 0x3d75c28f    # 0.06f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 893
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 894
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v3, v6, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 895
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    const/high16 v3, 0x42b00000    # 88.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 896
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 897
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 898
    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;

    invoke-direct {v3, v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 899
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 900
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 901
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$ModeMenuClick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$ModeMenuClick;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    const-string v0, "\u0420\u0435\u0436\u0438\u043c \u2014 \u0438\u0437\u0431\u0435\u0440\u0438"

    const-string v1, "Mode \u2014 choose"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 903
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 904
    return-object v2

    .line 888
    :cond_d8
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    goto/16 :goto_41

    :cond_dc
    move v1, v0

    .line 889
    goto/16 :goto_49
.end method

.method static modeLabel(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 876
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

    .line 2029
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 2030
    :goto_11
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_35

    .line 2031
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    .line 2033
    :cond_25
    :goto_25
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2035
    :goto_2b
    return-object v0

    :cond_2c
    move-object v1, v0

    .line 2029
    goto :goto_11

    .line 2033
    :cond_2e
    const-string v0, ""
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_2b

    .line 2034
    :catch_31
    move-exception v0

    .line 2035
    const-string v0, ""

    goto :goto_2b

    :cond_35
    move-object v0, v1

    goto :goto_25
.end method

.method private static off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .prologue
    .line 739
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
    .line 1335
    if-nez p0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-eqz v0, :cond_a

    .line 1336
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->orient(Z)V

    .line 1338
    :cond_a
    return-void
.end method

.method private static openModeMenu(Landroid/view/View;)V
    .registers 16

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 957
    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 958
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 959
    if-eqz v2, :cond_18b

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    move v8, v0

    .line 960
    :goto_11
    if-eqz v2, :cond_18e

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    move-object v7, v0

    .line 961
    :goto_18
    invoke-static {v9}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 962
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 963
    invoke-virtual {v10, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 964
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v9, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 965
    invoke-static {v9, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 964
    invoke-static {v0, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 966
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v6, v1

    .line 967
    :goto_47
    const/4 v0, 0x4

    if-ge v6, v0, :cond_1d7

    .line 968
    if-ne v6, v8, :cond_192

    move v5, v4

    .line 969
    :goto_4d
    invoke-static {v9}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 970
    const/16 v0, 0x10

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 971
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v9, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v9, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v11, v0, v2, v3, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 972
    const/high16 v0, 0x41300000    # 11.0f

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, v0

    .line 973
    if-eqz v5, :cond_195

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v9, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 974
    :goto_80
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 973
    invoke-static {v0, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 975
    if-eqz v5, :cond_19e

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-nez v0, :cond_19e

    move v3, v4

    .line 976
    :goto_90
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 977
    if-eqz v3, :cond_1a1

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    .line 978
    :goto_99
    const/high16 v12, 0x40800000    # 4.0f

    .line 979
    invoke-static {v9, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 977
    invoke-static {v0, v12, v13, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 980
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v9, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v9, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v0, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 981
    invoke-static {v9}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 982
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/4 v12, 0x0

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v9, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v2, v0, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 983
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->modeLabel(I)Ljava/lang/String;

    move-result-object v12

    const/high16 v13, 0x41780000    # 15.5f

    if-eqz v3, :cond_1b1

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_dc
    const/4 v14, 0x1

    invoke-static {v9, v12, v13, v0, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 984
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 985
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_HINTS_BG:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v12, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_HINTS_EN:[Ljava/lang/String;

    aget-object v12, v12, v6

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/high16 v13, 0x41400000    # 12.0f

    .line 986
    if-eqz v3, :cond_1b5

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/16 v14, 0xd0

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    :goto_fc
    const/4 v14, 0x0

    .line 985
    invoke-static {v9, v12, v13, v0, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 987
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 988
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    const/4 v13, -0x2

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v0, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 989
    invoke-static {v7, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->minutes(Lcom/isaigu/gymapp/bean/TrainProgram;I)I

    move-result v0

    .line 990
    if-lez v0, :cond_1b9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u043c\u0438\u043d"

    const-string v12, "min"

    invoke-static {v2, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_136
    const/high16 v12, 0x41500000    # 13.0f

    .line 991
    if-eqz v3, :cond_1be

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_13c
    const/4 v13, 0x1

    .line 990
    invoke-static {v9, v2, v12, v0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 992
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 993
    if-eqz v5, :cond_1c8

    const-string v0, "\u2713"

    move-object v2, v0

    :goto_149
    const/high16 v5, 0x41700000    # 15.0f

    if-eqz v3, :cond_1cd

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_14f
    const/4 v3, 0x1

    invoke-static {v9, v2, v5, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 994
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 995
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 997
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$ModePick;

    invoke-direct {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard$ModePick;-><init>(I)V

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    invoke-static {v11}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 999
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1001
    if-nez v6, :cond_1d0

    move v0, v1

    :goto_181
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1002
    invoke-virtual {v10, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_47

    :cond_18b
    move v8, v1

    .line 959
    goto/16 :goto_11

    .line 960
    :cond_18e
    const/4 v0, 0x0

    move-object v7, v0

    goto/16 :goto_18

    :cond_192
    move v5, v1

    .line 968
    goto/16 :goto_4d

    .line 974
    :cond_195
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    invoke-static {v0, v2, v3, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_80

    :cond_19e
    move v3, v1

    .line 975
    goto/16 :goto_90

    .line 977
    :cond_1a1
    if-eqz v5, :cond_1a7

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto/16 :goto_99

    .line 978
    :cond_1a7
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v12, 0x80

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto/16 :goto_99

    .line 983
    :cond_1b1
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_dc

    .line 986
    :cond_1b5
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_fc

    .line 990
    :cond_1b9
    const-string v0, ""

    move-object v2, v0

    goto/16 :goto_136

    .line 991
    :cond_1be
    if-eqz v5, :cond_1c4

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto/16 :goto_13c

    :cond_1c4
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_13c

    .line 993
    :cond_1c8
    const-string v0, ""

    move-object v2, v0

    goto/16 :goto_149

    :cond_1cd
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_14f

    .line 1001
    :cond_1d0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    goto :goto_181

    .line 1004
    :cond_1d7
    new-instance v0, Landroid/widget/PopupWindow;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v9, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v10, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 1006
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1007
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1008
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v9, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 1009
    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1010
    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modePop:Landroid/widget/PopupWindow;

    .line 1011
    const/4 v1, 0x0

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v9, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
    :try_end_20d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_20d} :catch_20e

    .line 1015
    :goto_20d
    return-void

    .line 1012
    :catch_20e
    move-exception v0

    .line 1013
    const-string v1, "FocusBoard.modeMenu"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20d
.end method

.method static orient(Z)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x7

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 1241
    :try_start_4
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 1242
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 1243
    :goto_10
    if-nez v2, :cond_15

    .line 1278
    :cond_12
    :goto_12
    return-void

    :cond_13
    move-object v2, v1

    .line 1242
    goto :goto_10

    .line 1246
    :cond_15
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1247
    sget-boolean v5, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-nez v5, :cond_2f

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v6, :cond_2f

    .line 1248
    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    sput v5, Lcom/isaigu/gymapp/ai/FocusBoard;->landDensity:F

    .line 1249
    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landScaled:F

    .line 1251
    :cond_2f
    if-eqz p0, :cond_76

    .line 1252
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-nez v4, :cond_3e

    .line 1253
    const/4 v4, 0x1

    sput-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    .line 1254
    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->hostOrientation:I

    .line 1256
    :cond_3e
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landDensity:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_4c

    .line 1257
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landDensity:F

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedDensity:F

    .line 1258
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landScaled:F

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedScaled:F

    .line 1260
    :cond_4c
    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    if-eq v4, v8, :cond_56

    .line 1261
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1270
    :cond_56
    :goto_56
    sget-boolean v2, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsNav;->compact(Z)V

    .line 1271
    if-eqz v3, :cond_63

    const-string v1, "rightLayout"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 1272
    :cond_63
    if-eqz v1, :cond_12

    .line 1273
    sget-boolean v2, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-eqz v2, :cond_6b

    const/16 v0, 0x8

    :cond_6b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_6e} :catch_6f

    goto :goto_12

    .line 1275
    :catch_6f
    move-exception v0

    .line 1276
    const-string v1, "FocusBoard.orient"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 1263
    :cond_76
    :try_start_76
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-eqz v4, :cond_56

    .line 1264
    const/4 v4, 0x0

    sput-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    .line 1265
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedDensity:F

    .line 1266
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedScaled:F

    .line 1267
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->hostOrientation:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1268
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

    .line 1838
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    if-nez v0, :cond_8

    .line 1872
    :cond_7
    :goto_7
    return-void

    .line 1841
    :cond_8
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->state(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v3

    .line 1844
    if-nez v3, :cond_8a

    .line 1845
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 1846
    const-string v0, ""

    .line 1858
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

    .line 1859
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1862
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1863
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->linkIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/XemsIcon;->setColor(I)V

    .line 1864
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1865
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1866
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e6

    const/4 v2, 0x0

    :goto_52
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1867
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v4, v2

    .line 1868
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    if-nez v3, :cond_ea

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    :goto_62
    and-int/2addr v1, v7

    const/high16 v6, 0x66000000

    or-int/2addr v1, v6

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1869
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 1868
    invoke-static {v2, v4, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1870
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    if-nez v3, :cond_85

    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d"

    const-string v2, "Suit connected"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_85
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1847
    :cond_8a
    const/4 v0, 0x1

    if-ne v3, v0, :cond_cb

    .line 1848
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->waitingSeconds(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v2

    .line 1849
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1850
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

    .line 1851
    :cond_cb
    const/4 v0, 0x2

    if-ne v3, v0, :cond_da

    .line 1852
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 1853
    const-string v0, "\u2713 \u041f\u0430\u043a \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d \u00b7 \u25b6"

    const-string v2, "\u2713 Back \u00b7 \u25b6"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 1855
    :cond_da
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 1856
    const-string v0, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430"

    const-string v2, "No link"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 1866
    :cond_e6
    const/16 v2, 0x8

    goto/16 :goto_52

    .line 1868
    :cond_ea
    and-int v2, v1, v7

    const/high16 v6, 0x22000000

    or-int/2addr v2, v6

    goto/16 :goto_62
.end method

.method private static paintLock(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 703
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 712
    :goto_4
    return-void

    .line 706
    :cond_5
    const/high16 v0, 0x41b80000    # 23.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v1, v0

    .line 707
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v0, :cond_4d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_16
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    invoke-direct {v3, v0, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;-><init>(IZ)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 708
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

    .line 709
    :goto_32
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 708
    invoke-static {v0, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 710
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

    .line 707
    :cond_4d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_16

    .line 709
    :cond_50
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_32

    .line 711
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
    .line 602
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 603
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 604
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    .line 605
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 606
    sget-boolean v3, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v3, :cond_40

    if-eq v2, v1, :cond_40

    .line 607
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    .line 608
    const v1, 0x3a83126f    # 0.001f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_40

    .line 609
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

    .line 610
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-eq v0, v1, :cond_40

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int v1, v0, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v1

    if-nez v1, :cond_40

    .line 611
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 615
    :cond_40
    return-void
.end method

.method private static photo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 2000
    :try_start_3
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v0

    .line 2001
    if-eqz v0, :cond_52

    const-string v2, "userIcon"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 2002
    :goto_14
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_54

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2003
    :goto_1e
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    move-object v1, v0

    .line 2004
    :cond_25
    if-eqz v1, :cond_57

    .line 2005
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2006
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2007
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2008
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 2009
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2010
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 2011
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2012
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_51} :catch_56

    .line 2024
    :goto_51
    return-object v0

    :cond_52
    move-object v0, v1

    .line 2001
    goto :goto_14

    :cond_54
    move-object v0, v1

    .line 2002
    goto :goto_1e

    .line 2015
    :catch_56
    move-exception v0

    .line 2017
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

    .line 2018
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2019
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2020
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 2021
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2022
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2023
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_51

    .line 2017
    :cond_94
    const-string v0, "?"

    goto :goto_65
.end method

.method static pickOnly(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 6

    .prologue
    .line 163
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pickOnlyOf:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1a

    .line 164
    const-string v0, "com.isaigu.gymapp.widget.XemsLocalAvatar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pickOnly"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/isaigu/gymapp/train/model/TrainItem;

    aput-object v4, v2, v3

    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pickOnlyOf:Ljava/lang/reflect/Method;

    .line 167
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pickOnlyOf:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_2a

    .line 171
    :goto_26
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsChanged()V

    .line 172
    return-void

    .line 168
    :catch_2a
    move-exception v0

    .line 169
    const-string v1, "FocusBoard.pickOnly"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method static picked(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 151
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->pickedOf:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1b

    .line 152
    const-string v1, "com.isaigu.gymapp.widget.XemsLocalAvatar"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "picked"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/isaigu/gymapp/train/model/TrainItem;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->pickedOf:Ljava/lang/reflect/Method;

    .line 154
    :cond_1b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pickedOf:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2d} :catch_2f

    move-result v0

    .line 156
    :goto_2e
    return v0

    .line 155
    :catch_2f
    move-exception v1

    goto :goto_2e
.end method

.method private static position(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 426
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    .line 427
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 428
    :goto_b
    if-eqz v1, :cond_11

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_14

    move-result v0

    .line 430
    :cond_11
    :goto_11
    return v0

    .line 427
    :cond_12
    const/4 v1, 0x0

    goto :goto_b

    .line 429
    :catch_14
    move-exception v1

    goto :goto_11
.end method

.method static press(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 481
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 482
    if-nez v0, :cond_14

    .line 483
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$PressLater;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$PressLater;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 484
    const/4 v0, 0x0

    .line 488
    :goto_13
    return v0

    .line 486
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 487
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 488
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private static ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F
    .registers 5

    .prologue
    .line 619
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 620
    if-nez v0, :cond_18

    .line 621
    if-lez p1, :cond_1d

    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    :goto_f
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 622
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 621
    :cond_1d
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_f
.end method

.method static refresh()V
    .registers 30

    .prologue
    .line 1658
    :try_start_0
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-nez v2, :cond_5

    .line 1834
    :cond_4
    :goto_4
    return-void

    .line 1661
    :cond_5
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    .line 1662
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v2

    .line 1663
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v20

    .line 1664
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->fillClients(Landroid/content/Context;Ljava/util/List;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 1665
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v21

    .line 1666
    if-eqz v20, :cond_4

    if-eqz v21, :cond_4

    .line 1669
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v2

    .line 1670
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v22

    .line 1671
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    if-eqz v3, :cond_4c

    .line 1672
    invoke-static/range {v22 .. v22}, Lcom/isaigu/gymapp/ai/FocusBoard;->modeLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1673
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 1674
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->modeName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1677
    :cond_4c
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->CLOCK:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1678
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 1679
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    :cond_68
    const-string v3, "batteryValueTextView"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1682
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_1d9

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v2, :cond_1d9

    const/4 v2, 0x1

    .line 1683
    :goto_7f
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    if-eqz v2, :cond_1dc

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1dc

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

    .line 1684
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1685
    invoke-static/range {v19 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->paintLink(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 1687
    invoke-static/range {v20 .. v21}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v7

    .line 1688
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v3

    .line 1689
    if-eqz v3, :cond_1e0

    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/train/model/SoftRamp;->clock(Lcom/isaigu/gymapp/train/model/TrainItem;)[J

    move-result-object v4

    .line 1692
    :goto_b7
    if-eqz v4, :cond_1eb

    .line 1693
    const/4 v2, 0x0

    aget-wide v8, v4, v2

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_1e3

    const/4 v2, 0x1

    :goto_c3
    move/from16 v18, v2

    .line 1697
    :goto_c5
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_1f9

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_cc
    sput v2, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 1698
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    if-eqz v2, :cond_df

    .line 1699
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    move-object/from16 v0, v21

    iget v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->set(Z[JIIZ)V

    .line 1701
    :cond_df
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->sessionBar:Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    if-eqz v2, :cond_122

    .line 1702
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->shownTime(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v10

    .line 1705
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iget v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1706
    move-object/from16 v0, v21

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1707
    sget-object v8, Lcom/isaigu/gymapp/ai/FocusBoard;->sessionBar:Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    invoke-static/range {v22 .. v22}, Lcom/isaigu/gymapp/ai/FocusBoard;->modeLabel(I)Ljava/lang/String;

    move-result-object v13

    move v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->set(ZIIILjava/lang/String;)V

    .line 1709
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->canAddTime(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v2

    if-eqz v2, :cond_206

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1710
    :goto_10a
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timeMinus:Landroid/widget/TextView;

    if-eqz v4, :cond_122

    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timeMinus:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_122

    .line 1711
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timeMinus:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1712
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timePlus:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1716
    :cond_122
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v17

    .line 1717
    if-eqz v7, :cond_20b

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v16

    .line 1718
    :goto_136
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_20f

    if-eqz v16, :cond_20f

    move-object/from16 v15, v16

    .line 1719
    :goto_13f
    const/4 v14, 0x0

    .line 1720
    const/4 v2, 0x0

    .line 1721
    const/16 v4, 0xa

    new-array v0, v4, [D

    move-object/from16 v23, v0

    .line 1722
    const/16 v4, 0xa

    new-array v0, v4, [Z

    move-object/from16 v24, v0

    .line 1723
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->bodytech(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v25

    .line 1724
    const/4 v4, 0x0

    move v6, v4

    :goto_153
    const/16 v4, 0xa

    if-ge v6, v4, :cond_234

    .line 1725
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v4, v4, v6

    if-eqz v4, :cond_176

    .line 1726
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v8, v4, v6

    if-eqz v25, :cond_16b

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->zone(Lcom/isaigu/gymapp/train/model/TrainItem;I)I

    move-result v4

    if-ne v4, v6, :cond_213

    :cond_16b
    const/4 v4, 0x1

    move v5, v4

    :goto_16d
    if-eqz v25, :cond_217

    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->rowName(I)Ljava/lang/String;

    move-result-object v4

    :goto_173
    invoke-virtual {v8, v5, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->show(ZLjava/lang/String;)V

    .line 1728
    :cond_176
    if-eqz v15, :cond_21a

    array-length v4, v15

    if-ge v6, v4, :cond_21a

    aget v9, v15, v6

    .line 1729
    :goto_17d
    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v11

    .line 1730
    if-eqz v11, :cond_551

    .line 1731
    const/4 v4, 0x1

    .line 1732
    if-eqz v17, :cond_21d

    move-object/from16 v0, v17

    array-length v5, v0

    if-ge v6, v5, :cond_21d

    aget v5, v17, v6

    :goto_18f
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1734
    :goto_193
    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v5

    aput-boolean v5, v24, v6

    .line 1735
    const-wide/high16 v12, 0x3ff4000000000000L    # 1.25

    int-to-double v0, v9

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x404e000000000000L    # 60.0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    aput-wide v12, v23, v6

    .line 1736
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v5, v5, v6

    if-eqz v5, :cond_1d3

    .line 1739
    if-eqz v11, :cond_220

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result v5

    if-eqz v5, :cond_220

    const/4 v12, 0x1

    .line 1741
    :goto_1bb
    sget v10, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 1742
    if-eqz v12, :cond_224

    .line 1743
    if-eqz v16, :cond_222

    move-object/from16 v0, v16

    array-length v5, v0

    if-ge v6, v5, :cond_222

    aget v9, v16, v6

    .line 1744
    :goto_1c8
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1749
    :cond_1ca
    :goto_1ca
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v8, v5, v6

    aget-boolean v13, v24, v6

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->set(IIZZZ)V

    .line 1724
    :cond_1d3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v14, v4

    goto/16 :goto_153

    .line 1682
    :cond_1d9
    const/4 v2, 0x0

    goto/16 :goto_7f

    .line 1683
    :cond_1dc
    const-string v2, ""

    goto/16 :goto_9c

    .line 1689
    :cond_1e0
    const/4 v4, 0x0

    goto/16 :goto_b7

    .line 1693
    :cond_1e3
    if-eqz v7, :cond_1e8

    const/4 v2, 0x2

    goto/16 :goto_c3

    :cond_1e8
    const/4 v2, 0x0

    goto/16 :goto_c3

    .line 1695
    :cond_1eb
    sget v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1f7

    if-eqz v7, :cond_1f7

    const/4 v2, 0x2

    :goto_1f3
    move/from16 v18, v2

    goto/16 :goto_c5

    :cond_1f7
    const/4 v2, 0x1

    goto :goto_1f3

    .line 1697
    :cond_1f9
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_202

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto/16 :goto_cc

    :cond_202
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_cc

    .line 1709
    :cond_206
    const v2, 0x3e99999a    # 0.3f

    goto/16 :goto_10a

    .line 1717
    :cond_20b
    const/16 v16, 0x0

    goto/16 :goto_136

    :cond_20f
    move-object/from16 v15, v17

    .line 1718
    goto/16 :goto_13f

    .line 1726
    :cond_213
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_16d

    :cond_217
    const/4 v4, 0x0

    goto/16 :goto_173

    .line 1728
    :cond_21a
    const/4 v9, 0x0

    goto/16 :goto_17d

    .line 1732
    :cond_21d
    const/4 v5, 0x0

    goto/16 :goto_18f

    .line 1739
    :cond_220
    const/4 v12, 0x0

    goto :goto_1bb

    .line 1743
    :cond_222
    const/4 v9, 0x0

    goto :goto_1c8

    .line 1745
    :cond_224
    if-eqz v11, :cond_1ca

    .line 1746
    if-eqz v17, :cond_232

    move-object/from16 v0, v17

    array-length v5, v0

    if-ge v6, v5, :cond_232

    aget v9, v17, v6

    .line 1747
    :goto_22f
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_1ca

    .line 1746
    :cond_232
    const/4 v9, 0x0

    goto :goto_22f

    .line 1752
    :cond_234
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    if-eqz v4, :cond_29d

    .line 1753
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    move-object/from16 v0, v20

    if-eq v4, v0, :cond_24e

    .line 1754
    sput-object v20, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;
    :try_end_240
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_240} :catch_27a

    .line 1756
    :try_start_240
    invoke-static/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v4

    .line 1757
    if-eqz v4, :cond_271

    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v5, :cond_271

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_24c
    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_24e
    .catch Ljava/lang/Throwable; {:try_start_240 .. :try_end_24e} :catch_274

    .line 1762
    :cond_24e
    :goto_24e
    if-eqz v25, :cond_287

    .line 1764
    const/4 v4, 0x0

    move v6, v4

    :goto_252
    const/16 v4, 0xa

    if-ge v6, v4, :cond_287

    .line 1765
    :try_start_256
    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->zone(Lcom/isaigu/gymapp/train/model/TrainItem;I)I

    move-result v8

    .line 1766
    if-eq v8, v6, :cond_26d

    .line 1767
    if-ltz v8, :cond_282

    aget-wide v4, v23, v8

    :goto_262
    aput-wide v4, v23, v6

    .line 1768
    if-ltz v8, :cond_26a

    aget-boolean v4, v24, v8

    if-eqz v4, :cond_285

    :cond_26a
    const/4 v4, 0x1

    :goto_26b
    aput-boolean v4, v24, v6
    :try_end_26d
    .catch Ljava/lang/Throwable; {:try_start_256 .. :try_end_26d} :catch_27a

    .line 1764
    :cond_26d
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_252

    .line 1757
    :cond_271
    :try_start_271
    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_273
    .catch Ljava/lang/Throwable; {:try_start_271 .. :try_end_273} :catch_274

    goto :goto_24c

    .line 1758
    :catch_274
    move-exception v4

    .line 1759
    :try_start_275
    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_279
    .catch Ljava/lang/Throwable; {:try_start_275 .. :try_end_279} :catch_27a

    goto :goto_24e

    .line 1831
    :catch_27a
    move-exception v2

    .line 1832
    const-string v3, "FocusBoard.refresh"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1767
    :cond_282
    const-wide/16 v4, 0x0

    goto :goto_262

    .line 1768
    :cond_285
    const/4 v4, 0x0

    goto :goto_26b

    .line 1772
    :cond_287
    :try_start_287
    sget-object v8, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    sget-object v9, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, v23

    move-object/from16 v12, v24

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z[Z)V

    .line 1773
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    if-eqz v4, :cond_29d

    .line 1774
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->invalidate()V

    .line 1778
    :cond_29d
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1Label:Landroid/widget/TextView;

    if-eqz v14, :cond_4cc

    const-string v4, "\u0418\u0437\u0431\u0440\u0430\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v6, "Selected muscles"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2a9
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1780
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    if-eqz v14, :cond_4d6

    move v4, v2

    :goto_2b1
    const/4 v6, 0x1

    if-eqz v3, :cond_4dd

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_4dd

    const/4 v2, 0x1

    :goto_2ba
    invoke-virtual {v5, v4, v6, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->set(IZZ)V

    .line 1781
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    if-eqz v14, :cond_4e0

    if-eqz v7, :cond_4e0

    invoke-static/range {v20 .. v21}, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Level(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v2

    move v4, v2

    :goto_2c8
    if-eqz v3, :cond_4e7

    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_4e7

    const/4 v2, 0x1

    :goto_2d0
    invoke-virtual {v5, v4, v7, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->set(IZZ)V

    .line 1782
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Steps:Landroid/view/View;

    if-eqz v7, :cond_4ea

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2d9
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1783
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    if-eqz v7, :cond_4ef

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2e2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1784
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    if-eqz v7, :cond_4f4

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2eb
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1785
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->imp1Val:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1786
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->hz1Val:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Hz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1787
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    if-eqz v7, :cond_4f9

    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441 2"

    const-string v4, "Impulse 2"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_332
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1788
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    if-eqz v7, :cond_503

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_33b
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1789
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1790
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    if-eqz v7, :cond_507

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_360
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1791
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Val:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Hz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Row:Landroid/view/View;

    if-eqz v7, :cond_50b

    const/4 v2, 0x0

    :goto_384
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1794
    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v5, v2

    .line 1795
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_50e

    const/4 v2, 0x1

    move v3, v2

    .line 1796
    :goto_397
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1797
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_512

    const-string v2, "on"

    :goto_3a6
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_516

    const-string v2, "m"

    :goto_3ae
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1798
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e9

    .line 1799
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1800
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v7, :cond_51a

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_3c7
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1801
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v7, :cond_51e

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    move-object/from16 v0, v19

    invoke-static {v0, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    :goto_3d6
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1803
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v3, :cond_526

    const v2, 0x3eb33333    # 0.35f

    :goto_3e6
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1805
    :cond_3e9
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->targets()Ljava/util/List;

    move-result-object v3

    .line 1806
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_52a

    const/4 v2, 0x1

    move v4, v2

    .line 1807
    :goto_3f6
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->anyRunning(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_52e

    const/4 v2, 0x1

    move v3, v2

    :goto_3fe
    if-eqz v4, :cond_532

    const/4 v2, 0x2

    :goto_401
    add-int/2addr v2, v3

    .line 1808
    sget v3, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    if-eq v2, v3, :cond_4

    .line 1809
    sput v2, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 1810
    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_535

    const/4 v2, 0x1

    move v3, v2

    .line 1811
    :goto_40f
    if-eqz v3, :cond_539

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->PAUSE:I

    .line 1812
    :goto_413
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, -0x1

    const v11, 0x3df5c28f    # 0.12f

    .line 1813
    invoke-static {v2, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, -0x1000000

    const v11, 0x3e6147ae    # 0.22f

    invoke-static {v2, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v10

    aput v10, v8, v9

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1814
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1815
    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, -0x1

    const v9, 0x3eb33333    # 0.35f

    invoke-static {v2, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    const/16 v8, 0xaa

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v6, v7, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1816
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/4 v7, -0x1

    invoke-static {v6, v7, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1817
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->startIcon:Landroid/widget/ImageView;

    new-instance v6, Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz v3, :cond_53d

    const/16 v2, 0x8

    :goto_462
    const/4 v7, -0x1

    invoke-direct {v6, v2, v7}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1818
    if-eqz v3, :cond_540

    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v3, "Pause"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1819
    :goto_473
    if-eqz v4, :cond_54a

    .line 1821
    const-string v3, "\u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438"

    const-string v4, "for all"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1822
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1823
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v5, 0x3f3851ec    # 0.72f

    invoke-direct {v3, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1824
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v5, -0x22000001

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1826
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1779
    :cond_4cc
    const-string v4, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 1"

    const-string v6, "Intensity 1"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2a9

    .line 1780
    :cond_4d6
    move-object/from16 v0, v21

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    move v4, v2

    goto/16 :goto_2b1

    :cond_4dd
    const/4 v2, 0x0

    goto/16 :goto_2ba

    .line 1781
    :cond_4e0
    move-object/from16 v0, v21

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    move v4, v2

    goto/16 :goto_2c8

    :cond_4e7
    const/4 v2, 0x0

    goto/16 :goto_2d0

    .line 1782
    :cond_4ea
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_2d9

    .line 1783
    :cond_4ef
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_2e2

    .line 1784
    :cond_4f4
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_2eb

    .line 1787
    :cond_4f9
    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v4, "Pause"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_332

    .line 1788
    :cond_503
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_33b

    .line 1790
    :cond_507
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_360

    .line 1792
    :cond_50b
    const/4 v2, 0x4

    goto/16 :goto_384

    .line 1795
    :cond_50e
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_397

    .line 1797
    :cond_512
    const-string v2, "off"

    goto/16 :goto_3a6

    :cond_516
    const-string v2, ""

    goto/16 :goto_3ae

    .line 1800
    :cond_51a
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_3c7

    .line 1801
    :cond_51e
    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto/16 :goto_3d6

    .line 1803
    :cond_526
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_3e6

    .line 1806
    :cond_52a
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3f6

    .line 1807
    :cond_52e
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_3fe

    :cond_532
    const/4 v2, 0x0

    goto/16 :goto_401

    .line 1810
    :cond_535
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_40f

    .line 1811
    :cond_539
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto/16 :goto_413

    .line 1817
    :cond_53d
    const/4 v2, 0x7

    goto/16 :goto_462

    .line 1818
    :cond_540
    const-string v2, "\u0421\u0442\u0430\u0440\u0442"

    const-string v3, "Start"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_473

    .line 1828
    :cond_54a
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_54f
    .catch Ljava/lang/Throwable; {:try_start_287 .. :try_end_54f} :catch_27a

    goto/16 :goto_4

    :cond_551
    move v4, v14

    goto/16 :goto_193
.end method

.method static remove(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2205
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    .line 2206
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

    .line 2225
    :cond_1f
    :goto_1f
    return-void

    .line 2209
    :cond_20
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_28

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 2210
    :cond_28
    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->removeTrainItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 2211
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsChanged()V

    .line 2212
    if-eqz v0, :cond_37

    .line 2213
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->removeTrainingUser(Ljava/lang/String;)V

    .line 2215
    :cond_37
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-ne v0, p0, :cond_41

    .line 2216
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 2217
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 2219
    :cond_41
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 2220
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->tick()V

    .line 2221
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4b} :catch_4c

    goto :goto_1f

    .line 2222
    :catch_4c
    move-exception v0

    .line 2223
    const-string v1, "FocusBoard.remove"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method private static ring2Level(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 3

    .prologue
    .line 629
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selectedSecond(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    .line 630
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

    .line 1543
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1544
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1545
    const/16 v1, 0x11

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1546
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1548
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1549
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1550
    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1551
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/ai/FocusBoard;->stepper(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1552
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1554
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1555
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1556
    if-eqz p4, :cond_40

    .line 1557
    aput-object v1, p4, v6

    .line 1559
    :cond_40
    return-object v0
.end method

.method private static ringLevel(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 635
    invoke-static {p0, p1, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v2

    .line 636
    const/4 v0, -0x1

    .line 637
    :goto_6
    if-eqz v2, :cond_1a

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 638
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 639
    aget v3, v2, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 637
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 642
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
    .line 467
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 468
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

    .line 446
    if-ltz p0, :cond_7

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    if-nez v0, :cond_9

    :cond_7
    move-object v0, v2

    .line 463
    :goto_8
    return-object v0

    .line 449
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 450
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_17

    move-object v0, v2

    .line 451
    goto :goto_8

    .line 453
    :cond_17
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 454
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2f

    .line 455
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 456
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p0, :cond_2c

    move-object v0, v3

    .line 457
    goto :goto_8

    .line 454
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 460
    :cond_2f
    if-eqz p1, :cond_34

    .line 461
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_34
    move-object v0, v2

    .line 463
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

    .line 1311
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

    .line 1312
    if-eqz v0, :cond_19

    .line 1317
    :goto_17
    return-object v0

    .line 1315
    :catch_18
    move-exception v0

    .line 1317
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

    .line 1323
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    if-eqz v1, :cond_29

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    const-string v2, "recyclerView"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 1324
    :goto_d
    if-eqz v1, :cond_13

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsAdapter(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 1325
    :cond_13
    if-eqz v0, :cond_28

    .line 1326
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

    .line 1331
    :cond_28
    :goto_28
    return-void

    :cond_29
    move-object v1, v0

    .line 1323
    goto :goto_d

    .line 1328
    :catch_2b
    move-exception v0

    .line 1329
    const-string v1, "FocusBoard.rowsChanged"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method private static rowsMode(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 379
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

    .line 381
    :goto_f
    return v0

    .line 380
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private static running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 1897
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

    .line 730
    if-eqz p1, :cond_10

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->shown(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v1

    if-eq v1, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static sessionRow(Landroid/content/Context;)Landroid/view/View;
    .registers 9

    .prologue
    const/16 v7, 0x31

    const/4 v6, -0x1

    .line 1084
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1085
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->sessionBar:Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    .line 1086
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->sessionBar:Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    const/16 v1, 0x1e

    .line 1089
    const/4 v2, 0x4

    .line 1091
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$SessionBar;->timeHalfWidth(Landroid/content/Context;)F

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    int-to-float v4, v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1092
    const-string v4, "\u2212"

    invoke-static {p0, v4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->timeKey(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timeMinus:Landroid/widget/TextView;

    .line 1093
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v5, v1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v6, v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1095
    int-to-float v5, v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1096
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->timeMinus:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timeMinus:Landroid/widget/TextView;

    neg-float v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1098
    const-string v4, "+"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->timeKey(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->timePlus:Landroid/widget/TextView;

    .line 1099
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v5, v1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v4, v5, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1101
    int-to-float v1, v2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1102
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->timePlus:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->timePlus:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1104
    return-object v0
.end method

.method static setTo(II)V
    .registers 5

    .prologue
    .line 574
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 575
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 576
    if-nez v1, :cond_b

    .line 581
    :goto_a
    return-void

    .line 579
    :cond_b
    const/4 v2, 0x1

    if-ne p0, v2, :cond_18

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Level(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    .line 580
    :goto_12
    sub-int v0, p1, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->step(II)V

    goto :goto_a

    .line 579
    :cond_18
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ringLevel(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    goto :goto_12
.end method

.method private static startLoop()V
    .registers 2

    .prologue
    .line 1626
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    if-nez v0, :cond_e

    .line 1627
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    .line 1628
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->REFRESH:Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1630
    :cond_e
    return-void
.end method

.method static step(II)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 523
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 524
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 525
    if-eqz v2, :cond_d

    if-nez p1, :cond_e

    .line 570
    :cond_d
    :goto_d
    return-void

    .line 528
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

    .line 530
    packed-switch p0, :pswitch_data_74

    goto :goto_d

    .line 532
    :pswitch_1d
    const/4 v0, 0x0

    :try_start_1e
    invoke-static {v1, p1, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->boardSelected(Lcom/isaigu/gymapp/train/model/TrainItem;IZ)Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_2c

    move-result v0

    if-eqz v0, :cond_28

    .line 569
    :cond_24
    :goto_24
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto :goto_d

    .line 535
    :cond_28
    :try_start_28
    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->main(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_24

    .line 566
    :catch_2c
    move-exception v0

    .line 567
    const-string v1, "FocusBoard.step"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    .line 538
    :pswitch_33
    :try_start_33
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 539
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u223f."

    const-string v1, "Turn the second impulse on with \u223f."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    goto :goto_d

    .line 542
    :cond_45
    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->boardSelected(Lcom/isaigu/gymapp/train/model/TrainItem;IZ)Z

    move-result v0

    if-nez v0, :cond_24

    .line 545
    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->pause(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    goto :goto_24

    .line 548
    :pswitch_50
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addHz(I)V

    goto :goto_24

    .line 551
    :pswitch_54
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 552
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u223f."

    const-string v1, "Turn the second impulse on with \u223f."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    goto :goto_d

    .line 555
    :cond_66
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseHz(I)V

    goto :goto_24

    .line 558
    :pswitch_6a
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->time(ZI)V

    goto :goto_d

    .line 561
    :pswitch_6f
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->time(ZI)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_73} :catch_2c

    goto :goto_d

    .line 530
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

    .line 1564
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1565
    const-string v1, "\u2212"

    const/4 v2, -0x1

    invoke-static {p0, v1, p1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1566
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1567
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1568
    const-string v1, "+"

    invoke-static {p0, v1, p1, v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1569
    return-object v0
.end method

.method public static sync(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 265
    if-eqz p0, :cond_8

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 268
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->tick()V

    .line 269
    return-void
.end method

.method static targets()Ljava/util/List;
    .registers 4
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
    .line 179
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v2

    .line 180
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    .line 189
    :goto_b
    return-object v2

    .line 183
    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 185
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->picked(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 186
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 189
    :cond_32
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    move-object v0, v2

    :goto_39
    move-object v2, v0

    goto :goto_b

    :cond_3b
    move-object v0, v3

    goto :goto_39
.end method

.method private static textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 2040
    if-eqz p0, :cond_17

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 2041
    :goto_6
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_16

    .line 2042
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2043
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2045
    :cond_16
    return-object p2

    .line 2040
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

    .line 274
    :try_start_4
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 275
    if-nez v3, :cond_9

    .line 310
    :cond_8
    :goto_8
    return-void

    .line 278
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 279
    const-string v5, "leftLayout"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 280
    if-eqz v3, :cond_8

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->isTrainingPage()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 283
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->left:Landroid/view/View;

    if-ne v3, v5, :cond_2b

    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2b

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    if-eq v5, v6, :cond_2e

    .line 284
    :cond_2b
    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->wrap(Landroid/content/Context;Landroid/view/View;)V

    .line 286
    :cond_2e
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 287
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->engineFree()Z

    move-result v6

    .line 288
    if-eqz v6, :cond_ac

    if-lez v5, :cond_ac

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_ac

    move v3, v2

    .line 289
    :goto_45
    if-eqz v3, :cond_ae

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->wantUpright(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_ae

    :goto_4d
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->orient(Z)V

    .line 290
    if-eqz v3, :cond_b0

    .line 291
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-nez v2, :cond_85

    .line 292
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->build(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    .line 293
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 296
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

    .line 298
    :cond_85
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 299
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->startLoop()V

    .line 303
    :cond_8e
    :goto_8e
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 304
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    if-nez v3, :cond_bc

    if-eqz v6, :cond_bc

    if-lez v5, :cond_bc

    :goto_9a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_a2} :catch_a4

    goto/16 :goto_8

    .line 307
    :catch_a4
    move-exception v0

    .line 308
    const-string v1, "FocusBoard.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_ac
    move v3, v0

    .line 288
    goto :goto_45

    :cond_ae
    move v2, v0

    .line 289
    goto :goto_4d

    .line 300
    :cond_b0
    :try_start_b0
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-eqz v2, :cond_8e

    .line 301
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_bb} :catch_a4

    goto :goto_8e

    :cond_bc
    move v0, v1

    .line 304
    goto :goto_9a
.end method

.method static time(ZI)V
    .registers 4

    .prologue
    .line 513
    if-eqz p0, :cond_1b

    const-string v0, "paulsestop"

    :goto_4
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 514
    if-eqz v1, :cond_21

    if-lez p1, :cond_1e

    const-string v0, "btnIncrease"

    :goto_e
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 515
    :goto_12
    if-eqz v0, :cond_17

    .line 516
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 518
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 519
    return-void

    .line 513
    :cond_1b
    const-string v0, "paulsecontinue"

    goto :goto_4

    .line 514
    :cond_1e
    const-string v0, "btnDecrease"

    goto :goto_e

    :cond_21
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static timeKey(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 6

    .prologue
    .line 1108
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x1e

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 1109
    if-gez p2, :cond_20

    const-string v0, "\u041c\u0438\u043d\u0443\u0442\u0430 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e"

    const-string v2, "A minute less"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1111
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$AddTime;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$AddTime;-><init>()V

    invoke-static {v1, v0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 1112
    return-object v1

    .line 1110
    :cond_20
    const-string v0, "\u041c\u0438\u043d\u0443\u0442\u0430 \u043f\u043e\u0432\u0435\u0447\u0435"

    const-string v2, "A minute more"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method private static topBar(Landroid/content/Context;Z)Landroid/view/View;
    .registers 12

    .prologue
    const/high16 v6, 0x41000000    # 8.0f

    const/4 v9, -0x2

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 783
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 784
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v0, v2, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 787
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 788
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 789
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 790
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    .line 791
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 792
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->modeKey(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modeKey:Landroid/widget/LinearLayout;

    .line 795
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42280000    # 42.0f

    .line 796
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 797
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 798
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 799
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->modeKey:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
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

    .line 802
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 803
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    const-string v4, "\u0427\u0430\u0441\u044a\u0442 \u0441\u0435\u0433\u0430"

    const-string v5, "The time now"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 804
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 805
    const-string v0, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    .line 806
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 807
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 810
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    .line 811
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 812
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 813
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 814
    new-instance v4, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/16 v5, 0x14

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 815
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 816
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

    .line 817
    const-string v0, ""

    const/high16 v4, 0x41480000    # 12.5f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    .line 818
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 819
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v4, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 820
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 821
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 822
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$LinkClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$LinkClick;-><init>()V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 824
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    .line 825
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 826
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 827
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    const-string v0, "\u2699"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x28

    invoke-static {p0, v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 830
    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v5, "setting"

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    const-string v4, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v5, "Client parameters"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 832
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 834
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 835
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 836
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 837
    new-instance v5, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    if-nez p1, :cond_257

    move v0, v1

    :goto_186
    invoke-direct {v5, v6, v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;-><init>(IZ)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 838
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, v0

    .line 839
    if-eqz p1, :cond_25a

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 840
    :goto_19b
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 839
    invoke-static {v0, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 841
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 842
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$TurnClick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$TurnClick;-><init>()V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    if-eqz p1, :cond_26a

    const-string v0, "\u0425\u043e\u0440\u0438\u0437\u043e\u043d\u0442\u0430\u043b\u043d\u043e"

    const-string v2, "Landscape"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b9
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 844
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 845
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 846
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 847
    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    if-eqz p1, :cond_274

    const-string v0, "\u2630"

    :goto_1dd
    const/high16 v2, 0x41580000    # 13.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 850
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 851
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

    .line 852
    const-string v2, "\u0420\u0435\u0434\u043e\u0432\u0435"

    const-string v4, "Rows"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 853
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 854
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

    .line 856
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 857
    new-instance v2, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;-><init>(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 860
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 861
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    if-eqz p1, :cond_252

    .line 863
    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 865
    :cond_252
    return-object v3

    .line 801
    :cond_253
    const/high16 v0, 0x41b00000    # 22.0f

    goto/16 :goto_78

    :cond_257
    move v0, v2

    .line 837
    goto/16 :goto_186

    .line 840
    :cond_25a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_19b

    .line 843
    :cond_26a
    const-string v0, "\u0418\u0437\u043f\u0440\u0430\u0432\u0435\u043d\u043e"

    const-string v2, "Upright"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b9

    .line 849
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

    .line 1204
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

    .line 1206
    :goto_f
    return v0

    .line 1205
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

    .line 314
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->closeModeMenu()V

    .line 315
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    .line 316
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    .line 317
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 318
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 319
    sput-object p1, Lcom/isaigu/gymapp/ai/FocusBoard;->left:Landroid/view/View;

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_20

    .line 354
    :goto_1f
    return-void

    .line 323
    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 324
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_e2

    const-string v1, "xems_focus_frame"

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 325
    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 326
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 327
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    :goto_49
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Shape;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Shape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 341
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

    .line 342
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 343
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

    .line 344
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 345
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 347
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 350
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 351
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 352
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1f

    .line 330
    :cond_e2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 332
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 333
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 334
    const-string v4, "xems_focus_frame"

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 335
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 338
    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    goto/16 :goto_49
.end method

.method static zone(Lcom/isaigu/gymapp/train/model/TrainItem;I)I
    .registers 4

    .prologue
    .line 2239
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bodytech(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2246
    :cond_6
    :goto_6
    return p1

    .line 2242
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->thighSlider()I

    move-result v0

    .line 2243
    if-ltz v0, :cond_16

    const/4 v1, 0x2

    if-eq p1, v1, :cond_14

    const/16 v1, 0x9

    if-ne p1, v1, :cond_16

    :cond_14
    move p1, v0

    .line 2244
    goto :goto_6

    .line 2246
    :cond_16
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hasChannel(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 p1, -0x1

    goto :goto_6
.end method
