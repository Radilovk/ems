.class public final Lcom/isaigu/gymapp/widget/XemsUi;
.super Ljava/lang/Object;
.source "XemsUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsUi$Shell;,
        Lcom/isaigu/gymapp/widget/XemsUi$Stepper;,
        Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;,
        Lcom/isaigu/gymapp/widget/XemsUi$OnStep;,
        Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;
    }
.end annotation


# static fields
.field public static ACCENT:I = 0x0

.field public static final ACCENT_BTN:I = 0x1

.field public static ACCENT_DARK:I = 0x0

.field public static AMBER:I = 0x0

.field public static BG:I = 0x0

.field public static CARD:I = 0x0

.field public static DANGER:I = 0x0

.field public static ELEVATED:I = 0x0

.field public static final GHOST:I = 0x3

.field public static GO:I = 0x0

.field public static GO_TEXT:I = 0x0

.field public static HINT:I = 0x0

.field public static MUTED:I = 0x0

.field public static ON_ACCENT:I = 0x0

.field public static ORANGE:I = 0x0

.field public static final PRIMARY:I = 0x0

.field private static final SCROLL_TAG:Ljava/lang/String; = "xems_scroll_content"

.field public static final SECONDARY:I = 0x2

.field public static STROKE:I

.field public static SURFACE:I

.field public static TEXT:I

.field public static dark:Z

.field private static final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    const v0, -0xededee

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    .line 39
    const v0, -0xe1e1e2

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    .line 40
    const v0, -0xd5d5d6

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    .line 41
    const v0, -0xcccccd

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ELEVATED:I

    .line 42
    const v0, -0xbbbbbc

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    .line 43
    const v0, -0x171718

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 44
    const v0, -0x4f4f50

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 45
    const v0, -0x777778

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    .line 46
    const v0, -0x1ac6cb

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 47
    const v0, -0x48e3e4

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT_DARK:I

    .line 48
    const v0, -0xbc5fb9

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 49
    const v0, -0x7e387c

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 50
    const v0, -0x657db

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 51
    const v0, -0x10acb0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 52
    const v0, -0xa8400

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsUi;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsUi;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/View;Z)V
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->styleSwitch(Landroid/view/View;Z)V

    return-void
.end method

.method public static addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 5

    .line 343
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 345
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 346
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    return-void
.end method

.method public static alpha(II)I
    .registers 3

    .line 112
    const v0, 0xffffff

    and-int/2addr p0, v0

    const/16 v0, 0xff

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 7

    .line 513
    const/high16 v0, 0x41480000    # 12.5f

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 514
    const/high16 v0, 0x41300000    # 11.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 515
    const/16 v0, 0x26

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x77

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result p2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-static {v0, v1, p2, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    return-object p1
.end method

.method public static button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 8

    .line 265
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 266
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 267
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p1, v1, v4, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 268
    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 271
    if-eqz p2, :cond_58

    if-eq p2, v2, :cond_4d

    const/4 v1, 0x3

    if-eq p2, v1, :cond_44

    .line 285
    sget p2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-static {p2, v0, v1, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    .line 286
    sget p2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_69

    .line 281
    :cond_44
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 282
    sget p2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 283
    goto :goto_69

    .line 277
    :cond_4d
    sget p0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    sget p2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT_DARK:I

    invoke-static {p0, p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->gradient(IIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    .line 278
    sget p2, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    .line 279
    goto :goto_69

    .line 273
    :cond_58
    sget p0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 p2, -0x1000000

    const v1, 0x3e3851ec    # 0.18f

    invoke-static {p0, p2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result p2

    invoke-static {p0, p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->gradient(IIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    .line 274
    const/4 p2, -0x1

    .line 275
    nop

    .line 289
    :goto_69
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    invoke-static {p0, p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 292
    return-object p1
.end method

.method public static card(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 7

    .line 229
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 230
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, v1, v4, v2, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 232
    return-object v0
.end method

.method public static chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;
    .registers 8

    .line 319
    if-eqz p2, :cond_4

    move v0, p3

    goto :goto_6

    :cond_4
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_6
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, p1, v1, v0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 320
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 321
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 322
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 323
    if-eqz p2, :cond_46

    .line 324
    const/16 v1, 0x2a

    invoke-static {p3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    const/16 v2, 0xcc

    invoke-static {p3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-static {v1, v0, v2, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    goto :goto_54

    .line 325
    :cond_46
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-static {v1, v0, v2, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    .line 326
    :goto_54
    if-eqz p2, :cond_57

    goto :goto_59

    :cond_57
    sget p3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_59
    invoke-static {p0, p3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 328
    return-object p1
.end method

.method public static chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;
    .registers 5

    .line 333
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 334
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 335
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 336
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p0

    .line 337
    invoke-virtual {v0, p0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 338
    aput-object p0, p1, v1

    .line 339
    return-object v0
.end method

.method public static color(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6

    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 105
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    :cond_18
    return p2

    .line 106
    :catchall_19
    move-exception p0

    .line 107
    return p2
.end method

.method public static dp(Landroid/content/Context;F)I
    .registers 3

    .line 127
    nop

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 127
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static enter(Landroid/view/View;)V
    .registers 4

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 554
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 555
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 556
    return-void
.end method

.method public static fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V
    .registers 6

    .line 645
    iget-object v0, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 646
    if-nez v0, :cond_9

    .line 647
    return-void

    .line 649
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 650
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int p2, v1

    .line 651
    iget-object p1, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 652
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v1, :cond_32

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_38

    :cond_32
    const/high16 v1, 0x44020000    # 520.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    .line 653
    :goto_38
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 654
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 653
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 656
    if-le p1, p2, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 p2, -0x2

    :goto_4e
    invoke-virtual {v0, p0, p2}, Landroid/view/Window;->setLayout(II)V

    .line 657
    return-void
.end method

.method private static gradient(IIF)Landroid/graphics/drawable/GradientDrawable;
    .registers 7

    .line 296
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 p0, 0x1

    aput p1, v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 297
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 298
    return-object v0
.end method

.method public static haptic(Landroid/view/View;)V
    .registers 2

    .line 546
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5

    .line 548
    goto :goto_6

    .line 547
    :catchall_5
    move-exception p0

    .line 549
    :goto_6
    return-void
.end method

.method public static horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .line 181
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 182
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 183
    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 184
    return-object v0
.end method

.method public static iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;
    .registers 7

    .line 303
    int-to-float p4, p4

    const v0, 0x3ed70a3d    # 0.42f

    mul-float v0, v0, p4

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 304
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 305
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 306
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 307
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 308
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    if-eq p2, v1, :cond_23

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    if-ne p2, v1, :cond_2e

    .line 309
    :cond_23
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p2

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 311
    :cond_2e
    invoke-static {p0, p4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v0, p3, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, p4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p3

    invoke-static {p0, p4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-direct {p2, p3, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 314
    return-object p1
.end method

.method public static init(Landroid/content/Context;)V
    .registers 5

    .line 80
    if-nez p0, :cond_3

    .line 81
    return-void

    .line 83
    :cond_3
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    const-string v1, "bg_screen"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    .line 84
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const-string v1, "bg_card"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    .line 85
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const-string v1, "bg_surface"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    .line 86
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ELEVATED:I

    const-string v1, "bg_elevated"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ELEVATED:I

    .line 87
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const-string v1, "card_stroke"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    .line 88
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v1, "text_primary"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 89
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const-string v1, "text_secondary"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 90
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const-string v1, "text_hint"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    .line 91
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const-string v1, "accent_primary"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 92
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT_DARK:I

    const-string v1, "accent_primary_dark"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT_DARK:I

    .line 93
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const-string v1, "impulse_accent"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 94
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const-string v1, "ma_badge_active_bg"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 95
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const-string v1, "ma_badge_pause_bg"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 96
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const-string v1, "pause_accent"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 97
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    const-string v1, "light_orange_exister"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    .line 98
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const-string v1, "text_on_accent"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    .line 99
    sget p0, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->luminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    cmpg-double p0, v0, v2

    if-gez p0, :cond_b4

    const/4 p0, 0x1

    goto :goto_b5

    :cond_b4
    const/4 p0, 0x0

    :goto_b5
    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    .line 100
    return-void
.end method

.method public static label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .line 165
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/high16 v1, 0x41380000    # 11.5f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 166
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 167
    const v0, 0x3da3d70a    # 0.08f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 168
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 169
    return-object p1
.end method

.method static luminance(I)D
    .registers 7

    .line 123
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

.method public static matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .line 244
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 246
    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 247
    return-object v0
.end method

.method public static mix(IIF)I
    .registers 7

    .line 116
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float v0, v0, v1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 117
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float v2, v2, v1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 118
    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    mul-float p0, p0, v1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p0, p0

    .line 119
    shl-int/lit8 p1, v0, 0x10

    const/high16 p2, -0x1000000

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static pressable(Landroid/view/View;)V
    .registers 2

    .line 530
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsUi$4;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsUi$4;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 542
    return-void
.end method

.method public static repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V
    .registers 4

    .line 421
    if-nez p1, :cond_3

    .line 422
    return-void

    .line 424
    :cond_3
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsUi$2;

    invoke-direct {v0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsUi$2;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    return-void
.end method

.method public static ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 145
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    .line 146
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const/16 v1, 0x40

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static rounded(IFII)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .line 134
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 135
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 136
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 137
    if-lez p3, :cond_10

    .line 138
    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 140
    :cond_10
    return-object v0
.end method

.method public static scrollContent(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 9

    .line 195
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 196
    const/4 p0, 0x0

    return-object p0

    .line 198
    :cond_6
    check-cast p1, Landroid/view/ViewGroup;

    .line 199
    const-string v0, "xems_scroll_content"

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 200
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_15

    .line 201
    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    .line 203
    :cond_15
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 204
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 205
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 206
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 208
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 209
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v4, v3, v0, v3, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 210
    :goto_3c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v0, -0x2

    const/4 v2, -0x1

    if-lez p0, :cond_5d

    .line 211
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 213
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 214
    instance-of v6, v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_54

    goto :goto_59

    .line 215
    :cond_54
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    :goto_59
    invoke-virtual {v4, p0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    goto :goto_3c

    .line 218
    :cond_5d
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, p0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    instance-of p0, p1, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_71

    .line 221
    move-object p0, p1

    check-cast p0, Landroid/widget/LinearLayout;

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 223
    :cond_71
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    return-object v4
.end method

.method public static segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;
    .registers 14

    .line 351
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 352
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v1, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 354
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_33
    array-length v3, p1

    if-ge v2, v3, :cond_a0

    .line 355
    nop

    .line 356
    if-ne v2, p2, :cond_3b

    const/4 v3, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    .line 357
    :goto_3c
    aget-object v5, p1, v2

    const/high16 v6, 0x41700000    # 15.0f

    if-eqz v3, :cond_45

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    goto :goto_47

    :cond_45
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_47
    invoke-static {p0, v5, v6, v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 358
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 359
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41300000    # 11.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v5, v7, v9, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 360
    const/high16 v6, 0x41980000    # 19.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    .line 361
    if-eqz v3, :cond_79

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT_DARK:I

    invoke-static {v7, v8, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->gradient(IIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    goto :goto_7e

    :cond_79
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 362
    :goto_7e
    if-eqz v3, :cond_83

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    goto :goto_85

    :cond_83
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_85
    invoke-static {v7, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsUi$1;

    invoke-direct {v3, p3, v2}, Lcom/isaigu/gymapp/widget/XemsUi$1;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 372
    :cond_a0
    return-object v0
.end method

.method public static setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V
    .registers 6

    .line 520
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 521
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    const/16 p1, 0x26

    invoke-static {p2, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result p1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x77

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result p2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p1, v1, p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    return-void
.end method

.method public static shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 16

    .line 574
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 575
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsUi$Shell;-><init>()V

    .line 576
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    .line 577
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 578
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 579
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v3, v5, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 581
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 582
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v3, v5, v6, v8, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 583
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 584
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/high16 v8, 0x41a80000    # 21.0f

    invoke-static {p0, p1, v8, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    .line 585
    const-string p1, ""

    if-eqz p2, :cond_62

    move-object v2, p2

    goto :goto_63

    :cond_62
    move-object v2, p1

    :goto_63
    const/high16 v6, 0x41500000    # 13.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v10, 0x0

    invoke-static {p0, v2, v6, v8, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    .line 586
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v10, v6, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 587
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const/16 v6, 0x8

    if-eqz p2, :cond_87

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_87

    const/4 p2, 0x0

    goto :goto_89

    :cond_87
    const/16 p2, 0x8

    :goto_89
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    iget-object p2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 589
    iget-object p2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 590
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, v10, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    sget p2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    .line 592
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 594
    sget p1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget p2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v5, "i"

    const/16 v8, 0x24

    invoke-static {p0, v5, p1, p2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    .line 595
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x42100000    # 36.0f

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {p1, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 596
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 597
    iget-object v5, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    iget-object v5, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v3, v5, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    sget p1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v6, "\u2715"

    invoke-static {p0, v6, p1, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    .line 600
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p2

    invoke-direct {p1, v5, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 601
    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 602
    iget-object v5, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    invoke-virtual {v3, v5, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/widget/XemsUi$5;

    invoke-direct {v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi$5;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 614
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    .line 615
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {p1, v10}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 616
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 617
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 618
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, v5, v6, v8, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 619
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    iget-object p2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 620
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {p2, v5, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    .line 623
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p2

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {p1, p2, v5, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 624
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 626
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 627
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 628
    if-eqz p1, :cond_1b8

    .line 629
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 631
    int-to-float p3, p3

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    const p3, 0x3f70a3d7    # 0.94f

    mul-float p2, p2, p3

    float-to-int p2, p2

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 632
    invoke-virtual {p1, p0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 633
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 634
    const p2, 0x3f19999a    # 0.6f

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 635
    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 636
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 638
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->applyTo(Landroid/view/Window;)V

    .line 640
    :cond_1b8
    return-object v0
.end method

.method public static spacer(Landroid/content/Context;)Landroid/view/View;
    .registers 5

    .line 257
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 258
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    return-object v0
.end method

.method public static stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 14

    .line 395
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 396
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v1, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 398
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v3, "\u2212"

    const/16 v5, 0x2c

    invoke-static {p0, v3, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 399
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v6, "+"

    invoke-static {p0, v6, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 400
    const/4 v3, -0x1

    invoke-static {v1, p4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 401
    const/4 v3, 0x1

    invoke-static {v2, p4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 402
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p4

    .line 403
    const/16 v5, 0x11

    invoke-virtual {p4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 404
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p1, p3, v6, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p3

    .line 405
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 406
    if-eqz p2, :cond_65

    move-object v3, p2

    goto :goto_67

    :cond_65
    const-string v3, ""

    :goto_67
    const/high16 v6, 0x41380000    # 11.5f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v8, 0x0

    invoke-static {p0, v3, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 407
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 408
    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v3, v8, p0, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 409
    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    invoke-virtual {p4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v8, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p4, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    new-instance p0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-direct {p0, v0, p3, v3}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 415
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-object p0
.end method

.method private static styleSwitch(Landroid/view/View;Z)V
    .registers 5

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 504
    if-eqz p1, :cond_9

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_11

    :cond_9
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    :goto_11
    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 506
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 507
    if-eqz p1, :cond_32

    const p1, 0x800005

    goto :goto_35

    :cond_32
    const p1, 0x800003

    :goto_35
    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 508
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    return-void
.end method

.method public static surface(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 7

    .line 237
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 238
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/16 v5, 0x88

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, v1, v4, v2, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 240
    return-object v0
.end method

.method private static switchView(Landroid/content/Context;Z)Landroid/view/View;
    .registers 7

    .line 487
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 488
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 489
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 490
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 491
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 492
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 494
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 495
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 498
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->styleSwitch(Landroid/view/View;Z)V

    .line 499
    return-object v0
.end method

.method public static text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .registers 6

    .line 152
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const/4 p0, 0x2

    invoke-virtual {v0, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 155
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 157
    if-eqz p4, :cond_1b

    .line 158
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 160
    :cond_1b
    return-object v0
.end method

.method public static toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;
    .registers 11

    .line 461
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 462
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 463
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 464
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v5, 0x1

    invoke-static {p0, p1, v4, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3e

    .line 466
    const/high16 p1, 0x41480000    # 12.5f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, p1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 467
    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, v3, p2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 468
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    :cond_3e
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, p2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->switchView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object p0

    .line 472
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    new-array p1, v5, [Z

    aput-boolean p3, p1, v3

    .line 474
    new-instance p2, Lcom/isaigu/gymapp/widget/XemsUi$3;

    invoke-direct {p2, p1, p0, p4}, Lcom/isaigu/gymapp/widget/XemsUi$3;-><init>([ZLandroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    return-object v0
.end method

.method public static vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .line 175
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 176
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 177
    return-object v0
.end method

.method public static weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .line 251
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 252
    int-to-float p0, p1

    invoke-static {p2, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 253
    return-object v0
.end method
