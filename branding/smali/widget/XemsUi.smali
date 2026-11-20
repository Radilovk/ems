.class public final Lcom/isaigu/gymapp/widget/XemsUi;
.super Ljava/lang/Object;
.source "XemsUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;,
        Lcom/isaigu/gymapp/widget/XemsUi$OnStep;,
        Lcom/isaigu/gymapp/widget/XemsUi$Stepper;,
        Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;,
        Lcom/isaigu/gymapp/widget/XemsUi$Shell;,
        Lcom/isaigu/gymapp/widget/XemsUi$AccentPick;
    }
.end annotation


# static fields
.field public static ACCENT:I = 0x0

.field public static final ACCENT_BTN:I = 0x1

.field public static ACCENT_DARK:I = 0x0

.field private static final ACCENT_PREFS:Ljava/lang/String; = "setting_share"

.field private static final ACCENT_ROW:Ljava/lang/String; = "xems_accent_row"

.field public static AMBER:I = 0x0

.field public static BG:I = 0x0

.field public static CARD:I = 0x0

.field public static DANGER:I = 0x0

.field public static final DANGER_BTN:I = 0x4

.field public static ELEVATED:I = 0x0

.field public static final GHOST:I = 0x3

.field public static GO:I = 0x0

.field public static GO_TEXT:I = 0x0

.field public static HINT:I = 0x0

.field private static final K_MAGENTA:Ljava/lang/String; = "accent_magenta"

.field public static final MAGENTA_MCC:I = 0x3e7

.field public static MUTED:I = 0x0

.field public static ON_ACCENT:I = 0x0

.field public static ORANGE:I = 0x0

.field public static PAUSE:I = 0x0

.field public static final PRIMARY:I = 0x0

.field private static final SCROLL_TAG:Ljava/lang/String; = "xems_scroll_content"

.field public static final SECONDARY:I = 0x2

.field public static STROKE:I

.field public static SURFACE:I

.field public static TEXT:I

.field public static dark:Z

.field public static forcedDensity:F

.field public static forcedScaled:F

.field private static final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const v1, -0xa4fdf

    .line 39
    const v0, -0xf9f4ec

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    .line 40
    const v0, -0xf4e9dd

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    .line 41
    const v0, -0xefdfd1

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    .line 42
    const v0, -0xead6c5

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ELEVATED:I

    .line 43
    const v0, -0xe3c5ae

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    .line 44
    const v0, -0x190c01

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 45
    const v0, -0x6c503a

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 46
    const v0, -0xa1856e

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    .line 47
    const v0, -0xc82f15

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 48
    const v0, -0xf3654a

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT_DARK:I

    .line 49
    const v0, -0xdd3aa2

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 50
    const v0, -0xb52180

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 51
    sput v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 52
    const v0, -0x10bbbc

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 53
    const v0, -0xa61f5

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    .line 54
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    .line 56
    sput v1, Lcom/isaigu/gymapp/widget/XemsUi;->PAUSE:I

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsUi;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accentAttach(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 752
    if-eqz p0, :cond_8

    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->isMagenta(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 762
    :cond_8
    :goto_8
    return-void

    .line 755
    :cond_9
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 756
    const/4 v1, 0x0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 757
    const/16 v1, 0x3e7

    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    .line 758
    invoke-virtual {p0, v0}, Landroid/app/Activity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_18} :catch_19

    goto :goto_8

    .line 759
    :catch_19
    move-exception v0

    .line 760
    const-string v1, "XemsUi.accentAttach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public static accentBind(Landroid/app/Activity;Landroid/view/View;)V
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 810
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 845
    :cond_6
    :goto_6
    return-void

    .line 813
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "theme_switch_button"

    const-string v4, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 814
    if-eqz v0, :cond_d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 815
    :goto_1d
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 818
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 819
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 820
    const-string v4, "xems_accent_row"

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 821
    if-eqz v4, :cond_4a

    .line 822
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 824
    :cond_4a
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 825
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->isMagenta(Landroid/content/Context;)Z

    move-result v4

    .line 826
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 827
    const-string v6, "xems_accent_row"

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 828
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 829
    const-string v6, "\u0426\u0432\u044f\u0442:"

    const-string v7, "Colour:"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41d00000    # 26.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v9, 0x0

    invoke-static {p0, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 830
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 831
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 832
    const-string v6, "\u0426\u0438\u0430\u043d"

    const-string v7, "Cyan"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, -0xc82f15

    if-nez v4, :cond_db

    :goto_8c
    const/4 v3, 0x0

    invoke-static {p0, v6, v7, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->swatch(Landroid/app/Activity;Ljava/lang/String;IZZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 833
    const-string v2, "\u041c\u0430\u0433\u0435\u043d\u0442\u0430"

    const-string v3, "Magenta"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0x19af51

    const/4 v6, 0x1

    invoke-static {p0, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->swatch(Landroid/app/Activity;Ljava/lang/String;IZZ)Landroid/view/View;

    move-result-object v2

    .line 834
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v6, -0x2

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 836
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 837
    invoke-virtual {v5, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 840
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 841
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v5, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_ce} :catch_d0

    goto/16 :goto_6

    .line 842
    :catch_d0
    move-exception v0

    .line 843
    const-string v1, "XemsUi.accentBind"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 814
    :cond_d8
    const/4 v0, 0x0

    goto/16 :goto_1d

    :cond_db
    move v2, v3

    .line 832
    goto :goto_8c
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsUi;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/View;Z)V
    .registers 2

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->styleSwitch(Landroid/view/View;Z)V

    return-void
.end method

.method public static addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v1, -0x2

    .line 397
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 399
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 400
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    return-void
.end method

.method public static alpha(II)I
    .registers 5

    .prologue
    .line 117
    const v0, 0xffffff

    and-int/2addr v0, p0

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 8

    .prologue
    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v4, 0x40a00000    # 5.0f

    .line 567
    const/high16 v0, 0x41480000    # 12.5f

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 568
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 569
    const/16 v1, 0x26

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x77

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    return-object v0
.end method

.method public static button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 11

    .prologue
    const/high16 v7, -0x1000000

    const/high16 v4, 0x41b00000    # 22.0f

    const/high16 v5, 0x41500000    # 13.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    .line 312
    const/high16 v0, 0x41800000    # 16.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x1

    invoke-static {p0, p1, v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 313
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 314
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 315
    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v4, v0

    .line 318
    packed-switch p2, :pswitch_data_aa

    .line 339
    :pswitch_34
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v4, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 340
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 343
    :goto_42
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    invoke-static {v1, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 346
    return-object v3

    .line 320
    :pswitch_50
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const v1, 0x3df5c28f    # 0.12f

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const v5, 0x3e6147ae    # 0.22f

    invoke-static {v1, v7, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v1

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->gradient(IIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 321
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_7c

    move-object v0, v1

    .line 322
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v7, 0xaa

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_7c
    move v0, v2

    .line 325
    goto :goto_42

    .line 327
    :pswitch_7e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const v1, 0x3da3d70a    # 0.08f

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-static {v1, v7, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v1

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->gradient(IIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    move v0, v2

    .line 329
    goto :goto_42

    .line 331
    :pswitch_95
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT_DARK:I

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->gradient(IIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 332
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    goto :goto_42

    .line 335
    :pswitch_a0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 336
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_42

    .line 318
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_50
        :pswitch_95
        :pswitch_34
        :pswitch_a0
        :pswitch_7e
    .end packed-switch
.end method

.method public static card(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v3, 0x41800000    # 16.0f

    .line 254
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 255
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 257
    return-object v0
.end method

.method public static chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;
    .registers 9

    .prologue
    const/high16 v4, 0x41100000    # 9.0f

    const/high16 v3, 0x41600000    # 14.0f

    .line 373
    if-eqz p2, :cond_4f

    move v0, p3

    :goto_7
    invoke-static {p0, p1, v3, v0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 374
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 375
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 376
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, v0

    .line 377
    if-eqz p2, :cond_52

    .line 378
    const/16 v0, 0x2a

    invoke-static {p3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/16 v3, 0xcc

    invoke-static {p3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 380
    :goto_42
    if-eqz p2, :cond_61

    :goto_44
    invoke-static {v0, p3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 382
    return-object v1

    .line 373
    :cond_4f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_7

    .line 379
    :cond_52
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_42

    .line 380
    :cond_61
    sget p3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_44
.end method

.method public static chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 387
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 388
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 389
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 390
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 392
    aput-object v1, p1, v2

    .line 393
    return-object v0
.end method

.method public static color(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 110
    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_19

    move-result p2

    .line 112
    :cond_18
    :goto_18
    return p2

    .line 111
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method public static dp(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 145
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->forcedDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    .line 146
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->forcedDensity:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 148
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 148
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_e
.end method

.method public static enter(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 607
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 608
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 609
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 610
    return-void
.end method

.method public static fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 714
    iget-object v0, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 715
    if-nez v3, :cond_a

    .line 726
    :goto_9
    return-void

    .line 718
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 719
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v2, v0

    .line 720
    iget-object v0, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 721
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v1, :cond_49

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 722
    :goto_31
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 723
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 722
    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 724
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 725
    if-le v0, v2, :cond_50

    move v0, v2

    :goto_45
    invoke-virtual {v3, v1, v0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_9

    .line 721
    :cond_49
    const/high16 v1, 0x44020000    # 520.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    goto :goto_31

    .line 725
    :cond_50
    const/4 v0, -0x2

    goto :goto_45
.end method

.method public static fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 702
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 703
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 704
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 705
    if-eqz v1, :cond_29

    .line 706
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 707
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 708
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 710
    :cond_29
    return-void
.end method

.method public static glass(Landroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;
    .registers 10

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 270
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-nez v0, :cond_13

    .line 271
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 277
    :goto_12
    return-object v0

    .line 273
    :cond_13
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const v6, 0x3d75c28f    # 0.06f

    .line 274
    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 275
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 276
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_12
.end method

.method public static glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;
    .registers 11

    .prologue
    const/16 v1, 0xff

    const/4 v7, 0x0

    .line 282
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 283
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_3c

    const/16 v0, 0x55

    :goto_10
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    aput v0, v4, v7

    const/4 v5, 0x1

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_3e

    move v0, p1

    .line 284
    :goto_1c
    sget-boolean v6, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v6, :cond_22

    const/16 v1, 0x22

    .line 283
    :cond_22
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    aput v0, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 285
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 286
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    sget-boolean v1, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v1, :cond_48

    :goto_38
    invoke-virtual {v2, v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 287
    return-object v2

    :cond_3c
    move v0, v1

    .line 283
    goto :goto_10

    :cond_3e
    const/high16 v0, -0x1000000

    const v6, 0x3e19999a    # 0.15f

    invoke-static {p1, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    goto :goto_1c

    .line 286
    :cond_48
    invoke-static {p1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result p1

    goto :goto_38
.end method

.method private static gradient(IIF)Landroid/graphics/drawable/GradientDrawable;
    .registers 7

    .prologue
    .line 350
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 351
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 352
    return-object v0
.end method

.method public static haptic(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 600
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_5

    .line 603
    :goto_4
    return-void

    .line 601
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method public static horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 206
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 208
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 209
    return-object v0
.end method

.method public static iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 357
    int-to-float v0, p4

    const v1, 0x3ed70a3d    # 0.42f

    mul-float/2addr v0, v1

    invoke-static {p0, p1, v0, p3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 358
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 359
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 360
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 361
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 362
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    if-eq p2, v2, :cond_22

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    if-ne p2, v2, :cond_2d

    .line 363
    :cond_22
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 365
    :cond_2d
    int-to-float v2, p4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, p3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v2, p4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v3, p4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 368
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 84
    if-nez p0, :cond_3

    .line 105
    :goto_2
    return-void

    .line 87
    :cond_3
    const-string v0, "bg_screen"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    .line 88
    const-string v0, "bg_card"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    .line 89
    const-string v0, "bg_surface"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    .line 90
    const-string v0, "bg_elevated"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ELEVATED:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ELEVATED:I

    .line 91
    const-string v0, "card_stroke"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    .line 92
    const-string v0, "text_primary"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 93
    const-string v0, "text_secondary"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 94
    const-string v0, "text_hint"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    .line 95
    const-string v0, "accent_primary"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 96
    const-string v0, "accent_primary_dark"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT_DARK:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT_DARK:I

    .line 97
    const-string v0, "impulse_accent"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 98
    const-string v0, "ma_badge_active_bg"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 99
    const-string v0, "ma_badge_pause_bg"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 100
    const-string v0, "pause_accent"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 101
    const-string v0, "light_orange_exister"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    .line 102
    const-string v0, "text_on_accent"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    .line 103
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->PAUSE:I

    .line 104
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->luminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_bb

    const/4 v0, 0x1

    :goto_b7
    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    goto/16 :goto_2

    :cond_bb
    const/4 v0, 0x0

    goto :goto_b7
.end method

.method public static isMagenta(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 739
    :try_start_1
    const-string v1, "setting_share"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "accent_magenta"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_10

    move-result v0

    .line 741
    :goto_f
    return v0

    .line 740
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    const/high16 v0, 0x41380000    # 11.5f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p1, v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 192
    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 193
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 194
    return-object v0
.end method

.method static luminance(I)D
    .registers 7

    .prologue
    .line 128
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

.method public static matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 291
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 293
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 294
    return-object v0
.end method

.method public static mix(IIF)I
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 121
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    sub-float v1, v3, p2

    mul-float/2addr v0, v1

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 122
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    sub-float v2, v3, p2

    mul-float/2addr v1, v2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 123
    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    sub-float/2addr v3, p2

    mul-float/2addr v2, v3

    and-int/lit16 v3, p1, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 124
    const/high16 v3, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method public static pressable(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 584
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsUi$4;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsUi$4;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 596
    return-void
.end method

.method public static repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V
    .registers 4

    .prologue
    .line 475
    if-nez p1, :cond_3

    .line 511
    :goto_2
    return-void

    .line 478
    :cond_3
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsUi$2;

    invoke-direct {v0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsUi$2;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2
.end method

.method public static restartApp(Landroid/app/Activity;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 773
    :try_start_1
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->getAllConnectedDevice()Ljava/util/List;

    move-result-object v3

    move v2, v1

    .line 774
    :goto_a
    if-eqz v3, :cond_24

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    .line 775
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v4, v0}, Lcom/clj/fastble/BleManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_23

    .line 774
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 777
    :catch_23
    move-exception v0

    .line 779
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 780
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 781
    if-nez v3, :cond_3a

    .line 782
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 805
    :goto_39
    return-void

    .line 785
    :cond_3a
    const v0, 0x10008000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 786
    const/16 v4, 0x5e17

    const/high16 v5, 0x10000000

    .line 788
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v0, v6, :cond_6b

    const/high16 v0, 0x4000000

    :goto_4c
    or-int/2addr v0, v5

    .line 786
    invoke-static {v2, v4, v3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 789
    const-string v0, "alarm"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 790
    if-nez v0, :cond_6d

    .line 791
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_5e} :catch_5f

    goto :goto_39

    .line 798
    :catch_5f
    move-exception v0

    .line 799
    const-string v1, "XemsUi.restartApp"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 801
    :try_start_65
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_39

    .line 802
    :catch_69
    move-exception v0

    goto :goto_39

    :cond_6b
    move v0, v1

    .line 788
    goto :goto_4c

    .line 794
    :cond_6d
    const/4 v2, 0x1

    :try_start_6e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x258

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 795
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 796
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 797
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_86} :catch_5f

    goto :goto_39
.end method

.method public static ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 166
    const/4 v0, -0x1

    invoke-static {v0, p2, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 167
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    const/16 v2, 0x40

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public static rounded(IFII)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .prologue
    .line 155
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 156
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 157
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 158
    if-lez p3, :cond_10

    .line 159
    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 161
    :cond_10
    return-object v0
.end method

.method public static scrollContent(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 220
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 221
    const/4 v0, 0x0

    .line 250
    :goto_9
    return-object v0

    .line 223
    :cond_a
    check-cast p1, Landroid/view/ViewGroup;

    .line 224
    const-string v0, "xems_scroll_content"

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 225
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_19

    .line 226
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_9

    .line 228
    :cond_19
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 230
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 231
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 232
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 233
    const-string v0, "xems_scroll_content"

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 234
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v5, v0, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 235
    :goto_40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5f

    .line 236
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 238
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 239
    instance-of v4, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_59

    :goto_55
    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_40

    .line 240
    :cond_59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_55

    .line 243
    :cond_5f
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_73

    move-object v0, p1

    .line 246
    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 248
    :cond_73
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 250
    goto :goto_9
.end method

.method public static segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;
    .registers 16

    .prologue
    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v10, 0x41300000    # 11.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    .line 405
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 406
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v0, v2, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move v0, v1

    .line 408
    :goto_37
    array-length v2, p1

    if-ge v0, v2, :cond_a4

    .line 410
    if-ne v0, p2, :cond_93

    const/4 v2, 0x1

    .line 411
    :goto_3d
    aget-object v5, p1, v0

    const/high16 v6, 0x41700000    # 15.0f

    if-eqz v2, :cond_98

    sget-boolean v3, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v3, :cond_95

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_49
    invoke-static {p0, v5, v6, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 412
    const/16 v3, 0x11

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 413
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 414
    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v6, v3

    .line 415
    if-eqz v2, :cond_9b

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 416
    :goto_74
    if-eqz v2, :cond_a1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_78
    invoke-static {v3, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsUi$1;

    invoke-direct {v2, p3, v0}, Lcom/isaigu/gymapp/widget/XemsUi$1;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_93
    move v2, v1

    .line 410
    goto :goto_3d

    .line 411
    :cond_95
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    goto :goto_49

    :cond_98
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_49

    .line 415
    :cond_9b
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_74

    .line 416
    :cond_a1
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_78

    .line 426
    :cond_a4
    return-object v4
.end method

.method public static setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 575
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    const/16 v1, 0x26

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x77

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    return-void
.end method

.method public static shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 16

    .prologue
    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x42100000    # 36.0f

    const/high16 v8, 0x41b00000    # 22.0f

    const/4 v1, 0x0

    .line 628
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 629
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsUi$Shell;-><init>()V

    .line 630
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    .line 631
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 632
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 633
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 636
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 637
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 638
    const/high16 v0, 0x41a80000    # 21.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, p1, v0, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    .line 639
    if-eqz p2, :cond_1bc

    move-object v0, p2

    :goto_63
    const/high16 v6, 0x41500000    # 13.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v6, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    .line 640
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v1, v6, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 641
    iget-object v6, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz p2, :cond_1c0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c0

    move v0, v1

    :goto_83
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 643
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 644
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    const-string v0, ""

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    .line 646
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 648
    const-string v0, "i"

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v7, 0x24

    invoke-static {p0, v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    .line 649
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 650
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 651
    iget-object v5, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    iget-object v5, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    const-string v0, "\u2715"

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v7, 0x24

    invoke-static {p0, v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    .line 654
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 655
    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 656
    iget-object v5, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/widget/XemsUi$5;

    invoke-direct {v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi$5;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 668
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    .line 669
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 670
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 671
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 672
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 673
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    iget-object v4, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 674
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    .line 677
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 678
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 680
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 681
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_1bb

    .line 683
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 684
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 685
    int-to-float v3, p3

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v4, 0x3f70a3d7    # 0.94f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 686
    const/4 v3, -0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 687
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 688
    const v3, 0x3f19999a    # 0.6f

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 689
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 690
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 692
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->applyTo(Landroid/view/Window;)V

    .line 694
    :cond_1bb
    return-object v2

    .line 639
    :cond_1bc
    const-string v0, ""

    goto/16 :goto_63

    .line 641
    :cond_1c0
    const/16 v0, 0x8

    goto/16 :goto_83
.end method

.method public static sp(Landroid/content/Context;F)F
    .registers 4

    .prologue
    .line 140
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->forcedScaled:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->forcedScaled:F

    mul-float/2addr v0, p1

    :goto_a
    return v0

    .line 141
    :cond_b
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_a
.end method

.method public static spacer(Landroid/content/Context;)Landroid/view/View;
    .registers 6

    .prologue
    .line 304
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 305
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    return-object v0
.end method

.method public static stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 16

    .prologue
    const/4 v6, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v9, 0x11

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v8, 0x0

    .line 449
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 450
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 452
    const-string v0, "\u2212"

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x2c

    invoke-static {p0, v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 453
    const-string v0, "+"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x2c

    invoke-static {p0, v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 454
    const/4 v0, -0x1

    invoke-static {v2, p4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 455
    invoke-static {v3, p4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 456
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 457
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 458
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p1, p3, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 459
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 460
    if-eqz p2, :cond_99

    move-object v0, p2

    :goto_67
    const/high16 v6, 0x41380000    # 11.5f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 461
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 462
    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v8, v6, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 463
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v2, v8, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-direct {v2, v1, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 469
    invoke-virtual {v2, p1, p2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-object v2

    .line 460
    :cond_99
    const-string v0, ""

    goto :goto_67
.end method

.method private static styleSwitch(Landroid/view/View;Z)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 557
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 558
    if-eqz p1, :cond_30

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_9
    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, v3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 560
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 561
    if-eqz p1, :cond_39

    const v1, 0x800005

    :goto_28
    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 562
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    return-void

    .line 558
    :cond_30
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x30

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_9

    .line 561
    :cond_39
    const v1, 0x800003

    goto :goto_28
.end method

.method public static surface(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 8

    .prologue
    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v5, 0x41600000    # 14.0f

    .line 262
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 263
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/16 v4, 0x88

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 265
    return-object v0
.end method

.method private static swatch(Landroid/app/Activity;Ljava/lang/String;IZZ)Landroid/view/View;
    .registers 15

    .prologue
    const/high16 v9, 0x41b00000    # 22.0f

    const/high16 v8, 0x41900000    # 18.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 849
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 850
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 851
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 852
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, v0

    .line 853
    if-eqz p3, :cond_ab

    const/16 v0, 0x2e

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v2, p2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 854
    :goto_3e
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 853
    invoke-static {v0, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 855
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 856
    const/high16 v0, 0x41300000    # 11.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v5, v0

    if-eqz p3, :cond_ba

    const/4 v0, -0x1

    move v2, v0

    :goto_57
    if-eqz p3, :cond_bc

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    :goto_5d
    invoke-static {p2, v5, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 857
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_be

    const-string v0, "\u2713 "

    :goto_7d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_c1

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_8d
    invoke-static {p0, v2, v8, v0, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 859
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 860
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 861
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 862
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsUi$AccentPick;

    invoke-direct {v0, p0, p4}, Lcom/isaigu/gymapp/widget/XemsUi$AccentPick;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 864
    return-object v3

    .line 854
    :cond_ab
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_3e

    :cond_ba
    move v2, v1

    .line 856
    goto :goto_57

    :cond_bc
    move v0, v1

    goto :goto_5d

    .line 858
    :cond_be
    const-string v0, ""

    goto :goto_7d

    :cond_c1
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_8d
.end method

.method private static switchView(Landroid/content/Context;Z)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v5, 0x40400000    # 3.0f

    .line 541
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 542
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 543
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 544
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 545
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 546
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 548
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 549
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v6, v2, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 552
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->styleSwitch(Landroid/view/View;Z)V

    .line 553
    return-object v0
.end method

.method public static text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 173
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->forcedScaled:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_25

    .line 176
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->forcedScaled:F

    mul-float/2addr v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    :goto_16
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 182
    if-eqz p4, :cond_24

    .line 183
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 185
    :cond_24
    return-object v0

    .line 178
    :cond_25
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_16
.end method

.method public static toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x40c00000    # 6.0f

    const/4 v5, 0x0

    .line 515
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 516
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 517
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 518
    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 519
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3e

    .line 520
    const/high16 v2, 0x41480000    # 12.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 521
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 522
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 524
    :cond_3e
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->switchView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    new-array v2, v6, [Z

    aput-boolean p3, v2, v5

    .line 528
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsUi$3;

    invoke-direct {v3, v2, v1, p4}, Lcom/isaigu/gymapp/widget/XemsUi$3;-><init>([ZLandroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    return-object v0
.end method

.method public static vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 200
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 201
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 202
    return-object v0
.end method

.method public static weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 298
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 299
    int-to-float v1, p1

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 300
    return-object v0
.end method
