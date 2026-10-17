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
        Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;,
        Lcom/isaigu/gymapp/ai/FocusBoard$LinkClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Turn;,
        Lcom/isaigu/gymapp/ai/FocusBoard$TurnClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;,
        Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;,
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

.field private static turned:Z

.field private static waveKey:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x4

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
    new-array v0, v6, [I

    fill-array-data v0, :array_96

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    .line 66
    new-array v0, v6, [I

    fill-array-data v0, :array_a4

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "xiong"

    aput-object v1, v0, v3

    const-string v1, "fubu"

    aput-object v1, v0, v4

    const-string v1, "xiazhi"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "xiaotui"

    aput-object v2, v0, v1

    const-string v1, "shoubi"

    aput-object v1, v0, v5

    const-string v1, "houxie"

    aput-object v1, v0, v6

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
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "mainModeBtn"

    aput-object v1, v0, v3

    const-string v1, "strenthExist"

    aput-object v1, v0, v4

    const-string v1, "youyangyundong"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "anmo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_IDS:[Ljava/lang/String;

    .line 91
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 92
    new-array v0, v5, [Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modeTabs:[Landroid/widget/TextView;

    .line 104
    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    .line 107
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    .line 109
    const v0, -0xc82f15

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 110
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    .line 125
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 991
    sput v3, Lcom/isaigu/gymapp/ai/FocusBoard;->hostOrientation:I

    return-void

    .line 65
    nop

    :array_96
    .array-data 4
        0x0
        0x4
        0x1
        0x2
        0x3
    .end array-data

    .line 66
    :array_a4
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
    .line 129
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

.method static synthetic access$1000()Landroid/view/View;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 3

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    return v0
.end method

.method static synthetic access$1300()Landroid/view/View;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z

    return v0
.end method

.method static synthetic access$1500()Z
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->framePortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600()Landroid/widget/FrameLayout;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1702(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1802(Z)Z
    .registers 1

    .prologue
    .line 55
    sput-boolean p0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    return p0
.end method

.method static synthetic access$1900()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    return-void
.end method

.method static synthetic access$2002(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(IZ)Landroid/view/View;
    .registers 3

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700()Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    return-object v0
.end method

.method static synthetic access$2800()Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    return-object v0
.end method

.method static synthetic access$2900()[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    return v0
.end method

.method static synthetic access$3000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->ICONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    .prologue
    .line 55
    sput-boolean p0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    return p0
.end method

.method static synthetic access$3100()[I
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    return-object v0
.end method

.method static synthetic access$3200()[I
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

.method static synthetic access$900(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->wantUpright(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 872
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 873
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 874
    check-cast v0, Landroid/app/Activity;

    .line 878
    :goto_b
    return-object v0

    .line 876
    :cond_c
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 878
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 577
    if-eqz p0, :cond_e

    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 578
    :goto_7
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_10

    move-result-object v0

    .line 580
    :cond_d
    :goto_d
    return-object v0

    :cond_e
    move-object v1, v0

    .line 577
    goto :goto_7

    .line 579
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

    .line 791
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 792
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 793
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 794
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 795
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 796
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipColumn(Landroid/content/Context;[I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 799
    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    .line 800
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42380000    # 46.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 802
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;-><init>()V

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 803
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    const-string v4, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b, \u0437\u0430 \u0434\u0430 \u0433\u043e \u0438\u0437\u0431\u0435\u0440\u0435\u0448"

    const-string v5, "Tap a muscle to pick it"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 804
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 805
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 806
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 808
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 809
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 810
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipColumn(Landroid/content/Context;[I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 814
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    .line 817
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    return-object v1
.end method

.method private static build(Landroid/content/Context;)Landroid/view/View;
    .registers 10

    .prologue
    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 606
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 607
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->framePortrait()Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z

    .line 608
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 609
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 610
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 611
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 612
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 614
    sget-boolean v1, Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z

    if-eqz v1, :cond_61

    .line 617
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->topBar(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 620
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 621
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->figurePane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 623
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 624
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->controlPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    :goto_5e
    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 640
    return-object v0

    .line 626
    :cond_61
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->topBar(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42580000    # 54.0f

    .line 627
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 626
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 629
    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 630
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 631
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 632
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bodyPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43ba0000    # 372.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 636
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 637
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->controlPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5e
.end method

.method static channel(II)V
    .registers 5

    .prologue
    .line 1937
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1938
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    if-nez v1, :cond_b

    .line 1948
    :goto_a
    return-void

    .line 1942
    :cond_b
    :try_start_b
    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->channelBy(Lcom/isaigu/gymapp/train/model/TrainItem;II)V

    .line 1943
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_13} :catch_17

    .line 1947
    :goto_13
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto :goto_a

    .line 1944
    :catch_17
    move-exception v0

    .line 1945
    const-string v1, "FocusBoard.channel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method static chipClick(I)V
    .registers 4

    .prologue
    .line 1807
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

    .line 1808
    :goto_1f
    if-eqz v0, :cond_24

    .line 1809
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1811
    :cond_24
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 1812
    return-void

    .line 1807
    :cond_28
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static chipColumn(Landroid/content/Context;[I)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 823
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    move v0, v1

    .line 824
    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_32

    .line 825
    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v2, p1, v0

    invoke-direct {v4, p0, v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;-><init>(Landroid/content/Context;IZ)V

    .line 826
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v5, p1, v0

    aput-object v4, v2, v5

    .line 827
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 828
    if-nez v0, :cond_2b

    move v2, v1

    :goto_21
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 829
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 828
    :cond_2b
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    goto :goto_21

    .line 831
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

    .line 1539
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1540
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

    .line 1541
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v3, v0

    .line 1542
    if-eqz p2, :cond_11b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 1543
    :goto_33
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1542
    invoke-static {v0, v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1544
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v3

    .line 1545
    invoke-static {p0, p1, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->photo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1546
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1547
    const/high16 v4, 0x41700000    # 15.0f

    if-eqz p2, :cond_12b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_5a
    invoke-static {p0, v3, v4, v0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1548
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1549
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1550
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1551
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1552
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1553
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1554
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_12f

    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_12f

    move v0, v1

    .line 1555
    :goto_89
    if-nez v0, :cond_132

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_8d
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1556
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1557
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1558
    if-eqz p2, :cond_f7

    .line 1560
    const-string v0, "\u2715"

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1561
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1562
    const-string v3, "\u041c\u0430\u0445\u043d\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v4, "Remove the client"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1563
    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;

    invoke-direct {v3, p1}, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1564
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1565
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1566
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1567
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1568
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

    .line 1570
    :cond_f7
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1571
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1572
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1573
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v3, 0x42280000    # 42.0f

    .line 1574
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1575
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1576
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    return-object v2

    .line 1543
    :cond_11b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_33

    .line 1547
    :cond_12b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_5a

    .line 1554
    :cond_12f
    const/4 v0, 0x0

    goto/16 :goto_89

    .line 1555
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
    .line 268
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 270
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 272
    :goto_10
    if-eqz v2, :cond_33

    .line 273
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 274
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 275
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 276
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2b} :catch_32

    .line 273
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 271
    :cond_2f
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_10

    .line 280
    :catch_32
    move-exception v0

    .line 282
    :cond_33
    return-object v3
.end method

.method private static controlPane(Landroid/content/Context;)Landroid/view/View;
    .registers 16

    .prologue
    .line 1069
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v13

    .line 1070
    const-string v0, "xems_focus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    .line 1073
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1074
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1075
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1076
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

    .line 1077
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;-><init>(Landroid/content/Context;II)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    .line 1078
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;-><init>(Landroid/content/Context;II)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    .line 1079
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

    .line 1080
    const-string v1, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 2"

    const-string v2, "Intensity 2"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1081
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

    .line 1084
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1085
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1086
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    .line 1087
    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 1088
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1089
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1090
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1092
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

    .line 1093
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->paintLock(Landroid/content/Context;)V

    .line 1094
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1095
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

    .line 1096
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1097
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1098
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1099
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    const-string v3, "2=1"

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    .line 1101
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1102
    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 1103
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/16 v7, 0x99

    .line 1104
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 1103
    invoke-static {v5, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v5, v6, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    const-string v4, "\u0418\u043c\u043f\u0443\u043b\u0441 2 = \u0438\u043c\u043f\u0443\u043b\u0441 1"

    const-string v5, "Impulse 2 = impulse 1"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1106
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1108
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

    .line 1109
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    .line 1112
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

    .line 1114
    const/4 v1, 0x0

    aget-object v1, v2, v1

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Steps:Landroid/view/View;

    .line 1115
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3fa00000    # 1.25f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v14

    .line 1119
    const/4 v0, 0x3

    new-array v5, v0, [Landroid/widget/TextView;

    .line 1120
    const/4 v0, 0x3

    new-array v11, v0, [Landroid/widget/TextView;

    .line 1121
    const/4 v0, 0x1

    new-array v12, v0, [Landroid/view/View;

    .line 1122
    const/16 v0, 0x70

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1123
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

    .line 1125
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1126
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1127
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

    .line 1128
    const/4 v0, 0x1

    aget-object v0, v5, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp1Val:Landroid/widget/TextView;

    .line 1129
    const/4 v0, 0x2

    aget-object v0, v5, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz1Val:Landroid/widget/TextView;

    .line 1130
    const/4 v0, 0x0

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    .line 1131
    const/4 v0, 0x1

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    .line 1132
    const/4 v0, 0x2

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Val:Landroid/widget/TextView;

    .line 1133
    const/4 v0, 0x0

    aget-object v0, v12, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Row:Landroid/view/View;

    .line 1134
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1135
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1136
    invoke-virtual {v13, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1139
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1140
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1141
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 1142
    const-string v2, "\u223f"

    const/high16 v3, 0x42080000    # 34.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    .line 1143
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1144
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$WaveClick;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/FocusBoard$WaveClick;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    const-string v3, "\u0412\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "Second impulse"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1146
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1147
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    .line 1150
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1151
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startIcon:Landroid/widget/ImageView;

    .line 1152
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

    .line 1153
    const-string v2, ""

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    .line 1154
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1155
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1156
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1157
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v4, "startpaulse"

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1158
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1159
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0x3fd9999a    # 1.7f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1160
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1161
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1164
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/4 v8, -0x1

    const v9, 0x3da3d70a    # 0.08f

    .line 1165
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

    .line 1166
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1167
    const/4 v4, -0x1

    invoke-static {v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1168
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1169
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1170
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

    .line 1171
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1172
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v3, "stop"

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    const-string v1, "\u0421\u0442\u043e\u043f"

    const-string v3, "Stop"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1174
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1175
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1176
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1177
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1179
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x429c0000    # 78.0f

    .line 1180
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1181
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1182
    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1183
    return-object v13
.end method

.method private static current()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 2

    .prologue
    .line 297
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v0

    .line 298
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 299
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 302
    :goto_12
    return-object v0

    .line 301
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x0

    :goto_1a
    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 302
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    goto :goto_12

    .line 301
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

    .line 231
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 235
    :cond_7
    :goto_7
    return v0

    .line 234
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/OutputOwner;->holder()Ljava/lang/String;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_16

    const-string v2, "music"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_16
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static figurePane(Landroid/content/Context;)Landroid/view/View;
    .registers 12

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v9, -0x1

    .line 754
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 755
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 756
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 757
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v5, v0, v1, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 758
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    .line 759
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42380000    # 46.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 761
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 762
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    const-string v1, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b, \u0437\u0430 \u0434\u0430 \u0433\u043e \u0438\u0437\u0431\u0435\u0440\u0435\u0448"

    const-string v3, "Tap a muscle to pick it"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 763
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 764
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    .line 767
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 770
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 771
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v4, v2

    .line 772
    :goto_8b
    const/4 v0, 0x2

    if-ge v4, v0, :cond_de

    .line 773
    if-nez v4, :cond_ba

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    .line 774
    :goto_92
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    move v1, v2

    .line 775
    :goto_97
    array-length v3, v0

    if-ge v1, v3, :cond_c4

    .line 776
    new-instance v7, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v3, v0, v1

    const/4 v8, 0x1

    invoke-direct {v7, p0, v3, v8}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;-><init>(Landroid/content/Context;IZ)V

    .line 777
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v8, v0, v1

    aput-object v7, v3, v8

    .line 778
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 779
    if-nez v1, :cond_bd

    move v3, v2

    :goto_b0
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 780
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    .line 773
    :cond_ba
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    goto :goto_92

    .line 779
    :cond_bd
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    goto :goto_b0

    .line 782
    :cond_c4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42680000    # 58.0f

    .line 783
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 784
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 785
    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_8b

    .line 787
    :cond_de
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

    .line 1510
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_b

    .line 1536
    :cond_a
    :goto_a
    return-void

    .line 1513
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 1514
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_68

    .line 1515
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1516
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

    .line 1517
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

    .line 1518
    :goto_57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1514
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_64
    move v3, v2

    .line 1516
    goto :goto_38

    :cond_66
    move v0, v2

    .line 1517
    goto :goto_57

    .line 1520
    :cond_68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1521
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1524
    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 1525
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v1, v2

    .line 1526
    :goto_7c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9a

    .line 1527
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1528
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    if-ne v0, p2, :cond_98

    move v3, v4

    :goto_8d
    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->clientChip(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1526
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7c

    :cond_98
    move v3, v2

    .line 1528
    goto :goto_8d

    .line 1530
    :cond_9a
    const-string v0, "+"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x28

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1531
    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u0438 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v2, "Add client"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1532
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1533
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1534
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1535
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a
.end method

.method private static find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2587
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2588
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2589
    if-eqz v1, :cond_19

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 2591
    :cond_19
    :goto_19
    return-object v0

    .line 2590
    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method private static framePortrait()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 838
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 839
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    if-lez v3, :cond_1f

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-lez v3, :cond_1f

    .line 840
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_1d

    .line 846
    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    .line 840
    goto :goto_1c

    .line 843
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

    .line 845
    :catch_2f
    move-exception v0

    move v0, v1

    .line 846
    goto :goto_1c
.end method

.method private static hint(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2597
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 2598
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 2602
    :cond_12
    :goto_12
    return-void

    .line 2600
    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method private static impulseCard(Landroid/content/Context;Ljava/lang/String;III[Landroid/widget/TextView;[Landroid/view/View;)Landroid/view/View;
    .registers 16

    .prologue
    .line 1228
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1229
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1230
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1231
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1232
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

    .line 1233
    const/high16 v1, 0x41500000    # 13.0f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, p2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1234
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1236
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1237
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1238
    const-string v3, "\u2014"

    const/high16 v4, 0x41c00000    # 24.0f

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, p2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1239
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1240
    const-string v4, "\u2212"

    const/4 v5, -0x1

    invoke-static {p0, v4, p3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1241
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1242
    const-string v4, "+"

    const/4 v5, 0x1

    invoke-static {p0, v4, p3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1243
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1245
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1246
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1249
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1250
    const-string v4, "\u2014"

    const/high16 v5, 0x41900000    # 18.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1251
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1252
    const-string v5, "\u2212"

    const/4 v6, -0x1

    invoke-static {p0, v5, p4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1253
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1254
    const-string v5, "+"

    const/4 v6, 0x1

    invoke-static {p0, v5, p4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1255
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1257
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1258
    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1259
    const/4 v5, 0x0

    aput-object v1, p5, v5

    .line 1260
    const/4 v1, 0x1

    aput-object v3, p5, v1

    .line 1261
    const/4 v1, 0x2

    aput-object v4, p5, v1

    .line 1262
    if-eqz p6, :cond_e2

    .line 1263
    const/4 v1, 0x0

    aput-object v2, p6, v1

    .line 1265
    :cond_e2
    return-object v0
.end method

.method private static inRow(Ljava/lang/String;)Landroid/view/View;
    .registers 2

    .prologue
    .line 333
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->row()Landroid/view/View;

    move-result-object v0

    .line 334
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
    .line 134
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
    .line 1220
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x2e

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1221
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Step;

    invoke-direct {v1, p2}, Lcom/isaigu/gymapp/ai/FocusBoard$Step;-><init>(I)V

    invoke-static {v0, v1, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 1222
    return-object v0
.end method

.method private static later()V
    .registers 4

    .prologue
    .line 1297
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Later;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Later;-><init>()V

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1298
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Later;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Later;-><init>()V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1299
    return-void
.end method

.method private static main(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    .registers 7

    .prologue
    .line 446
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 447
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 448
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 449
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 451
    :cond_d
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 452
    sget-boolean v3, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v3, :cond_3a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v3

    if-eqz v3, :cond_3a

    if-eq v2, v0, :cond_3a

    .line 453
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    .line 454
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

    .line 455
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-eq v0, v1, :cond_3a

    .line 456
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    .line 459
    :cond_3a
    return-void
.end method

.method private static marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .prologue
    .line 595
    if-eqz p0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_19

    .line 596
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 595
    :goto_18
    return v0

    .line 596
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 585
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 586
    :goto_6
    if-eqz v0, :cond_d

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    :goto_a
    return v0

    .line 585
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 586
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1612
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 1613
    :goto_11
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_35

    .line 1614
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    .line 1616
    :cond_25
    :goto_25
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1618
    :goto_2b
    return-object v0

    :cond_2c
    move-object v1, v0

    .line 1612
    goto :goto_11

    .line 1616
    :cond_2e
    const-string v0, ""
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_2b

    .line 1617
    :catch_31
    move-exception v0

    .line 1618
    const-string v0, ""

    goto :goto_2b

    :cond_35
    move-object v0, v1

    goto :goto_25
.end method

.method private static off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .prologue
    .line 600
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
    .line 983
    if-nez p0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-eqz v0, :cond_a

    .line 984
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->orient(Z)V

    .line 986
    :cond_a
    return-void
.end method

.method static orient(Z)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x7

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 889
    :try_start_4
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 890
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 891
    :goto_10
    if-nez v2, :cond_15

    .line 926
    :cond_12
    :goto_12
    return-void

    :cond_13
    move-object v2, v1

    .line 890
    goto :goto_10

    .line 894
    :cond_15
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 895
    sget-boolean v5, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-nez v5, :cond_2f

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v6, :cond_2f

    .line 896
    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    sput v5, Lcom/isaigu/gymapp/ai/FocusBoard;->landDensity:F

    .line 897
    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landScaled:F

    .line 899
    :cond_2f
    if-eqz p0, :cond_76

    .line 900
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-nez v4, :cond_3e

    .line 901
    const/4 v4, 0x1

    sput-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    .line 902
    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->hostOrientation:I

    .line 904
    :cond_3e
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landDensity:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_4c

    .line 905
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landDensity:F

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedDensity:F

    .line 906
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landScaled:F

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedScaled:F

    .line 908
    :cond_4c
    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    if-eq v4, v8, :cond_56

    .line 909
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 918
    :cond_56
    :goto_56
    sget-boolean v2, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsNav;->compact(Z)V

    .line 919
    if-eqz v3, :cond_63

    const-string v1, "rightLayout"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 920
    :cond_63
    if-eqz v1, :cond_12

    .line 921
    sget-boolean v2, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-eqz v2, :cond_6b

    const/16 v0, 0x8

    :cond_6b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_6e} :catch_6f

    goto :goto_12

    .line 923
    :catch_6f
    move-exception v0

    .line 924
    const-string v1, "FocusBoard.orient"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 911
    :cond_76
    :try_start_76
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-eqz v4, :cond_56

    .line 912
    const/4 v4, 0x0

    sput-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    .line 913
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedDensity:F

    .line 914
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedScaled:F

    .line 915
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->hostOrientation:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 916
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

    .line 1447
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    if-nez v0, :cond_8

    .line 1481
    :cond_7
    :goto_7
    return-void

    .line 1450
    :cond_8
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->state(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v3

    .line 1453
    if-nez v3, :cond_8a

    .line 1454
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 1455
    const-string v0, ""

    .line 1467
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

    .line 1468
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1471
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1472
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->linkIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/XemsIcon;->setColor(I)V

    .line 1473
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1474
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1475
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e6

    const/4 v2, 0x0

    :goto_52
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1476
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v4, v2

    .line 1477
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    if-nez v3, :cond_ea

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    :goto_62
    and-int/2addr v1, v7

    const/high16 v6, 0x66000000

    or-int/2addr v1, v6

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1478
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 1477
    invoke-static {v2, v4, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1479
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    if-nez v3, :cond_85

    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d"

    const-string v2, "Suit connected"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_85
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1456
    :cond_8a
    const/4 v0, 0x1

    if-ne v3, v0, :cond_cb

    .line 1457
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->waitingSeconds(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v2

    .line 1458
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1459
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

    .line 1460
    :cond_cb
    const/4 v0, 0x2

    if-ne v3, v0, :cond_da

    .line 1461
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 1462
    const-string v0, "\u2713 \u041f\u0430\u043a \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d \u00b7 \u25b6"

    const-string v2, "\u2713 Back \u00b7 \u25b6"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 1464
    :cond_da
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 1465
    const-string v0, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430"

    const-string v2, "No link"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 1475
    :cond_e6
    const/16 v2, 0x8

    goto/16 :goto_52

    .line 1477
    :cond_ea
    and-int v2, v1, v7

    const/high16 v6, 0x22000000

    or-int/2addr v2, v6

    goto/16 :goto_62
.end method

.method private static paintLock(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 564
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 573
    :goto_4
    return-void

    .line 567
    :cond_5
    const/high16 v0, 0x41b80000    # 23.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v1, v0

    .line 568
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v0, :cond_4d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_16
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    invoke-direct {v3, v0, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;-><init>(IZ)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
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

    .line 570
    :goto_32
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 569
    invoke-static {v0, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
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

    .line 568
    :cond_4d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_16

    .line 570
    :cond_50
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_32

    .line 572
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
    .line 463
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 464
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 465
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    .line 466
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 467
    sget-boolean v3, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v3, :cond_40

    if-eq v2, v1, :cond_40

    .line 468
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    .line 469
    const v1, 0x3a83126f    # 0.001f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_40

    .line 470
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

    .line 471
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-eq v0, v1, :cond_40

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int v1, v0, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v1

    if-nez v1, :cond_40

    .line 472
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 476
    :cond_40
    return-void
.end method

.method private static photo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1583
    :try_start_3
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v0

    .line 1584
    if-eqz v0, :cond_52

    const-string v2, "userIcon"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1585
    :goto_14
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_54

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1586
    :goto_1e
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    move-object v1, v0

    .line 1587
    :cond_25
    if-eqz v1, :cond_57

    .line 1588
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1589
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1590
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1591
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 1592
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1593
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1594
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1595
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_51} :catch_56

    .line 1607
    :goto_51
    return-object v0

    :cond_52
    move-object v0, v1

    .line 1584
    goto :goto_14

    :cond_54
    move-object v0, v1

    .line 1585
    goto :goto_1e

    .line 1598
    :catch_56
    move-exception v0

    .line 1600
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

    .line 1601
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1602
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1603
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1604
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1605
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1606
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_51

    .line 1600
    :cond_94
    const-string v0, "?"

    goto :goto_65
.end method

.method private static position(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 287
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 289
    :goto_b
    if-eqz v1, :cond_11

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_14

    move-result v0

    .line 291
    :cond_11
    :goto_11
    return v0

    .line 288
    :cond_12
    const/4 v1, 0x0

    goto :goto_b

    .line 290
    :catch_14
    move-exception v1

    goto :goto_11
.end method

.method static press(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 342
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 343
    if-nez v0, :cond_14

    .line 344
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$PressLater;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$PressLater;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    const/4 v0, 0x0

    .line 349
    :goto_13
    return v0

    .line 347
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 348
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 349
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private static ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F
    .registers 5

    .prologue
    .line 480
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 481
    if-nez v0, :cond_18

    .line 482
    if-lez p1, :cond_1d

    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    :goto_f
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 483
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 482
    :cond_1d
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_f
.end method

.method static refresh()V
    .registers 28

    .prologue
    .line 1303
    :try_start_0
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-nez v2, :cond_5

    .line 1443
    :cond_4
    :goto_4
    return-void

    .line 1306
    :cond_5
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 1307
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v2

    .line 1308
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v19

    .line 1309
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->fillClients(Landroid/content/Context;Ljava/util/List;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 1310
    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v20

    .line 1311
    if-eqz v19, :cond_4

    if-eqz v20, :cond_4

    .line 1314
    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1315
    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/ai/FocusBoard;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v21

    .line 1316
    const/4 v2, 0x0

    move v4, v2

    :goto_31
    const/4 v2, 0x4

    if-ge v4, v2, :cond_95

    .line 1317
    move/from16 v0, v21

    if-ne v4, v0, :cond_44

    const/4 v2, 0x1

    move v3, v2

    .line 1318
    :goto_3a
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->modeTabs:[Landroid/widget/TextView;

    aget-object v6, v2, v4

    .line 1319
    if-nez v6, :cond_47

    .line 1316
    :cond_40
    :goto_40
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_31

    .line 1317
    :cond_44
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3a

    .line 1322
    :cond_47
    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1323
    instance-of v7, v2, Ljava/lang/Boolean;

    if-eqz v7, :cond_57

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, v3, :cond_40

    .line 1324
    :cond_57
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1325
    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v7, v2

    .line 1326
    if-eqz v3, :cond_8a

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_6b
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1327
    if-eqz v3, :cond_8d

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    move-object/from16 v0, v18

    invoke-static {v0, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 1328
    :goto_78
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1327
    invoke-static {v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_81} :catch_82

    goto :goto_40

    .line 1440
    :catch_82
    move-exception v2

    .line 1441
    const-string v3, "FocusBoard.refresh"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1326
    :cond_8a
    :try_start_8a
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_6b

    .line 1328
    :cond_8d
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v7, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto :goto_78

    .line 1331
    :cond_95
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    const-string v3, "time"

    const-string v4, "\u2014"

    invoke-static {v5, v3, v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1332
    const-string v2, "batteryValueTextView"

    const-string v3, ""

    invoke-static {v5, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1333
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_1a8

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v2, :cond_1a8

    const/4 v2, 0x1

    .line 1334
    :goto_b9
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    if-eqz v2, :cond_1ab

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1ab

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25ae "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_d6
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1335
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1336
    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/ai/FocusBoard;->paintLink(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 1338
    invoke-static/range {v19 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v7

    .line 1339
    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v3

    .line 1340
    if-eqz v3, :cond_1af

    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/train/model/SoftRamp;->clock(Lcom/isaigu/gymapp/train/model/TrainItem;)[J

    move-result-object v4

    .line 1343
    :goto_f1
    if-eqz v4, :cond_1ba

    .line 1344
    const/4 v2, 0x0

    aget-wide v8, v4, v2

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_1b2

    const/4 v2, 0x1

    :goto_fd
    move/from16 v17, v2

    .line 1348
    :goto_ff
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_1c8

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_106
    sput v2, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 1349
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    if-eqz v2, :cond_119

    .line 1350
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->set(Z[JIIZ)V

    .line 1353
    :cond_119
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v16

    .line 1354
    if-eqz v7, :cond_1d5

    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v15

    .line 1355
    :goto_12d
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_1d8

    if-eqz v15, :cond_1d8

    move-object v14, v15

    .line 1356
    :goto_135
    const/4 v5, 0x0

    .line 1357
    const/4 v2, 0x0

    .line 1358
    const/16 v4, 0xa

    new-array v0, v4, [D

    move-object/from16 v22, v0

    .line 1359
    const/16 v4, 0xa

    new-array v0, v4, [Z

    move-object/from16 v23, v0

    .line 1360
    const/4 v4, 0x0

    move v6, v4

    :goto_145
    const/16 v4, 0xa

    if-ge v6, v4, :cond_1f5

    .line 1361
    if-eqz v14, :cond_1dc

    array-length v4, v14

    if-ge v6, v4, :cond_1dc

    aget v9, v14, v6

    .line 1362
    :goto_150
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v11

    .line 1363
    if-eqz v11, :cond_467

    .line 1364
    const/4 v4, 0x1

    .line 1365
    if-eqz v16, :cond_1df

    move-object/from16 v0, v16

    array-length v5, v0

    if-ge v6, v5, :cond_1df

    aget v5, v16, v6

    :goto_162
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1367
    :goto_166
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v5

    aput-boolean v5, v23, v6

    .line 1368
    const-wide/high16 v12, 0x3ff4000000000000L    # 1.25

    int-to-double v0, v9

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x404e000000000000L    # 60.0

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    aput-wide v12, v22, v6

    .line 1369
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v5, v5, v6

    if-eqz v5, :cond_1a4

    .line 1372
    if-eqz v11, :cond_1e1

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result v5

    if-eqz v5, :cond_1e1

    const/4 v12, 0x1

    .line 1374
    :goto_18e
    sget v10, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 1375
    if-eqz v12, :cond_1e5

    .line 1376
    if-eqz v15, :cond_1e3

    array-length v5, v15

    if-ge v6, v5, :cond_1e3

    aget v9, v15, v6

    .line 1377
    :goto_199
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1382
    :cond_19b
    :goto_19b
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v8, v5, v6

    aget-boolean v13, v23, v6

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->set(IIZZZ)V

    .line 1360
    :cond_1a4
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    goto :goto_145

    .line 1333
    :cond_1a8
    const/4 v2, 0x0

    goto/16 :goto_b9

    .line 1334
    :cond_1ab
    const-string v2, ""

    goto/16 :goto_d6

    .line 1340
    :cond_1af
    const/4 v4, 0x0

    goto/16 :goto_f1

    .line 1344
    :cond_1b2
    if-eqz v7, :cond_1b7

    const/4 v2, 0x2

    goto/16 :goto_fd

    :cond_1b7
    const/4 v2, 0x0

    goto/16 :goto_fd

    .line 1346
    :cond_1ba
    sget v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1c6

    if-eqz v7, :cond_1c6

    const/4 v2, 0x2

    :goto_1c2
    move/from16 v17, v2

    goto/16 :goto_ff

    :cond_1c6
    const/4 v2, 0x1

    goto :goto_1c2

    .line 1348
    :cond_1c8
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_1d1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto/16 :goto_106

    :cond_1d1
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_106

    .line 1354
    :cond_1d5
    const/4 v15, 0x0

    goto/16 :goto_12d

    :cond_1d8
    move-object/from16 v14, v16

    .line 1355
    goto/16 :goto_135

    .line 1361
    :cond_1dc
    const/4 v9, 0x0

    goto/16 :goto_150

    .line 1365
    :cond_1df
    const/4 v5, 0x0

    goto :goto_162

    .line 1372
    :cond_1e1
    const/4 v12, 0x0

    goto :goto_18e

    .line 1376
    :cond_1e3
    const/4 v9, 0x0

    goto :goto_199

    .line 1378
    :cond_1e5
    if-eqz v11, :cond_19b

    .line 1379
    if-eqz v16, :cond_1f3

    move-object/from16 v0, v16

    array-length v5, v0

    if-ge v6, v5, :cond_1f3

    aget v9, v16, v6

    .line 1380
    :goto_1f0
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    goto :goto_19b

    .line 1379
    :cond_1f3
    const/4 v9, 0x0

    goto :goto_1f0

    .line 1385
    :cond_1f5
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    if-eqz v4, :cond_225

    .line 1386
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    move-object/from16 v0, v19

    if-eq v4, v0, :cond_20f

    .line 1387
    sput-object v19, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;
    :try_end_201
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_201} :catch_82

    .line 1389
    :try_start_201
    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v4

    .line 1390
    if-eqz v4, :cond_3e9

    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v6, :cond_3e9

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_20d
    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_20f
    .catch Ljava/lang/Throwable; {:try_start_201 .. :try_end_20f} :catch_3ed

    .line 1395
    :cond_20f
    :goto_20f
    :try_start_20f
    sget-object v8, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    sget-object v9, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, v22

    move-object/from16 v12, v23

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z[Z)V

    .line 1396
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    if-eqz v4, :cond_225

    .line 1397
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->invalidate()V

    .line 1401
    :cond_225
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1Label:Landroid/widget/TextView;

    if-eqz v5, :cond_3f4

    const-string v4, "\u0418\u0437\u0431\u0440\u0430\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v8, "Selected muscles"

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_231
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1403
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    if-eqz v5, :cond_3fe

    move v4, v2

    :goto_239
    const/4 v8, 0x1

    if-eqz v3, :cond_405

    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_405

    const/4 v2, 0x1

    :goto_242
    invoke-virtual {v6, v4, v8, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->set(IZZ)V

    .line 1404
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    if-eqz v5, :cond_408

    if-eqz v7, :cond_408

    invoke-static/range {v19 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Level(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v2

    move v4, v2

    :goto_250
    if-eqz v3, :cond_40f

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_40f

    const/4 v2, 0x1

    :goto_258
    invoke-virtual {v6, v4, v7, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->set(IZZ)V

    .line 1405
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Steps:Landroid/view/View;

    if-eqz v7, :cond_412

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_261
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1406
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    if-eqz v7, :cond_417

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_26a
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1407
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    if-eqz v7, :cond_41c

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_273
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1408
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->imp1Val:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->hz1Val:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Hz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1410
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    if-eqz v7, :cond_421

    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441 2"

    const-string v5, "Impulse 2"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2ba
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    if-eqz v7, :cond_42b

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_2c3
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1412
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    if-eqz v7, :cond_42f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_2e8
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1414
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Val:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Hz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Row:Landroid/view/View;

    if-eqz v7, :cond_433

    const/4 v2, 0x0

    :goto_30c
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1417
    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v5, v2

    .line 1418
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_436

    const/4 v2, 0x1

    move v4, v2

    .line 1419
    :goto_31f
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1420
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_43a

    const-string v2, "on"

    :goto_32e
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v4, :cond_43e

    const-string v2, "m"

    :goto_336
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1421
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_371

    .line 1422
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1423
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v7, :cond_442

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_34f
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1424
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v7, :cond_446

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    move-object/from16 v0, v18

    invoke-static {v0, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    :goto_35e
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v7, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1426
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v4, :cond_44e

    const v2, 0x3eb33333    # 0.35f

    :goto_36e
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1428
    :cond_371
    if-eqz v3, :cond_452

    const/4 v2, 0x1

    move v3, v2

    .line 1429
    :goto_375
    sget v2, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    if-eq v3, v2, :cond_4

    .line 1430
    sput v3, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 1431
    const/4 v2, 0x1

    if-ne v3, v2, :cond_456

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1432
    :goto_380
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const v10, 0x3df5c28f    # 0.12f

    .line 1433
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

    .line 1434
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1435
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

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

    .line 1436
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    invoke-static {v4, v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1437
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->startIcon:Landroid/widget/ImageView;

    new-instance v5, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v2, 0x1

    if-ne v3, v2, :cond_45a

    const/16 v2, 0x8

    :goto_3d0
    const/4 v6, -0x1

    invoke-direct {v5, v2, v6}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1438
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-ne v3, v2, :cond_45d

    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v3, "Pause"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3e4
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3e7
    .catch Ljava/lang/Throwable; {:try_start_20f .. :try_end_3e7} :catch_82

    goto/16 :goto_4

    .line 1390
    :cond_3e9
    :try_start_3e9
    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_3eb
    .catch Ljava/lang/Throwable; {:try_start_3e9 .. :try_end_3eb} :catch_3ed

    goto/16 :goto_20d

    .line 1391
    :catch_3ed
    move-exception v4

    .line 1392
    :try_start_3ee
    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_20f

    .line 1402
    :cond_3f4
    const-string v4, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 1"

    const-string v8, "Intensity 1"

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_231

    .line 1403
    :cond_3fe
    move-object/from16 v0, v20

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    move v4, v2

    goto/16 :goto_239

    :cond_405
    const/4 v2, 0x0

    goto/16 :goto_242

    .line 1404
    :cond_408
    move-object/from16 v0, v20

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    move v4, v2

    goto/16 :goto_250

    :cond_40f
    const/4 v2, 0x0

    goto/16 :goto_258

    .line 1405
    :cond_412
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_261

    .line 1406
    :cond_417
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_26a

    .line 1407
    :cond_41c
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_273

    .line 1410
    :cond_421
    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v5, "Pause"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2ba

    .line 1411
    :cond_42b
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_2c3

    .line 1413
    :cond_42f
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_2e8

    .line 1415
    :cond_433
    const/4 v2, 0x4

    goto/16 :goto_30c

    .line 1418
    :cond_436
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_31f

    .line 1420
    :cond_43a
    const-string v2, "off"

    goto/16 :goto_32e

    :cond_43e
    const-string v2, ""

    goto/16 :goto_336

    .line 1423
    :cond_442
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_34f

    .line 1424
    :cond_446
    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto/16 :goto_35e

    .line 1426
    :cond_44e
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_36e

    .line 1428
    :cond_452
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_375

    .line 1431
    :cond_456
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto/16 :goto_380

    .line 1437
    :cond_45a
    const/4 v2, 0x7

    goto/16 :goto_3d0

    .line 1438
    :cond_45d
    const-string v2, "\u0421\u0442\u0430\u0440\u0442"

    const-string v3, "Start"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_464
    .catch Ljava/lang/Throwable; {:try_start_3ee .. :try_end_464} :catch_82

    move-result-object v2

    goto/16 :goto_3e4

    :cond_467
    move v4, v5

    goto/16 :goto_166
.end method

.method static remove(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1784
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    .line 1785
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

    .line 1804
    :cond_1f
    :goto_1f
    return-void

    .line 1788
    :cond_20
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_28

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 1789
    :cond_28
    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->removeTrainItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 1790
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsChanged()V

    .line 1791
    if-eqz v0, :cond_37

    .line 1792
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->removeTrainingUser(Ljava/lang/String;)V

    .line 1794
    :cond_37
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-ne v0, p0, :cond_41

    .line 1795
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1796
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1798
    :cond_41
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 1799
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->tick()V

    .line 1800
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4b} :catch_4c

    goto :goto_1f

    .line 1801
    :catch_4c
    move-exception v0

    .line 1802
    const-string v1, "FocusBoard.remove"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method private static ring2Level(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 3

    .prologue
    .line 490
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selectedSecond(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    .line 491
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

    .line 1190
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1191
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1192
    const/16 v1, 0x11

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1193
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1196
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1197
    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/ai/FocusBoard;->stepper(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1199
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1201
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1202
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1203
    if-eqz p4, :cond_40

    .line 1204
    aput-object v1, p4, v6

    .line 1206
    :cond_40
    return-object v0
.end method

.method private static ringLevel(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 496
    invoke-static {p0, p1, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v2

    .line 497
    const/4 v0, -0x1

    .line 498
    :goto_6
    if-eqz v2, :cond_1a

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 499
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 500
    aget v3, v2, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 498
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 503
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
    .line 328
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 329
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

    .line 307
    if-ltz p0, :cond_7

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    if-nez v0, :cond_9

    :cond_7
    move-object v0, v2

    .line 324
    :goto_8
    return-object v0

    .line 310
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 311
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_17

    move-object v0, v2

    .line 312
    goto :goto_8

    .line 314
    :cond_17
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 315
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2f

    .line 316
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 317
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p0, :cond_2c

    move-object v0, v3

    .line 318
    goto :goto_8

    .line 315
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 321
    :cond_2f
    if-eqz p1, :cond_34

    .line 322
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_34
    move-object v0, v2

    .line 324
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

    .line 959
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

    .line 960
    if-eqz v0, :cond_19

    .line 965
    :goto_17
    return-object v0

    .line 963
    :catch_18
    move-exception v0

    .line 965
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

    .line 971
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    if-eqz v1, :cond_29

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    const-string v2, "recyclerView"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 972
    :goto_d
    if-eqz v1, :cond_13

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsAdapter(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 973
    :cond_13
    if-eqz v0, :cond_28

    .line 974
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

    .line 979
    :cond_28
    :goto_28
    return-void

    :cond_29
    move-object v1, v0

    .line 971
    goto :goto_d

    .line 976
    :catch_2b
    move-exception v0

    .line 977
    const-string v1, "FocusBoard.rowsChanged"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method private static rowsMode(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 240
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

    .line 242
    :goto_f
    return v0

    .line 241
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private static running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 1506
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

    .line 591
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
    .line 435
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 436
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 437
    if-nez v1, :cond_b

    .line 442
    :goto_a
    return-void

    .line 440
    :cond_b
    const/4 v2, 0x1

    if-ne p0, v2, :cond_18

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Level(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    .line 441
    :goto_12
    sub-int v0, p1, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->step(II)V

    goto :goto_a

    .line 440
    :cond_18
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ringLevel(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    goto :goto_12
.end method

.method private static startLoop()V
    .registers 2

    .prologue
    .line 1271
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    if-nez v0, :cond_e

    .line 1272
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    .line 1273
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->REFRESH:Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1275
    :cond_e
    return-void
.end method

.method static step(II)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 384
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 385
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 386
    if-eqz v2, :cond_d

    if-nez p1, :cond_e

    .line 431
    :cond_d
    :goto_d
    return-void

    .line 389
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

    .line 391
    packed-switch p0, :pswitch_data_74

    goto :goto_d

    .line 393
    :pswitch_1d
    const/4 v0, 0x0

    :try_start_1e
    invoke-static {v1, p1, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->boardSelected(Lcom/isaigu/gymapp/train/model/TrainItem;IZ)Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_2c

    move-result v0

    if-eqz v0, :cond_28

    .line 430
    :cond_24
    :goto_24
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto :goto_d

    .line 396
    :cond_28
    :try_start_28
    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->main(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_24

    .line 427
    :catch_2c
    move-exception v0

    .line 428
    const-string v1, "FocusBoard.step"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    .line 399
    :pswitch_33
    :try_start_33
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 400
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u223f."

    const-string v1, "Turn the second impulse on with \u223f."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    goto :goto_d

    .line 403
    :cond_45
    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->boardSelected(Lcom/isaigu/gymapp/train/model/TrainItem;IZ)Z

    move-result v0

    if-nez v0, :cond_24

    .line 406
    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->pause(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    goto :goto_24

    .line 409
    :pswitch_50
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addHz(I)V

    goto :goto_24

    .line 412
    :pswitch_54
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 413
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u223f."

    const-string v1, "Turn the second impulse on with \u223f."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    goto :goto_d

    .line 416
    :cond_66
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseHz(I)V

    goto :goto_24

    .line 419
    :pswitch_6a
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->time(ZI)V

    goto :goto_d

    .line 422
    :pswitch_6f
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->time(ZI)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_73} :catch_2c

    goto :goto_d

    .line 391
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

    .line 1211
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1212
    const-string v1, "\u2212"

    const/4 v2, -0x1

    invoke-static {p0, v1, p1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1213
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1214
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1215
    const-string v1, "+"

    invoke-static {p0, v1, p1, v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1216
    return-object v0
.end method

.method public static sync(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 139
    if-eqz p0, :cond_8

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 142
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->tick()V

    .line 143
    return-void
.end method

.method private static textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1623
    if-eqz p0, :cond_17

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1624
    :goto_6
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_16

    .line 1625
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1626
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1628
    :cond_16
    return-object p2

    .line 1623
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

    .line 148
    :try_start_4
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 149
    if-nez v3, :cond_9

    .line 184
    :cond_8
    :goto_8
    return-void

    .line 152
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 153
    const-string v5, "leftLayout"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 154
    if-eqz v3, :cond_8

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->isTrainingPage()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 157
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->left:Landroid/view/View;

    if-ne v3, v5, :cond_2b

    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2b

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    if-eq v5, v6, :cond_2e

    .line 158
    :cond_2b
    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->wrap(Landroid/content/Context;Landroid/view/View;)V

    .line 160
    :cond_2e
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 161
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->engineFree()Z

    move-result v6

    .line 162
    if-eqz v6, :cond_ac

    if-lez v5, :cond_ac

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_ac

    move v3, v2

    .line 163
    :goto_45
    if-eqz v3, :cond_ae

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->wantUpright(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_ae

    :goto_4d
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->orient(Z)V

    .line 164
    if-eqz v3, :cond_b0

    .line 165
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-nez v2, :cond_85

    .line 166
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->build(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    .line 167
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 170
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

    .line 172
    :cond_85
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->startLoop()V

    .line 177
    :cond_8e
    :goto_8e
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 178
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    if-nez v3, :cond_bc

    if-eqz v6, :cond_bc

    if-lez v5, :cond_bc

    :goto_9a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_a2} :catch_a4

    goto/16 :goto_8

    .line 181
    :catch_a4
    move-exception v0

    .line 182
    const-string v1, "FocusBoard.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_ac
    move v3, v0

    .line 162
    goto :goto_45

    :cond_ae
    move v2, v0

    .line 163
    goto :goto_4d

    .line 174
    :cond_b0
    :try_start_b0
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-eqz v2, :cond_8e

    .line 175
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_bb} :catch_a4

    goto :goto_8e

    :cond_bc
    move v0, v1

    .line 178
    goto :goto_9a
.end method

.method static time(ZI)V
    .registers 4

    .prologue
    .line 374
    if-eqz p0, :cond_1b

    const-string v0, "paulsestop"

    :goto_4
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_21

    if-lez p1, :cond_1e

    const-string v0, "btnIncrease"

    :goto_e
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 376
    :goto_12
    if-eqz v0, :cond_17

    .line 377
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 379
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 380
    return-void

    .line 374
    :cond_1b
    const-string v0, "paulsecontinue"

    goto :goto_4

    .line 375
    :cond_1e
    const-string v0, "btnDecrease"

    goto :goto_e

    :cond_21
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static topBar(Landroid/content/Context;Z)Landroid/view/View;
    .registers 16

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v12, 0x40c00000    # 6.0f

    const/4 v11, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 644
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 645
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 646
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v0, v2, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 648
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 649
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 650
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 651
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    .line 652
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 653
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 656
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v0, v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 657
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 658
    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "\u041e\u0421\u041d\u041e\u0412\u0415\u041d"

    const-string v4, "MAIN"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, "\u041c\u0423\u0421\u041a\u0423\u041b\u0418"

    const-string v4, "MUSCLE"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x2

    const-string v4, "\u041a\u0410\u0420\u0414\u0418\u041e"

    const-string v7, "CARDIO"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v0

    const/4 v0, 0x3

    const-string v4, "\u041c\u0410\u0421\u0410\u0416"

    const-string v7, "MASSAGE"

    .line 659
    invoke-static {v4, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v0

    move v4, v2

    .line 660
    :goto_a6
    const/4 v0, 0x4

    if-ge v4, v0, :cond_113

    .line 661
    aget-object v0, v6, v4

    const/high16 v7, 0x41580000    # 13.5f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 662
    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 663
    const v0, 0x3d23d70a    # 0.04f

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 664
    if-eqz p1, :cond_101

    const/high16 v0, 0x40800000    # 4.0f

    :goto_c2
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    if-eqz p1, :cond_104

    const/high16 v0, 0x40800000    # 4.0f

    :goto_d0
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v10, 0x41100000    # 9.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v7, v8, v9, v0, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 665
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 666
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    sget-object v8, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_IDS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-direct {v0, v8}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 668
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modeTabs:[Landroid/widget/TextView;

    aput-object v7, v0, v4

    .line 669
    if-eqz p1, :cond_107

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_fa
    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_a6

    .line 664
    :cond_101
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_c2

    :cond_104
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_d0

    .line 670
    :cond_107
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42d00000    # 104.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v0, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_fa

    .line 672
    :cond_113
    if-nez p1, :cond_12d

    .line 673
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 675
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 676
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 677
    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    :cond_12d
    const-string v4, "\u2014"

    if-eqz p1, :cond_2fd

    const/high16 v0, 0x41b00000    # 22.0f

    :goto_133
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v0, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    .line 681
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v4, v2, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 682
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 683
    const-string v0, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v4, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    .line 684
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 685
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 688
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    .line 689
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 690
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v4, v2, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 691
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 692
    new-instance v4, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/16 v6, 0x14

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-direct {v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 693
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 694
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    const-string v0, ""

    const/high16 v4, 0x41480000    # 12.5f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v4, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    .line 696
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 697
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v4, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 698
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 699
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 700
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$LinkClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$LinkClick;-><init>()V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 702
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    .line 703
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 704
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 705
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->linkKey:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    const-string v0, "\u2699"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v7, 0x28

    invoke-static {p0, v0, v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 708
    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v6, "setting"

    invoke-direct {v4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    const-string v4, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v6, "Client parameters"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 710
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 712
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 713
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 714
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 715
    new-instance v6, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    if-nez p1, :cond_301

    move v0, v1

    :goto_23a
    invoke-direct {v6, v7, v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;-><init>(IZ)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, v0

    .line 717
    if-eqz p1, :cond_304

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 718
    :goto_24f
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 717
    invoke-static {v0, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 719
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 720
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$TurnClick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$TurnClick;-><init>()V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    if-eqz p1, :cond_312

    const-string v0, "\u0425\u043e\u0440\u0438\u0437\u043e\u043d\u0442\u0430\u043b\u043d\u043e"

    const-string v2, "Landscape"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_26d
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 722
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 723
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v0, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 724
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 725
    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    if-eqz p1, :cond_31c

    const-string v0, "\u2630"

    :goto_291
    const/high16 v2, 0x41580000    # 13.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 728
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 729
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v2, v4, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 730
    const-string v2, "\u0420\u0435\u0434\u043e\u0432\u0435"

    const-string v4, "Rows"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 731
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 732
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v4, v2, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 734
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 735
    new-instance v2, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;-><init>(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 738
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 739
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    if-nez p1, :cond_339

    move-object v0, v3

    .line 749
    :goto_2fc
    return-object v0

    .line 680
    :cond_2fd
    const/high16 v0, 0x41c00000    # 24.0f

    goto/16 :goto_133

    :cond_301
    move v0, v2

    .line 715
    goto/16 :goto_23a

    .line 718
    :cond_304
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v0, v2, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_24f

    .line 721
    :cond_312
    const-string v0, "\u0418\u0437\u043f\u0440\u0430\u0432\u0435\u043d\u043e"

    const-string v2, "Upright"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_26d

    .line 727
    :cond_31c
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

    goto/16 :goto_291

    .line 743
    :cond_339
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 744
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 747
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 748
    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2fc
.end method

.method private static wantUpright(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 852
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

    .line 854
    :goto_f
    return v0

    .line 853
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

    .line 188
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    .line 189
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    .line 190
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 191
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 192
    sput-object p1, Lcom/isaigu/gymapp/ai/FocusBoard;->left:Landroid/view/View;

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1d

    .line 227
    :goto_1c
    return-void

    .line 196
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 197
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_df

    const-string v1, "xems_focus_frame"

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 198
    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 199
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 200
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    :goto_46
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Shape;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Shape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 214
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

    .line 215
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 216
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

    .line 217
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 218
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 220
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 223
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 224
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 225
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1c

    .line 203
    :cond_df
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 206
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 207
    const-string v4, "xems_focus_frame"

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 208
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 211
    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    goto/16 :goto_46
.end method
