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
        Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;,
        Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Turn;,
        Lcom/isaigu/gymapp/ai/FocusBoard$TurnClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;,
        Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;,
        Lcom/isaigu/gymapp/ai/FocusBoard$RowsAfresh;,
        Lcom/isaigu/gymapp/ai/FocusBoard$Ring;,
        Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;,
        Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;,
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

    .line 89
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 90
    new-array v0, v5, [Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modeTabs:[Landroid/widget/TextView;

    .line 99
    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    .line 102
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    .line 104
    const v0, -0xdd3c0b

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 105
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    .line 120
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 121
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 939
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
    .line 124
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

.method static synthetic access$1000(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 3

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    return v0
.end method

.method static synthetic access$1200()Landroid/view/View;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->framePortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500()Landroid/widget/FrameLayout;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Z)Z
    .registers 1

    .prologue
    .line 55
    sput-boolean p0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    return p0
.end method

.method static synthetic access$1800()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object p0
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2002(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(IZ)Landroid/view/View;
    .registers 3

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600()Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    return-object v0
.end method

.method static synthetic access$2800()[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    return-object v0
.end method

.method static synthetic access$2900()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->ICONS:[Ljava/lang/String;

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

.method static synthetic access$3000()[I
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    return-object v0
.end method

.method static synthetic access$3100()[I
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    return-object v0
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

.method static synthetic access$800(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->wantUpright(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Landroid/view/View;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    return-object v0
.end method

.method private static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 820
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 821
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 822
    check-cast v0, Landroid/app/Activity;

    .line 826
    :goto_b
    return-object v0

    .line 824
    :cond_c
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 826
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 545
    if-eqz p0, :cond_e

    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 546
    :goto_7
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_10

    move-result-object v0

    .line 548
    :cond_d
    :goto_d
    return-object v0

    :cond_e
    move-object v1, v0

    .line 545
    goto :goto_7

    .line 547
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

    .line 739
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 740
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 741
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 743
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 744
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipColumn(Landroid/content/Context;[I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 747
    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    .line 748
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42380000    # 46.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 750
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;-><init>()V

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 751
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    const-string v4, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b, \u0437\u0430 \u0434\u0430 \u0433\u043e \u0438\u0437\u0431\u0435\u0440\u0435\u0448"

    const-string v5, "Tap a muscle to pick it"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 752
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 753
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 754
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 756
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 757
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 758
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipColumn(Landroid/content/Context;[I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 762
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    .line 765
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
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

    .line 574
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 575
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->framePortrait()Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z

    .line 576
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 577
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 578
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 579
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 580
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 582
    sget-boolean v1, Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z

    if-eqz v1, :cond_61

    .line 585
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->topBar(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 588
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 589
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->figurePane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 591
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 592
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->controlPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    :goto_5e
    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 608
    return-object v0

    .line 594
    :cond_61
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->topBar(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42580000    # 54.0f

    .line 595
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 594
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 597
    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 598
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 599
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 600
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bodyPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43ba0000    # 372.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 604
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 605
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->controlPane(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5e
.end method

.method static channel(II)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1811
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 1812
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 1813
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

    .line 1834
    :cond_1c
    :goto_1c
    return-void

    .line 1817
    :cond_1d
    :try_start_1d
    iget-object v0, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v0, v0, p0

    .line 1819
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v4, v4, p0

    if-eqz v4, :cond_81

    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v4, v4, p0

    iget v4, v4, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    if-ne v4, v5, :cond_81

    .line 1820
    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v4

    .line 1821
    if-eqz v4, :cond_3f

    array-length v5, v4

    if-ge p0, v5, :cond_3f

    aget v1, v4, p0

    .line 1822
    :cond_3f
    if-lez v1, :cond_70

    mul-int/2addr v0, p1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1827
    :cond_49
    :goto_49
    const/4 v1, 0x0

    const/16 v4, 0x64

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1828
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v0, v0, p0

    if-eqz v0, :cond_93

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    :goto_60
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-static {v0, v4, v3, p0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bar(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;II)V

    .line 1829
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_6c} :catch_95

    .line 1833
    :goto_6c
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto :goto_1c

    .line 1823
    :cond_70
    :try_start_70
    iget v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-lez v1, :cond_49

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_49

    .line 1825
    :cond_81
    iget v1, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lez v1, :cond_49

    int-to-double v0, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    iget v4, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_90} :catch_95

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_49

    .line 1828
    :cond_93
    const/4 v0, 0x0

    goto :goto_60

    .line 1830
    :catch_95
    move-exception v0

    .line 1831
    const-string v1, "FocusBoard.channel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6c
.end method

.method static chipClick(I)V
    .registers 4

    .prologue
    .line 1694
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

    .line 1695
    :goto_1f
    if-eqz v0, :cond_24

    .line 1696
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1698
    :cond_24
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 1699
    return-void

    .line 1694
    :cond_28
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static chipColumn(Landroid/content/Context;[I)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 771
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    move v0, v1

    .line 772
    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_32

    .line 773
    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v2, p1, v0

    invoke-direct {v4, p0, v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;-><init>(Landroid/content/Context;IZ)V

    .line 774
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v5, p1, v0

    aput-object v4, v2, v5

    .line 775
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 776
    if-nez v0, :cond_2b

    move v2, v1

    :goto_21
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 777
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 776
    :cond_2b
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    goto :goto_21

    .line 779
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

    .line 1426
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1427
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

    .line 1428
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v3, v0

    .line 1429
    if-eqz p2, :cond_11b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 1430
    :goto_33
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1429
    invoke-static {v0, v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1431
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v3

    .line 1432
    invoke-static {p0, p1, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->photo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1433
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1434
    const/high16 v4, 0x41700000    # 15.0f

    if-eqz p2, :cond_12b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_5a
    invoke-static {p0, v3, v4, v0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1435
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1436
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1437
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1438
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1439
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1440
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1441
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_12f

    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_12f

    move v0, v1

    .line 1442
    :goto_89
    if-nez v0, :cond_132

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_8d
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1443
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1444
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1445
    if-eqz p2, :cond_f7

    .line 1447
    const-string v0, "\u2715"

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1448
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1449
    const-string v3, "\u041c\u0430\u0445\u043d\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v4, "Remove the client"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1450
    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;

    invoke-direct {v3, p1}, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1451
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1452
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1453
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1454
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1455
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

    .line 1457
    :cond_f7
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1458
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard$FocusClick;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1459
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1460
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v3, 0x42280000    # 42.0f

    .line 1461
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1462
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1463
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1464
    return-object v2

    .line 1430
    :cond_11b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_33

    .line 1434
    :cond_12b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_5a

    .line 1441
    :cond_12f
    const/4 v0, 0x0

    goto/16 :goto_89

    .line 1442
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
    .line 263
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 265
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 267
    :goto_10
    if-eqz v2, :cond_33

    .line 268
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 269
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 270
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 271
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2b} :catch_32

    .line 268
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 266
    :cond_2f
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_10

    .line 275
    :catch_32
    move-exception v0

    .line 277
    :cond_33
    return-object v3
.end method

.method private static controlPane(Landroid/content/Context;)Landroid/view/View;
    .registers 16

    .prologue
    .line 1017
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v13

    .line 1018
    const-string v0, "xems_focus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    .line 1021
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1022
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1023
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1024
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

    .line 1025
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;-><init>(Landroid/content/Context;II)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    .line 1026
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;-><init>(Landroid/content/Context;II)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    .line 1027
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

    .line 1028
    const-string v1, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 2"

    const-string v2, "Intensity 2"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1029
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

    .line 1032
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1033
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1034
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    .line 1035
    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 1036
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1037
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1038
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1040
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

    .line 1041
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->paintLock(Landroid/content/Context;)V

    .line 1042
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1043
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

    .line 1044
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1045
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1046
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1047
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1048
    const-string v3, "2=1"

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    .line 1049
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1050
    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 1051
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/16 v7, 0x99

    .line 1052
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 1051
    invoke-static {v5, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v5, v6, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1053
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    const-string v4, "\u0418\u043c\u043f\u0443\u043b\u0441 2 = \u0438\u043c\u043f\u0443\u043b\u0441 1"

    const-string v5, "Impulse 2 = impulse 1"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1054
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1055
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1056
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

    .line 1057
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1059
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    .line 1060
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

    .line 1062
    const/4 v1, 0x0

    aget-object v1, v2, v1

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Steps:Landroid/view/View;

    .line 1063
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3fa00000    # 1.25f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v14

    .line 1067
    const/4 v0, 0x3

    new-array v5, v0, [Landroid/widget/TextView;

    .line 1068
    const/4 v0, 0x3

    new-array v11, v0, [Landroid/widget/TextView;

    .line 1069
    const/4 v0, 0x1

    new-array v12, v0, [Landroid/view/View;

    .line 1070
    const/16 v0, 0x70

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1071
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

    .line 1073
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1074
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1075
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

    .line 1076
    const/4 v0, 0x1

    aget-object v0, v5, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp1Val:Landroid/widget/TextView;

    .line 1077
    const/4 v0, 0x2

    aget-object v0, v5, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz1Val:Landroid/widget/TextView;

    .line 1078
    const/4 v0, 0x0

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    .line 1079
    const/4 v0, 0x1

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    .line 1080
    const/4 v0, 0x2

    aget-object v0, v11, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Val:Landroid/widget/TextView;

    .line 1081
    const/4 v0, 0x0

    aget-object v0, v12, v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Row:Landroid/view/View;

    .line 1082
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1083
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1084
    invoke-virtual {v13, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1088
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1089
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 1090
    const-string v2, "\u223f"

    const/high16 v3, 0x42080000    # 34.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    .line 1091
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1092
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v4, "save"

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    const-string v3, "\u0412\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "Second impulse"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1094
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1095
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    .line 1098
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1099
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startIcon:Landroid/widget/ImageView;

    .line 1100
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

    .line 1101
    const-string v2, ""

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    .line 1102
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1103
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1104
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1105
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v4, "startpaulse"

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1107
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0x3fd9999a    # 1.7f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1108
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1109
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1112
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/4 v8, -0x1

    const v9, 0x3da3d70a    # 0.08f

    .line 1113
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

    .line 1114
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1115
    const/4 v4, -0x1

    invoke-static {v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1116
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1117
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1118
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

    .line 1119
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1120
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v3, "stop"

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    const-string v1, "\u0421\u0442\u043e\u043f"

    const-string v3, "Stop"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1122
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 1123
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1124
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1125
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1127
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x429c0000    # 78.0f

    .line 1128
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1129
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1130
    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1131
    return-object v13
.end method

.method private static current()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 2

    .prologue
    .line 292
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v0

    .line 293
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 294
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 297
    :goto_12
    return-object v0

    .line 296
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x0

    :goto_1a
    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 297
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    goto :goto_12

    .line 296
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

    .line 226
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 230
    :cond_7
    :goto_7
    return v0

    .line 229
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/OutputOwner;->holder()Ljava/lang/String;

    move-result-object v1

    .line 230
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

    .line 702
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 703
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 705
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v5, v0, v1, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 706
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    .line 707
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42380000    # 46.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    .line 709
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 710
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    const-string v1, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b, \u0437\u0430 \u0434\u0430 \u0433\u043e \u0438\u0437\u0431\u0435\u0440\u0435\u0448"

    const-string v3, "Tap a muscle to pick it"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 711
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 712
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    .line 715
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 718
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 719
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v4, v2

    .line 720
    :goto_8b
    const/4 v0, 0x2

    if-ge v4, v0, :cond_de

    .line 721
    if-nez v4, :cond_ba

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->LEFT:[I

    .line 722
    :goto_92
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    move v1, v2

    .line 723
    :goto_97
    array-length v3, v0

    if-ge v1, v3, :cond_c4

    .line 724
    new-instance v7, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v3, v0, v1

    const/4 v8, 0x1

    invoke-direct {v7, p0, v3, v8}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;-><init>(Landroid/content/Context;IZ)V

    .line 725
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget v8, v0, v1

    aput-object v7, v3, v8

    .line 726
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 727
    if-nez v1, :cond_bd

    move v3, v2

    :goto_b0
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 728
    iget-object v3, v7, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    .line 721
    :cond_ba
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RIGHT:[I

    goto :goto_92

    .line 727
    :cond_bd
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    goto :goto_b0

    .line 730
    :cond_c4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42680000    # 58.0f

    .line 731
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 732
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 733
    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_8b

    .line 735
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

    .line 1397
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_b

    .line 1423
    :cond_a
    :goto_a
    return-void

    .line 1400
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 1401
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_68

    .line 1402
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1403
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

    .line 1404
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

    .line 1405
    :goto_57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1401
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_64
    move v3, v2

    .line 1403
    goto :goto_38

    :cond_66
    move v0, v2

    .line 1404
    goto :goto_57

    .line 1407
    :cond_68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1408
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1411
    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 1412
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v1, v2

    .line 1413
    :goto_7c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9a

    .line 1414
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1415
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    if-ne v0, p2, :cond_98

    move v3, v4

    :goto_8d
    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->clientChip(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1413
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7c

    :cond_98
    move v3, v2

    .line 1415
    goto :goto_8d

    .line 1417
    :cond_9a
    const-string v0, "+"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x28

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1418
    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u0438 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v2, "Add client"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1419
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1420
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1421
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1422
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a
.end method

.method private static find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2475
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2476
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2477
    if-eqz v1, :cond_19

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 2479
    :cond_19
    :goto_19
    return-object v0

    .line 2478
    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method private static framePortrait()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 786
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 787
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    if-lez v3, :cond_1f

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    if-lez v3, :cond_1f

    .line 788
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_1d

    .line 794
    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    .line 788
    goto :goto_1c

    .line 791
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

    .line 793
    :catch_2f
    move-exception v0

    move v0, v1

    .line 794
    goto :goto_1c
.end method

.method private static hint(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2485
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 2486
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 2490
    :cond_12
    :goto_12
    return-void

    .line 2488
    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method private static impulseCard(Landroid/content/Context;Ljava/lang/String;III[Landroid/widget/TextView;[Landroid/view/View;)Landroid/view/View;
    .registers 16

    .prologue
    .line 1176
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1178
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1179
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1180
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

    .line 1181
    const/high16 v1, 0x41500000    # 13.0f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, p2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1182
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1184
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1185
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1186
    const-string v3, "\u2014"

    const/high16 v4, 0x41c00000    # 24.0f

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, p2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1187
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1188
    const-string v4, "\u2212"

    const/4 v5, -0x1

    invoke-static {p0, v4, p3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1189
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1190
    const-string v4, "+"

    const/4 v5, 0x1

    invoke-static {p0, v4, p3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1191
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1193
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1194
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1197
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1198
    const-string v4, "\u2014"

    const/high16 v5, 0x41900000    # 18.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1199
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1200
    const-string v5, "\u2212"

    const/4 v6, -0x1

    invoke-static {p0, v5, p4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1201
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    const-string v5, "+"

    const/4 v6, 0x1

    invoke-static {p0, v5, p4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1203
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1205
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1206
    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1207
    const/4 v5, 0x0

    aput-object v1, p5, v5

    .line 1208
    const/4 v1, 0x1

    aput-object v3, p5, v1

    .line 1209
    const/4 v1, 0x2

    aput-object v4, p5, v1

    .line 1210
    if-eqz p6, :cond_e2

    .line 1211
    const/4 v1, 0x0

    aput-object v2, p6, v1

    .line 1213
    :cond_e2
    return-object v0
.end method

.method private static inRow(Ljava/lang/String;)Landroid/view/View;
    .registers 2

    .prologue
    .line 328
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->row()Landroid/view/View;

    move-result-object v0

    .line 329
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
    .line 129
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
    .line 1168
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x2e

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1169
    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Step;

    invoke-direct {v1, p2}, Lcom/isaigu/gymapp/ai/FocusBoard$Step;-><init>(I)V

    invoke-static {v0, v1, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 1170
    return-object v0
.end method

.method private static later()V
    .registers 4

    .prologue
    .line 1245
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Later;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Later;-><init>()V

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1246
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Later;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Later;-><init>()V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1247
    return-void
.end method

.method private static main(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    .registers 7

    .prologue
    .line 435
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 436
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 437
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 438
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 440
    :cond_d
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 441
    sget-boolean v3, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v3, :cond_3a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v3

    if-eqz v3, :cond_3a

    if-eq v2, v0, :cond_3a

    .line 442
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    .line 443
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

    .line 444
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-eq v0, v1, :cond_3a

    .line 445
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    .line 448
    :cond_3a
    return-void
.end method

.method private static marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .prologue
    .line 563
    if-eqz p0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_19

    .line 564
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 563
    :goto_18
    return v0

    .line 564
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 553
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 554
    :goto_6
    if-eqz v0, :cond_d

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    :goto_a
    return v0

    .line 553
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 554
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1499
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 1500
    :goto_11
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_35

    .line 1501
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    .line 1503
    :cond_25
    :goto_25
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1505
    :goto_2b
    return-object v0

    :cond_2c
    move-object v1, v0

    .line 1499
    goto :goto_11

    .line 1503
    :cond_2e
    const-string v0, ""
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_2b

    .line 1504
    :catch_31
    move-exception v0

    .line 1505
    const-string v0, ""

    goto :goto_2b

    :cond_35
    move-object v0, v1

    goto :goto_25
.end method

.method private static off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .prologue
    .line 568
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
    .line 931
    if-nez p0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-eqz v0, :cond_a

    .line 932
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->orient(Z)V

    .line 934
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

    .line 837
    :try_start_4
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 838
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 839
    :goto_10
    if-nez v2, :cond_15

    .line 874
    :cond_12
    :goto_12
    return-void

    :cond_13
    move-object v2, v1

    .line 838
    goto :goto_10

    .line 842
    :cond_15
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 843
    sget-boolean v5, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-nez v5, :cond_2f

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v6, :cond_2f

    .line 844
    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    sput v5, Lcom/isaigu/gymapp/ai/FocusBoard;->landDensity:F

    .line 845
    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landScaled:F

    .line 847
    :cond_2f
    if-eqz p0, :cond_76

    .line 848
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-nez v4, :cond_3e

    .line 849
    const/4 v4, 0x1

    sput-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    .line 850
    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    sput v4, Lcom/isaigu/gymapp/ai/FocusBoard;->hostOrientation:I

    .line 852
    :cond_3e
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landDensity:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_4c

    .line 853
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landDensity:F

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedDensity:F

    .line 854
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->landScaled:F

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedScaled:F

    .line 856
    :cond_4c
    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    if-eq v4, v8, :cond_56

    .line 857
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 866
    :cond_56
    :goto_56
    sget-boolean v2, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsNav;->compact(Z)V

    .line 867
    if-eqz v3, :cond_63

    const-string v1, "rightLayout"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 868
    :cond_63
    if-eqz v1, :cond_12

    .line 869
    sget-boolean v2, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-eqz v2, :cond_6b

    const/16 v0, 0x8

    :cond_6b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_6e} :catch_6f

    goto :goto_12

    .line 871
    :catch_6f
    move-exception v0

    .line 872
    const-string v1, "FocusBoard.orient"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 859
    :cond_76
    :try_start_76
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    if-eqz v4, :cond_56

    .line 860
    const/4 v4, 0x0

    sput-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z

    .line 861
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedDensity:F

    .line 862
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/widget/XemsUi;->forcedScaled:F

    .line 863
    sget v4, Lcom/isaigu/gymapp/ai/FocusBoard;->hostOrientation:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 864
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$RowsAfresh;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$RowsAfresh;-><init>()V

    const-wide/16 v6, 0x2bc

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_94} :catch_6f

    goto :goto_56
.end method

.method private static paintLock(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 532
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 541
    :goto_4
    return-void

    .line 535
    :cond_5
    const/high16 v0, 0x41b80000    # 23.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v1, v0

    .line 536
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v0, :cond_4d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_16
    sget-boolean v4, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    invoke-direct {v3, v0, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Padlock;-><init>(IZ)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
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

    .line 538
    :goto_32
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 537
    invoke-static {v0, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
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

    .line 536
    :cond_4d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_16

    .line 538
    :cond_50
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_32

    .line 540
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
    .line 452
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 453
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 454
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseStrenth(I)V

    .line 455
    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 456
    sget-boolean v3, Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z

    if-eqz v3, :cond_40

    if-eq v2, v1, :cond_40

    .line 457
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    move-result v0

    .line 458
    const v1, 0x3a83126f    # 0.001f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_40

    .line 459
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

    .line 460
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-eq v0, v1, :cond_40

    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int v1, v0, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v1

    if-nez v1, :cond_40

    .line 461
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 465
    :cond_40
    return-void
.end method

.method private static photo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1470
    :try_start_3
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v0

    .line 1471
    if-eqz v0, :cond_52

    const-string v2, "userIcon"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1472
    :goto_14
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_54

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1473
    :goto_1e
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    move-object v1, v0

    .line 1474
    :cond_25
    if-eqz v1, :cond_57

    .line 1475
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1476
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1477
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1478
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 1479
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1480
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1481
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1482
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_51} :catch_56

    .line 1494
    :goto_51
    return-object v0

    :cond_52
    move-object v0, v1

    .line 1471
    goto :goto_14

    :cond_54
    move-object v0, v1

    .line 1472
    goto :goto_1e

    .line 1485
    :catch_56
    move-exception v0

    .line 1487
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

    .line 1488
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1489
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1490
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1491
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1492
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1493
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_51

    .line 1487
    :cond_94
    const-string v0, "?"

    goto :goto_65
.end method

.method private static position(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 282
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 284
    :goto_b
    if-eqz v1, :cond_11

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_14

    move-result v0

    .line 286
    :cond_11
    :goto_11
    return v0

    .line 283
    :cond_12
    const/4 v1, 0x0

    goto :goto_b

    .line 285
    :catch_14
    move-exception v1

    goto :goto_11
.end method

.method static press(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 334
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 335
    if-nez v0, :cond_13

    .line 336
    const-string v0, "\u0420\u0435\u0434\u044a\u0442 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u043e\u0449\u0435 \u0441\u0435 \u0437\u0430\u0440\u0435\u0436\u0434\u0430 \u2014 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "The client\'s row is loading \u2014 try again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x0

    .line 345
    :goto_12
    return v0

    .line 339
    :cond_13
    const-string v1, "save"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 340
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->tap(Landroid/view/View;)V

    .line 344
    :goto_1e
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 345
    const/4 v0, 0x1

    goto :goto_12

    .line 342
    :cond_23
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_1e
.end method

.method private static ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F
    .registers 5

    .prologue
    .line 469
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 470
    if-nez v0, :cond_18

    .line 471
    if-lez p1, :cond_1d

    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    :goto_f
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 472
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 471
    :cond_1d
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_f
.end method

.method static refresh()V
    .registers 28

    .prologue
    .line 1251
    :try_start_0
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-nez v2, :cond_5

    .line 1390
    :cond_4
    :goto_4
    return-void

    .line 1254
    :cond_5
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 1255
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v2

    .line 1256
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v19

    .line 1257
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->fillClients(Landroid/content/Context;Ljava/util/List;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 1258
    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v20

    .line 1259
    if-eqz v19, :cond_4

    if-eqz v20, :cond_4

    .line 1262
    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/ai/FocusBoard;->position(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1263
    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/ai/FocusBoard;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v21

    .line 1264
    const/4 v2, 0x0

    move v4, v2

    :goto_31
    const/4 v2, 0x4

    if-ge v4, v2, :cond_95

    .line 1265
    move/from16 v0, v21

    if-ne v4, v0, :cond_44

    const/4 v2, 0x1

    move v3, v2

    .line 1266
    :goto_3a
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->modeTabs:[Landroid/widget/TextView;

    aget-object v6, v2, v4

    .line 1267
    if-nez v6, :cond_47

    .line 1264
    :cond_40
    :goto_40
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_31

    .line 1265
    :cond_44
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3a

    .line 1270
    :cond_47
    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1271
    instance-of v7, v2, Ljava/lang/Boolean;

    if-eqz v7, :cond_57

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, v3, :cond_40

    .line 1272
    :cond_57
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1273
    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v7, v2

    .line 1274
    if-eqz v3, :cond_8a

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_6b
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1275
    if-eqz v3, :cond_8d

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    move-object/from16 v0, v18

    invoke-static {v0, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 1276
    :goto_78
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1275
    invoke-static {v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_81} :catch_82

    goto :goto_40

    .line 1387
    :catch_82
    move-exception v2

    .line 1388
    const-string v3, "FocusBoard.refresh"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1274
    :cond_8a
    :try_start_8a
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_6b

    .line 1276
    :cond_8d
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v7, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto :goto_78

    .line 1279
    :cond_95
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    const-string v3, "time"

    const-string v4, "\u2014"

    invoke-static {v5, v3, v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    const-string v2, "batteryValueTextView"

    const-string v3, ""

    invoke-static {v5, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1281
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_19f

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v4, :cond_19f

    const-string v2, "\u043d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430"

    const-string v4, "offline"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_c2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_1be

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v2, :cond_1be

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_d7
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1285
    invoke-static/range {v19 .. v20}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v7

    .line 1286
    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v3

    .line 1287
    if-eqz v3, :cond_1c2

    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/train/model/SoftRamp;->clock(Lcom/isaigu/gymapp/train/model/TrainItem;)[J

    move-result-object v4

    .line 1290
    :goto_e8
    if-eqz v4, :cond_1cd

    .line 1291
    const/4 v2, 0x0

    aget-wide v8, v4, v2

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_1c5

    const/4 v2, 0x1

    :goto_f4
    move/from16 v17, v2

    .line 1295
    :goto_f6
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_1db

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_fd
    sput v2, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 1296
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    if-eqz v2, :cond_110

    .line 1297
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->timeline:Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/FocusBoard$Timeline;->set(Z[JIIZ)V

    .line 1300
    :cond_110
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v16

    .line 1301
    if-eqz v7, :cond_1e8

    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v15

    .line 1302
    :goto_124
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_1eb

    if-eqz v15, :cond_1eb

    move-object v14, v15

    .line 1303
    :goto_12c
    const/4 v5, 0x0

    .line 1304
    const/4 v2, 0x0

    .line 1305
    const/16 v4, 0xa

    new-array v0, v4, [D

    move-object/from16 v22, v0

    .line 1306
    const/16 v4, 0xa

    new-array v0, v4, [Z

    move-object/from16 v23, v0

    .line 1307
    const/4 v4, 0x0

    move v6, v4

    :goto_13c
    const/16 v4, 0xa

    if-ge v6, v4, :cond_209

    .line 1308
    if-eqz v14, :cond_1ef

    array-length v4, v14

    if-ge v6, v4, :cond_1ef

    aget v9, v14, v6

    .line 1309
    :goto_147
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v11

    .line 1310
    if-eqz v11, :cond_46e

    .line 1311
    const/4 v4, 0x1

    .line 1312
    if-eqz v16, :cond_1f2

    move-object/from16 v0, v16

    array-length v5, v0

    if-ge v6, v5, :cond_1f2

    aget v5, v16, v6

    :goto_159
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1314
    :goto_15d
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/FocusBoard;->off(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v5

    aput-boolean v5, v23, v6

    .line 1315
    const-wide/high16 v12, 0x3ff4000000000000L    # 1.25

    int-to-double v0, v9

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x404e000000000000L    # 60.0

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    aput-wide v12, v22, v6

    .line 1316
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v5, v5, v6

    if-eqz v5, :cond_19b

    .line 1319
    if-eqz v11, :cond_1f5

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/PartPick;->isYellow(I)Z

    move-result v5

    if-eqz v5, :cond_1f5

    const/4 v12, 0x1

    .line 1321
    :goto_185
    sget v10, Lcom/isaigu/gymapp/ai/FocusBoard;->shownTint:I

    .line 1322
    if-eqz v12, :cond_1f9

    .line 1323
    if-eqz v15, :cond_1f7

    array-length v5, v15

    if-ge v6, v5, :cond_1f7

    aget v9, v15, v6

    .line 1324
    :goto_190
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1329
    :cond_192
    :goto_192
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    aget-object v8, v5, v6

    aget-boolean v13, v23, v6

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->set(IIZZZ)V

    .line 1307
    :cond_19b
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    goto :goto_13c

    .line 1282
    :cond_19f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1ba

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

    :cond_1ba
    const-string v2, ""

    goto/16 :goto_c2

    .line 1283
    :cond_1be
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_d7

    .line 1287
    :cond_1c2
    const/4 v4, 0x0

    goto/16 :goto_e8

    .line 1291
    :cond_1c5
    if-eqz v7, :cond_1ca

    const/4 v2, 0x2

    goto/16 :goto_f4

    :cond_1ca
    const/4 v2, 0x0

    goto/16 :goto_f4

    .line 1293
    :cond_1cd
    sget v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1d9

    if-eqz v7, :cond_1d9

    const/4 v2, 0x2

    :goto_1d5
    move/from16 v17, v2

    goto/16 :goto_f6

    :cond_1d9
    const/4 v2, 0x1

    goto :goto_1d5

    .line 1295
    :cond_1db
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_1e4

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto/16 :goto_fd

    :cond_1e4
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_fd

    .line 1301
    :cond_1e8
    const/4 v15, 0x0

    goto/16 :goto_124

    :cond_1eb
    move-object/from16 v14, v16

    .line 1302
    goto/16 :goto_12c

    .line 1308
    :cond_1ef
    const/4 v9, 0x0

    goto/16 :goto_147

    .line 1312
    :cond_1f2
    const/4 v5, 0x0

    goto/16 :goto_159

    .line 1319
    :cond_1f5
    const/4 v12, 0x0

    goto :goto_185

    .line 1323
    :cond_1f7
    const/4 v9, 0x0

    goto :goto_190

    .line 1325
    :cond_1f9
    if-eqz v11, :cond_192

    .line 1326
    if-eqz v16, :cond_207

    move-object/from16 v0, v16

    array-length v5, v0

    if-ge v6, v5, :cond_207

    aget v9, v16, v6

    .line 1327
    :goto_204
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    goto :goto_192

    .line 1326
    :cond_207
    const/4 v9, 0x0

    goto :goto_204

    .line 1332
    :cond_209
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    if-eqz v4, :cond_239

    .line 1333
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    move-object/from16 v0, v19

    if-eq v4, v0, :cond_223

    .line 1334
    sput-object v19, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;
    :try_end_215
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_215} :catch_82

    .line 1336
    :try_start_215
    invoke-static/range {v19 .. v19}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v4

    .line 1337
    if-eqz v4, :cond_3f8

    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v6, :cond_3f8

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_221
    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_223
    .catch Ljava/lang/Throwable; {:try_start_215 .. :try_end_223} :catch_3fc

    .line 1342
    :cond_223
    :goto_223
    :try_start_223
    sget-object v8, Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    sget-object v9, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, v22

    move-object/from16 v12, v23

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->set(Lcom/isaigu/gymapp/ai/AiModel$Sex;[D[D[Z[Z)V

    .line 1343
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    if-eqz v4, :cond_239

    .line 1344
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->invalidate()V

    .line 1348
    :cond_239
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1Label:Landroid/widget/TextView;

    if-eqz v5, :cond_403

    const-string v4, "\u0418\u0437\u0431\u0440\u0430\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v8, "Selected muscles"

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_245
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->ring1:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    if-eqz v5, :cond_40d

    move v4, v2

    :goto_24d
    const/4 v5, 0x1

    if-eqz v3, :cond_414

    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_414

    const/4 v2, 0x1

    :goto_256
    invoke-virtual {v6, v4, v5, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->set(IZZ)V

    .line 1351
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2:Lcom/isaigu/gymapp/ai/FocusBoard$Ring;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-eqz v3, :cond_417

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_417

    const/4 v2, 0x1

    :goto_267
    invoke-virtual {v4, v5, v7, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->set(IZZ)V

    .line 1352
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->ring2Steps:Landroid/view/View;

    if-eqz v7, :cond_41a

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_270
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1353
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->lockKey:Landroid/widget/ImageView;

    if-eqz v7, :cond_41f

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_279
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1354
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->syncKey:Landroid/widget/TextView;

    if-eqz v7, :cond_424

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_282
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1355
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

    .line 1356
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

    .line 1357
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    if-eqz v7, :cond_429

    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441 2"

    const-string v5, "Impulse 2"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2c9
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1358
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Title:Landroid/widget/TextView;

    if-eqz v7, :cond_433

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_2d2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1359
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

    .line 1360
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->imp2Val:Landroid/widget/TextView;

    if-eqz v7, :cond_437

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_2f7
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1361
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

    .line 1362
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->hz2Row:Landroid/view/View;

    if-eqz v7, :cond_43b

    const/4 v2, 0x0

    :goto_31b
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1364
    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v5, v2

    .line 1365
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_43e

    const/4 v2, 0x1

    move v4, v2

    .line 1366
    :goto_32e
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1367
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_442

    const-string v2, "on"

    :goto_33d
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v4, :cond_446

    const-string v2, "m"

    :goto_345
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1368
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_380

    .line 1369
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1370
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v7, :cond_44a

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_35e
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1371
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v7, :cond_44e

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    move-object/from16 v0, v18

    invoke-static {v0, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    :goto_36d
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v7, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1373
    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->waveKey:Landroid/widget/TextView;

    if-eqz v4, :cond_456

    const v2, 0x3eb33333    # 0.35f

    :goto_37d
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1375
    :cond_380
    if-eqz v3, :cond_45a

    const/4 v2, 0x1

    move v3, v2

    .line 1376
    :goto_384
    sget v2, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    if-eq v3, v2, :cond_4

    .line 1377
    sput v3, Lcom/isaigu/gymapp/ai/FocusBoard;->shownStart:I

    .line 1378
    const/4 v2, 0x1

    if-ne v3, v2, :cond_45e

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1379
    :goto_38f
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const v10, 0x3df5c28f    # 0.12f

    .line 1380
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

    .line 1381
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1382
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

    .line 1383
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->startKey:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    invoke-static {v4, v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1384
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->startIcon:Landroid/widget/ImageView;

    new-instance v5, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v2, 0x1

    if-ne v3, v2, :cond_462

    const/16 v2, 0x8

    :goto_3df
    const/4 v6, -0x1

    invoke-direct {v5, v2, v6}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1385
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->startLabel:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-ne v3, v2, :cond_465

    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v3, "Pause"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3f3
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3f6
    .catch Ljava/lang/Throwable; {:try_start_223 .. :try_end_3f6} :catch_82

    goto/16 :goto_4

    .line 1337
    :cond_3f8
    :try_start_3f8
    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;
    :try_end_3fa
    .catch Ljava/lang/Throwable; {:try_start_3f8 .. :try_end_3fa} :catch_3fc

    goto/16 :goto_221

    .line 1338
    :catch_3fc
    move-exception v4

    .line 1339
    :try_start_3fd
    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_223

    .line 1349
    :cond_403
    const-string v4, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 1"

    const-string v8, "Intensity 1"

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_245

    .line 1350
    :cond_40d
    move-object/from16 v0, v20

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    move v4, v2

    goto/16 :goto_24d

    :cond_414
    const/4 v2, 0x0

    goto/16 :goto_256

    .line 1351
    :cond_417
    const/4 v2, 0x0

    goto/16 :goto_267

    .line 1352
    :cond_41a
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_270

    .line 1353
    :cond_41f
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_279

    .line 1354
    :cond_424
    const v2, 0x3eb33333    # 0.35f

    goto/16 :goto_282

    .line 1357
    :cond_429
    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v5, "Pause"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c9

    .line 1358
    :cond_433
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_2d2

    .line 1360
    :cond_437
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_2f7

    .line 1362
    :cond_43b
    const/4 v2, 0x4

    goto/16 :goto_31b

    .line 1365
    :cond_43e
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_32e

    .line 1367
    :cond_442
    const-string v2, "off"

    goto/16 :goto_33d

    :cond_446
    const-string v2, ""

    goto/16 :goto_345

    .line 1370
    :cond_44a
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_35e

    .line 1371
    :cond_44e
    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto/16 :goto_36d

    .line 1373
    :cond_456
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_37d

    .line 1375
    :cond_45a
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_384

    .line 1378
    :cond_45e
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto/16 :goto_38f

    .line 1384
    :cond_462
    const/4 v2, 0x7

    goto/16 :goto_3df

    .line 1385
    :cond_465
    const-string v2, "\u0421\u0442\u0430\u0440\u0442"

    const-string v3, "Start"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_46c
    .catch Ljava/lang/Throwable; {:try_start_3fd .. :try_end_46c} :catch_82

    move-result-object v2

    goto :goto_3f3

    :cond_46e
    move v4, v5

    goto/16 :goto_15d
.end method

.method static remove(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1671
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    .line 1672
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

    .line 1691
    :cond_1f
    :goto_1f
    return-void

    .line 1675
    :cond_20
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_28

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 1676
    :cond_28
    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->removeTrainItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 1677
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsChanged()V

    .line 1678
    if-eqz v0, :cond_37

    .line 1679
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->removeTrainingUser(Ljava/lang/String;)V

    .line 1681
    :cond_37
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-ne v0, p0, :cond_41

    .line 1682
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1683
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->sexOf:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1685
    :cond_41
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 1686
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->tick()V

    .line 1687
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4b} :catch_4c

    goto :goto_1f

    .line 1688
    :catch_4c
    move-exception v0

    .line 1689
    const-string v1, "FocusBoard.remove"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method private static ringColumn(Landroid/content/Context;Lcom/isaigu/gymapp/ai/FocusBoard$Ring;Landroid/widget/TextView;I[Landroid/view/View;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, -0x2

    .line 1138
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1140
    const/16 v1, 0x11

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1141
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1144
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1145
    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/ai/FocusBoard;->stepper(Landroid/content/Context;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1147
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1149
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1150
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1151
    if-eqz p4, :cond_40

    .line 1152
    aput-object v1, p4, v6

    .line 1154
    :cond_40
    return-object v0
.end method

.method private static ringLevel(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 479
    invoke-static {p0, p1, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v2

    .line 480
    const/4 v0, -0x1

    .line 481
    :goto_6
    if-eqz v2, :cond_1a

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 482
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->marked(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 483
    aget v3, v2, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 481
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 486
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
    .line 323
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 324
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

    .line 302
    if-ltz p0, :cond_7

    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    if-nez v0, :cond_9

    :cond_7
    move-object v0, v2

    .line 319
    :goto_8
    return-object v0

    .line 305
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 306
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_17

    move-object v0, v2

    .line 307
    goto :goto_8

    .line 309
    :cond_17
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 310
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2f

    .line 311
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 312
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p0, :cond_2c

    move-object v0, v3

    .line 313
    goto :goto_8

    .line 310
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 316
    :cond_2f
    if-eqz p1, :cond_34

    .line 317
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_34
    move-object v0, v2

    .line 319
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

    .line 907
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

    .line 908
    if-eqz v0, :cond_19

    .line 913
    :goto_17
    return-object v0

    .line 911
    :catch_18
    move-exception v0

    .line 913
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

    .line 919
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    if-eqz v1, :cond_29

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    const-string v2, "recyclerView"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 920
    :goto_d
    if-eqz v1, :cond_13

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsAdapter(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 921
    :cond_13
    if-eqz v0, :cond_28

    .line 922
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

    .line 927
    :cond_28
    :goto_28
    return-void

    :cond_29
    move-object v1, v0

    .line 919
    goto :goto_d

    .line 924
    :catch_2b
    move-exception v0

    .line 925
    const-string v1, "FocusBoard.rowsChanged"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method private static rowsMode(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 235
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

    .line 237
    :goto_f
    return v0

    .line 236
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private static running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .prologue
    .line 1393
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

    .line 559
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
    .line 424
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 425
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 426
    if-nez v1, :cond_b

    .line 431
    :goto_a
    return-void

    .line 429
    :cond_b
    const/4 v2, 0x1

    if-ne p0, v2, :cond_16

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 430
    :goto_10
    sub-int v0, p1, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->step(II)V

    goto :goto_a

    .line 429
    :cond_16
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->ringLevel(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v0

    goto :goto_10
.end method

.method private static startLoop()V
    .registers 2

    .prologue
    .line 1219
    sget-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    if-nez v0, :cond_e

    .line 1220
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/FocusBoard;->looping:Z

    .line 1221
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->REFRESH:Lcom/isaigu/gymapp/ai/FocusBoard$Refresh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1223
    :cond_e
    return-void
.end method

.method static step(II)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 376
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 377
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 378
    if-eqz v2, :cond_d

    if-nez p1, :cond_e

    .line 420
    :cond_d
    :goto_d
    return-void

    .line 381
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

    .line 383
    packed-switch p0, :pswitch_data_6c

    goto :goto_d

    .line 385
    :pswitch_1d
    :try_start_1d
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_2b

    move-result v0

    if-eqz v0, :cond_27

    .line 419
    :goto_23
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto :goto_d

    .line 388
    :cond_27
    :try_start_27
    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->main(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_23

    .line 416
    :catch_2b
    move-exception v0

    .line 417
    const-string v1, "FocusBoard.step"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 391
    :pswitch_32
    :try_start_32
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 392
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u223f."

    const-string v1, "Turn the second impulse on with \u223f."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    goto :goto_d

    .line 395
    :cond_44
    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->pause(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    goto :goto_23

    .line 398
    :pswitch_48
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addHz(I)V

    goto :goto_23

    .line 401
    :pswitch_4c
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 402
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u223f."

    const-string v1, "Turn the second impulse on with \u223f."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V

    goto :goto_d

    .line 405
    :cond_5e
    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addPauseHz(I)V

    goto :goto_23

    .line 408
    :pswitch_62
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->time(ZI)V

    goto :goto_d

    .line 411
    :pswitch_67
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->time(ZI)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_6b} :catch_2b

    goto :goto_d

    .line 383
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

    .line 1159
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1160
    const-string v1, "\u2212"

    const/4 v2, -0x1

    invoke-static {p0, v1, p1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1161
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1162
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    const-string v1, "+"

    invoke-static {p0, v1, p1, v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->key(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1164
    return-object v0
.end method

.method public static sync(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 134
    if-eqz p0, :cond_8

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 137
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->tick()V

    .line 138
    return-void
.end method

.method private static tap(Landroid/view/View;)V
    .registers 10

    .prologue
    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v5, v2, v3

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v6, v2, v3

    .line 353
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 354
    const-wide/16 v2, 0x3c

    add-long/2addr v2, v0

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 356
    :try_start_26
    invoke-virtual {p0, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 357
    invoke-virtual {p0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_33

    .line 359
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 360
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 362
    return-void

    .line 359
    :catchall_33
    move-exception v0

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 360
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 361
    throw v0
.end method

.method private static textOf(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1510
    if-eqz p0, :cond_17

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1511
    :goto_6
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_16

    .line 1512
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1513
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1515
    :cond_16
    return-object p2

    .line 1510
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

    .line 143
    :try_start_4
    sget-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->root:Landroid/view/View;

    .line 144
    if-nez v3, :cond_9

    .line 179
    :cond_8
    :goto_8
    return-void

    .line 147
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 148
    const-string v5, "leftLayout"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_8

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->isTrainingPage()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 152
    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->left:Landroid/view/View;

    if-ne v3, v5, :cond_2b

    sget-object v5, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2b

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    if-eq v5, v6, :cond_2e

    .line 153
    :cond_2b
    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/FocusBoard;->wrap(Landroid/content/Context;Landroid/view/View;)V

    .line 155
    :cond_2e
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 156
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->engineFree()Z

    move-result v6

    .line 157
    if-eqz v6, :cond_ac

    if-lez v5, :cond_ac

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->rowsMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_ac

    move v3, v2

    .line 158
    :goto_45
    if-eqz v3, :cond_ae

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->wantUpright(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_ae

    :goto_4d
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->orient(Z)V

    .line 159
    if-eqz v3, :cond_b0

    .line 160
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-nez v2, :cond_85

    .line 161
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/FocusBoard;->build(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    .line 162
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 165
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

    .line 167
    :cond_85
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->startLoop()V

    .line 172
    :cond_8e
    :goto_8e
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 173
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    if-nez v3, :cond_bc

    if-eqz v6, :cond_bc

    if-lez v5, :cond_bc

    :goto_9a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_a2} :catch_a4

    goto/16 :goto_8

    .line 176
    :catch_a4
    move-exception v0

    .line 177
    const-string v1, "FocusBoard.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_ac
    move v3, v0

    .line 157
    goto :goto_45

    :cond_ae
    move v2, v0

    .line 158
    goto :goto_4d

    .line 169
    :cond_b0
    :try_start_b0
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    if-eqz v2, :cond_8e

    .line 170
    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_bb} :catch_a4

    goto :goto_8e

    :cond_bc
    move v0, v1

    .line 173
    goto :goto_9a
.end method

.method static time(ZI)V
    .registers 4

    .prologue
    .line 366
    if-eqz p0, :cond_1b

    const-string v0, "paulsestop"

    :goto_4
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_21

    if-lez p1, :cond_1e

    const-string v0, "btnIncrease"

    :goto_e
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 368
    :goto_12
    if-eqz v0, :cond_17

    .line 369
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 371
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->later()V

    .line 372
    return-void

    .line 366
    :cond_1b
    const-string v0, "paulsecontinue"

    goto :goto_4

    .line 367
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

    .line 612
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 613
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v0, v2, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 616
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 617
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 618
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 619
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    .line 620
    sget-object v4, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 621
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 624
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

    .line 625
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

    .line 626
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

    .line 627
    invoke-static {v4, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v0

    move v4, v2

    .line 628
    :goto_a6
    const/4 v0, 0x4

    if-ge v4, v0, :cond_113

    .line 629
    aget-object v0, v6, v4

    const/high16 v7, 0x41580000    # 13.5f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 630
    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 631
    const v0, 0x3d23d70a    # 0.04f

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 632
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

    .line 633
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 634
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    sget-object v8, Lcom/isaigu/gymapp/ai/FocusBoard;->MODE_IDS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-direct {v0, v8}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 636
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->modeTabs:[Landroid/widget/TextView;

    aput-object v7, v0, v4

    .line 637
    if-eqz p1, :cond_107

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_fa
    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_a6

    .line 632
    :cond_101
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_c2

    :cond_104
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_d0

    .line 638
    :cond_107
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42d00000    # 104.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v0, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_fa

    .line 640
    :cond_113
    if-nez p1, :cond_12d

    .line 641
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 643
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 644
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 645
    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    :cond_12d
    const-string v4, "\u2014"

    if-eqz p1, :cond_267

    const/high16 v0, 0x41b00000    # 22.0f

    :goto_133
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v0, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    .line 649
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v4, v2, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 650
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 651
    const-string v0, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v4, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    .line 652
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 653
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->battText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 655
    const-string v0, "\u2699"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v7, 0x28

    invoke-static {p0, v0, v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 656
    new-instance v4, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;

    const-string v6, "setting"

    invoke-direct {v4, v6}, Lcom/isaigu/gymapp/ai/FocusBoard$PressRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    const-string v4, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v6, "Client parameters"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 658
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 660
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 661
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 662
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 663
    new-instance v6, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    if-nez p1, :cond_26b

    move v0, v1

    :goto_1a4
    invoke-direct {v6, v7, v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Turn;-><init>(IZ)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 664
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, v0

    .line 665
    if-eqz p1, :cond_26e

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 666
    :goto_1b9
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 665
    invoke-static {v0, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 668
    new-instance v0, Lcom/isaigu/gymapp/ai/FocusBoard$TurnClick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$TurnClick;-><init>()V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    if-eqz p1, :cond_27c

    const-string v0, "\u0425\u043e\u0440\u0438\u0437\u043e\u043d\u0442\u0430\u043b\u043d\u043e"

    const-string v2, "Landscape"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d7
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 670
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 671
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v0, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 672
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 673
    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    if-eqz p1, :cond_286

    const-string v0, "\u2630"

    :goto_1fb
    const/high16 v2, 0x41580000    # 13.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 676
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 677
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

    .line 678
    const-string v2, "\u0420\u0435\u0434\u043e\u0432\u0435"

    const-string v4, "Rows"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 679
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 680
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

    .line 682
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 683
    new-instance v2, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;-><init>(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 686
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 687
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    if-nez p1, :cond_2a3

    move-object v0, v3

    .line 697
    :goto_266
    return-object v0

    .line 648
    :cond_267
    const/high16 v0, 0x41c00000    # 24.0f

    goto/16 :goto_133

    :cond_26b
    move v0, v2

    .line 663
    goto/16 :goto_1a4

    .line 666
    :cond_26e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v0, v2, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_1b9

    .line 669
    :cond_27c
    const-string v0, "\u0418\u0437\u043f\u0440\u0430\u0432\u0435\u043d\u043e"

    const-string v2, "Upright"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d7

    .line 675
    :cond_286
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

    goto/16 :goto_1fb

    .line 691
    :cond_2a3
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 692
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 695
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 696
    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_266
.end method

.method private static wantUpright(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 800
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

    .line 802
    :goto_f
    return v0

    .line 801
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

    .line 183
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;

    .line 184
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->clientRow:Landroid/widget/LinearLayout;

    .line 185
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;

    .line 186
    sput-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 187
    sput-object p1, Lcom/isaigu/gymapp/ai/FocusBoard;->left:Landroid/view/View;

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1d

    .line 222
    :goto_1c
    return-void

    .line 191
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 192
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_df

    const-string v1, "xems_focus_frame"

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 193
    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    .line 194
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 195
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    :goto_46
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$Shape;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Shape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 209
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

    .line 210
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 211
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

    .line 212
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 213
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 215
    sget-object v0, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$RowsClick;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 218
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 219
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 220
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    sget-object v1, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/isaigu/gymapp/ai/FocusBoard;->pill:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1c

    .line 198
    :cond_df
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 201
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 202
    const-string v4, "xems_focus_frame"

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 203
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 206
    sput-object v3, Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;

    goto/16 :goto_46
.end method
