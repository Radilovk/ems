.class final Lcom/isaigu/gymapp/ai/AiViews;
.super Ljava/lang/Object;
.source "AiViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiViews$Bar;,
        Lcom/isaigu/gymapp/ai/AiViews$Timeline;,
        Lcom/isaigu/gymapp/ai/AiViews$Ring;
    }
.end annotation


# static fields
.field static ACCENT_DARK:I

.field static BG:I

.field static CARD:I

.field static CARD2:I

.field static CYAN:I

.field static DANGER:I

.field static MUTED:I

.field static OK:I

.field static ON_ACCENT:I

.field static ORANGE:I

.field static PINK:I

.field static STROKE:I

.field static TEXT:I

.field static VIOLET:I

.field static WARN:I

.field static dark:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const v0, -0xededee

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    .line 19
    const v0, -0xe1e1e2

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    .line 20
    const v0, -0xd5d5d6

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    .line 21
    const v0, -0xbbbbbc

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    .line 22
    const v0, -0x171718

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    .line 23
    const v0, -0x4f4f50

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 25
    const v0, -0x1ac6cb

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    .line 26
    const v0, -0x48e3e4

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->ACCENT_DARK:I

    .line 28
    const v0, -0x7e387c

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    .line 29
    const v0, -0x994496

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    .line 30
    const v0, -0x657db

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    .line 31
    const v0, -0x10acb0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    .line 32
    const v0, -0xa8400

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    .line 34
    const v0, -0xd26b

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->PINK:I

    .line 35
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiViews;->dark:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alpha(II)I
    .registers 3

    .line 70
    const v0, 0xffffff

    and-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method static applyTheme(Landroid/content/Context;)V
    .registers 5

    .line 40
    if-nez p0, :cond_3

    .line 41
    return-void

    .line 43
    :cond_3
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    const-string v1, "bg_screen"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    .line 44
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const-string v1, "bg_card"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    .line 45
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    const-string v1, "bg_surface"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    .line 46
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const-string v1, "card_stroke"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    .line 47
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const-string v1, "text_primary"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    .line 48
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const-string v1, "text_secondary"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 49
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    const-string v1, "accent_primary"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    .line 50
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->ACCENT_DARK:I

    const-string v1, "accent_primary_dark"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->ACCENT_DARK:I

    .line 51
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    const-string v1, "impulse_accent"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    .line 52
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    const-string v1, "light_green_color"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    .line 53
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    const-string v1, "ma_badge_pause_bg"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    .line 54
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    const-string v1, "pause_accent"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    .line 55
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    const-string v1, "light_orange_exister"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    .line 56
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    const-string v1, "text_on_accent"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    .line 57
    sget p0, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiViews;->luminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    cmpg-double p0, v0, v2

    if-gez p0, :cond_a0

    const/4 p0, 0x1

    goto :goto_a1

    :cond_a0
    const/4 p0, 0x0

    :goto_a1
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiViews;->dark:Z

    .line 58
    return-void
.end method

.method static color(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6

    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 63
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    :cond_18
    return p2

    .line 64
    :catchall_19
    move-exception p0

    .line 65
    return p2
.end method

.method static heatGradient()[I
    .registers 3

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const v2, -0x227cb

    aput v2, v0, v1

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method static luminance(I)D
    .registers 7

    .line 74
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double v0, v0, v2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-double v2, p0

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I
    .registers 2

    .line 83
    sget-object v0, Lcom/isaigu/gymapp/ai/AiViews$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    .line 87
    sget p0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    return p0

    .line 86
    :cond_14
    sget p0, Lcom/isaigu/gymapp/ai/AiViews;->PINK:I

    return p0

    .line 85
    :cond_17
    sget p0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    return p0

    .line 84
    :cond_1a
    sget p0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    return p0
.end method
