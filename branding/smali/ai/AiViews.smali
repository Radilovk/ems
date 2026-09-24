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

    .prologue
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

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alpha(II)I
    .registers 4

    .prologue
    .line 70
    const v0, 0xffffff

    and-int/2addr v0, p0

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static applyTheme(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 40
    if-nez p0, :cond_3

    .line 58
    :goto_2
    return-void

    .line 43
    :cond_3
    const-string v0, "bg_screen"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    .line 44
    const-string v0, "bg_card"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    .line 45
    const-string v0, "bg_surface"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    .line 46
    const-string v0, "card_stroke"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    .line 47
    const-string v0, "text_primary"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    .line 48
    const-string v0, "text_secondary"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 49
    const-string v0, "accent_primary"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    .line 50
    const-string v0, "accent_primary_dark"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->ACCENT_DARK:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->ACCENT_DARK:I

    .line 51
    const-string v0, "impulse_accent"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    .line 52
    const-string v0, "light_green_color"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    .line 53
    const-string v0, "ma_badge_pause_bg"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    .line 54
    const-string v0, "pause_accent"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    .line 55
    const-string v0, "light_orange_exister"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    .line 56
    const-string v0, "text_on_accent"

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    .line 57
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiViews;->luminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a3

    const/4 v0, 0x1

    :goto_9f
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiViews;->dark:Z

    goto/16 :goto_2

    :cond_a3
    const/4 v0, 0x0

    goto :goto_9f
.end method

.method static color(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_19

    move-result p2

    .line 65
    :cond_18
    :goto_18
    return p2

    .line 64
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method static heatGradient()[I
    .registers 3

    .prologue
    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, -0x227cb

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    aput v2, v0, v1

    return-object v0
.end method

.method static luminance(I)D
    .registers 7

    .prologue
    .line 74
    const-wide v0, 0x3fd322d0e5604189L    # 0.299

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x3fe2c8b439581062L    # 0.587

    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x3fbd2f1a9fbe76c9L    # 0.114

    and-int/lit16 v4, p0, 0xff

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I
    .registers 3

    .prologue
    .line 83
    sget-object v0, Lcom/isaigu/gymapp/ai/AiViews$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 87
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    :goto_d
    return v0

    .line 84
    :pswitch_e
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    goto :goto_d

    .line 85
    :pswitch_11
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    goto :goto_d

    .line 86
    :pswitch_14
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->PINK:I

    goto :goto_d

    .line 83
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method
