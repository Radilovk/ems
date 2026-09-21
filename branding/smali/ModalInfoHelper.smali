.class public final Lcom/isaigu/gymapp/dialog/ModalInfoHelper;
.super Ljava/lang/Object;
.source "ModalInfoHelper.java"


# static fields
.field private static final RES_BG_CARD:I = 0x7f0600c3

.field private static final RES_LIGHT_GREEN:I = 0x7f06006f

.field private static final RES_TEXT_PRIMARY:I = 0x7f0600e6

.field private static final RES_TEXT_SECONDARY:I = 0x7f0600e7


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 3

    .line 101
    int-to-float p1, p1

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 101
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static resolveColor(Landroid/app/Activity;II)I
    .registers 3

    .line 94
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return p0

    .line 95
    :catchall_9
    move-exception p0

    .line 96
    return p2
.end method

.method public static show(Landroid/app/Activity;II)V
    .registers 3

    .line 29
    if-nez p0, :cond_3

    .line 30
    return-void

    .line 32
    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->show(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 11

    .line 36
    if-eqz p0, :cond_e7

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_e7

    .line 40
    :cond_a
    const/16 v0, 0x12

    :try_start_c
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 41
    const v1, 0x7f0600c3

    const v2, -0xe1e1e2

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->resolveColor(Landroid/app/Activity;II)I

    move-result v1

    .line 42
    const v2, 0x7f06006f

    const v3, -0x994496

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->resolveColor(Landroid/app/Activity;II)I

    move-result v2

    .line 43
    const v3, 0x7f0600e6

    const v4, -0x171718

    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->resolveColor(Landroid/app/Activity;II)I

    move-result v3

    .line 45
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 50
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 51
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const v6, 0x7f0600e7

    const v7, -0xbbbbbc

    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->resolveColor(Landroid/app/Activity;II)I

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 52
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const/high16 p1, 0x41800000    # 16.0f

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 57
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->dp(Landroid/app/Activity;I)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 61
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const/high16 p2, 0x41500000    # 13.0f

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 66
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    const/4 p2, 0x0

    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 68
    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p1, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 73
    new-instance p2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, p2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 79
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 80
    if-eqz p1, :cond_df

    .line 81
    const/16 p2, 0x154

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    const/4 p2, -0x2

    invoke-virtual {p1, p0, p2}, Landroid/view/Window;->setLayout(II)V

    .line 82
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 83
    if-eqz p0, :cond_df

    .line 84
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_df
    .catchall {:try_start_c .. :try_end_df} :catchall_e0

    .line 89
    :cond_df
    goto :goto_e6

    .line 87
    :catchall_e0
    move-exception p0

    .line 88
    const-string p1, "modal_info"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :goto_e6
    return-void

    .line 37
    :cond_e7
    :goto_e7
    return-void
.end method
