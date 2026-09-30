.class public final Lcom/isaigu/gymapp/dialog/ParamDialogUi;
.super Ljava/lang/Object;
.source "ParamDialogUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;,
        Lcom/isaigu/gymapp/dialog/ParamDialogUi$TabClick;
    }
.end annotation


# static fields
.field private static final DONE:Ljava/lang/String; = "xems_param_ui"

.field private static final FIELDS:[Ljava/lang/String;

.field public static final HEADER:Ljava/lang/String; = "xems_param_header"

.field private static final MAIN_CARD:Ljava/lang/String; = "xems_param_main"

.field private static final TABS:Ljava/lang/String; = "xems_param_tabs"

.field private static final TAB_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x4

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "worklength"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "frequency"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "paulseContinue"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "paulseStop"

    aput-object v2, v0, v1

    const-string v1, "inputramp"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "outputramp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->FIELDS:[Ljava/lang/String;

    .line 69
    new-array v0, v3, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->TAB_COLORS:[I

    return-void

    nop

    :array_2c
    .array-data 4
        -0xd161a5
        -0x2cd0d1
        -0xa8400
        -0xe6892e
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->TAB_COLORS:[I

    return-object v0
.end method

.method private static button(Landroid/content/Context;Landroid/view/View;I)V
    .registers 7

    .prologue
    const/high16 v3, 0x41b00000    # 22.0f

    const/4 v2, 0x0

    .line 376
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_8

    .line 388
    :goto_7
    return-void

    .line 379
    :cond_8
    check-cast p1, Landroid/widget/TextView;

    .line 380
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 383
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 384
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 385
    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 386
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 387
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    goto :goto_7
.end method

.method private static field(Landroid/content/Context;Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v4, 0x41000000    # 8.0f

    .line 337
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_a

    .line 354
    :goto_9
    return-void

    .line 340
    :cond_a
    check-cast p1, Landroid/widget/TextView;

    .line 341
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v3, 0x99

    .line 342
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 341
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 342
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 341
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 345
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 346
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v0, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 347
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_66

    .line 349
    const/high16 v1, 0x42980000    # 76.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 350
    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    :cond_66
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    goto :goto_9
.end method

.method static find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 332
    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static layout(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 15

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 80
    const/4 v1, -0x1

    .line 81
    const/4 v2, -0x1

    .line 82
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 84
    if-gez v1, :cond_21

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_21

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_21

    move v1, v0

    .line 82
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 86
    :cond_21
    if-ltz v1, :cond_1e

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/view/View;

    if-ne v3, v4, :cond_1e

    move v2, v0

    .line 91
    :cond_2c
    const/4 v0, 0x0

    .line 92
    if-ltz v1, :cond_425

    if-le v2, v1, :cond_425

    .line 93
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 94
    const-string v0, "xems_param_main"

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 95
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v0, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 97
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 98
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 99
    :goto_61
    if-ge v0, v2, :cond_6d

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 102
    :cond_6d
    const/4 v0, 0x0

    move v2, v0

    :goto_6f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8b

    .line 103
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6f

    .line 106
    :cond_8b
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    const/16 v0, 0xc

    const/16 v2, 0xa

    const/16 v4, 0xc

    const/4 v5, 0x6

    invoke-static {p0, v0, v2, v4, v5}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->margins(Landroid/content/Context;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 108
    add-int/lit8 v0, v1, 0x1

    :goto_a7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v4, v1, 0x3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_cb

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/view/View;

    if-eq v4, v5, :cond_c3

    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_c8

    .line 111
    :cond_c3
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_c8
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    .line 114
    :cond_cb
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->tidyMain(Landroid/content/Context;Landroid/view/ViewGroup;)V

    move-object v2, v3

    .line 117
    :goto_cf
    const/4 v0, 0x4

    new-array v7, v0, [Landroid/view/View;

    .line 118
    const/4 v0, 0x0

    aput-object v2, v7, v0

    .line 119
    const/4 v3, 0x0

    .line 120
    const/4 v0, 0x1

    move v5, v0

    :goto_d8
    const/4 v0, 0x3

    if-gt v5, v0, :cond_18f

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frequencyview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 122
    const/4 v0, 0x0

    move v4, v0

    :goto_f4
    const/4 v0, 0x3

    if-ge v4, v0, :cond_10b

    if-eqz v1, :cond_10b

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_10b

    .line 123
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 122
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_f4

    .line 125
    :cond_10b
    instance-of v0, v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_422

    .line 126
    aput-object v1, v7, v5

    .line 127
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v0, v4, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v1, v0, v4, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    move-object v0, v1

    .line 129
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_15a

    move-object v0, v1

    .line 130
    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_15a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_17b

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 134
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 135
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 136
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    :cond_17b
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_422

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 120
    :goto_189
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v3, v0

    goto/16 :goto_d8

    .line 144
    :cond_18f
    if-eqz v2, :cond_270

    const-string v0, "xems_param_tabs"

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_270

    .line 145
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "\u041e\u0441\u043d\u043e\u0432\u0435\u043d"

    const-string v5, "Main"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const/4 v0, 0x1

    const-string v4, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v5, "Muscle"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const/4 v0, 0x2

    const-string v4, "\u041a\u0430\u0440\u0434\u0438\u043e"

    const-string v5, "Cardio"

    .line 146
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const/4 v0, 0x3

    const-string v4, "\u041c\u0430\u0441\u0430\u0436"

    const-string v5, "Massage"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 147
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 148
    const-string v0, "xems_param_tabs"

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 149
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v0, v5, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v4, v0, v5, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 151
    const/4 v0, 0x4

    new-array v5, v0, [Landroid/widget/TextView;

    .line 152
    new-instance v8, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;

    invoke-direct {v8, v5, v7, v3}, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;-><init>([Landroid/widget/TextView;[Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 153
    const/4 v0, 0x0

    :goto_20d
    const/4 v3, 0x4

    if-ge v0, v3, :cond_252

    .line 154
    aget-object v3, v1, v0

    const/high16 v7, 0x41880000    # 17.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v10, 0x1

    invoke-static {p0, v3, v7, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    aput-object v3, v5, v0

    .line 155
    aget-object v3, v5, v0

    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    aget-object v3, v5, v0

    const/4 v7, 0x0

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v3, v7, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 157
    aget-object v3, v5, v0

    new-instance v7, Lcom/isaigu/gymapp/dialog/ParamDialogUi$TabClick;

    invoke-direct {v7, v8, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi$TabClick;-><init>(Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    aget-object v3, v5, v0

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_20d

    .line 160
    :cond_252
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/16 v1, 0xc

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/4 v5, 0x2

    invoke-static {p0, v1, v2, v3, v5}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->margins(Landroid/content/Context;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-static {}, Lcom/isaigu/gymapp/dialog/RampSetting;->lastMode()I

    move-result v0

    .line 162
    if-ltz v0, :cond_3fd

    const/4 v1, 0x3

    if-gt v0, v1, :cond_3fd

    :goto_26d
    invoke-virtual {v8, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->select(I)V

    .line 165
    :cond_270
    const-string v0, "xems_param_header"

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3fc

    .line 166
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 167
    const-string v0, "xems_param_header"

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 168
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 169
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 170
    const-string v0, "usericonLayout"

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 171
    const-string v0, "usericonLayout2"

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    .line 172
    const-string v0, "userIcon"

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    .line 173
    const-string v0, "username"

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 174
    if-eqz v4, :cond_400

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_400

    const/4 v0, 0x1

    move v2, v0

    .line 175
    :goto_2c3
    if-eqz v2, :cond_2f4

    if-eqz v7, :cond_2f4

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2f4

    .line 176
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 177
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v0, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 178
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 179
    invoke-virtual {v3, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :cond_2f4
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 182
    const-string v0, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430"

    const-string v7, "Program parameters"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v7, 0x41a00000    # 20.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v9, 0x1

    invoke-static {p0, v0, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    if-eqz v2, :cond_404

    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_404

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_404

    .line 185
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v0, v1

    .line 186
    check-cast v0, Landroid/widget/TextView;

    .line 187
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 188
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 191
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 192
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v7, -0x2

    invoke-direct {v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    :cond_351
    :goto_351
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_3ca

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3ca

    .line 200
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 201
    check-cast p2, Landroid/widget/TextView;

    .line 202
    const-string v0, "\u2715"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 204
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2, v0, v1, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 207
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 209
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 210
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 211
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v1, "Close"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 213
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    :cond_3ca
    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 217
    if-eqz v4, :cond_3d5

    .line 218
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_3d5
    if-eqz v5, :cond_3fc

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3fc

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3fc

    .line 221
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 222
    const/4 v0, 0x1

    const/16 v1, 0x10

    const/4 v2, 0x4

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->margins(Landroid/content/Context;IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v5, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 225
    :cond_3fc
    return-void

    .line 162
    :cond_3fd
    const/4 v0, 0x0

    goto/16 :goto_26d

    .line 174
    :cond_400
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_2c3

    .line 194
    :cond_404
    if-eqz v5, :cond_351

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_351

    .line 195
    const-string v0, "\u2699 Master \u2014 \u0437\u0430 \u0438\u0437\u0431\u0440\u0430\u043d\u0438\u0442\u0435 \u043a\u043b\u0438\u0435\u043d\u0442\u0438"

    const-string v1, "\u2699 Master \u2014 for the chosen clients"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {p0, v0, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_351

    :cond_422
    move-object v0, v3

    goto/16 :goto_189

    :cond_425
    move-object v2, v0

    goto/16 :goto_cf
.end method

.method private static margins(Landroid/content/Context;IIII)Landroid/widget/LinearLayout$LayoutParams;
    .registers 10

    .prologue
    .line 228
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 230
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v2, p2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v3, p3

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v4, p4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 231
    return-object v0
.end method

.method private static sectionTitle(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 312
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 327
    :cond_4
    :goto_4
    return-void

    .line 315
    :cond_5
    check-cast p1, Landroid/widget/TextView;

    .line 316
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 317
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 318
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 320
    const v0, 0x3d75c28f    # 0.06f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 321
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 322
    instance-of v0, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 323
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x800003

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object v0, v1

    .line 324
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 325
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method public static style(Landroid/view/ViewGroup;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-eqz p0, :cond_10

    :try_start_4
    const-string v3, "xems_param_ui"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 65
    :cond_10
    :goto_10
    return-void

    .line 38
    :cond_11
    const-string v3, "xems_param_ui"

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 40
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 41
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v3, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 43
    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0, v3, v3, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 45
    :goto_48
    sget-object v3, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->FIELDS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_5b

    .line 46
    sget-object v3, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->FIELDS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v5, v3}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->field(Landroid/content/Context;Landroid/view/View;)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 48
    :cond_5b
    invoke-static {v4, p0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->walk(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 49
    const-string v2, "save"

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v4, v2, v3}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->button(Landroid/content/Context;Landroid/view/View;I)V

    move v3, v1

    .line 50
    :goto_69
    const/4 v1, 0x3

    if-gt v3, v1, :cond_ac

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 52
    const/4 v1, 0x2

    invoke-static {v4, v2, v1}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->button(Landroid/content/Context;Landroid/view/View;I)V

    .line 53
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_a8

    .line 54
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 56
    const/4 v6, -0x2

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    check-cast v2, Landroid/widget/TextView;

    const/high16 v1, 0x43020000    # 130.0f

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 50
    :cond_a8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_69

    .line 61
    :cond_ac
    const-string v1, "close"

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-static {v4, p0, v1}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->layout(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b5} :catch_b7

    goto/16 :goto_10

    .line 62
    :catch_b7
    move-exception v1

    .line 63
    const-string v2, "ParamDialogUi.style"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10
.end method

.method private static tidyMain(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 236
    move v2, v3

    :goto_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_81

    .line 237
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 238
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    .line 239
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->tidyMain(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 236
    :cond_16
    :goto_16
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 240
    :cond_1a
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_16

    .line 241
    check-cast v0, Landroid/widget/TextView;

    .line 242
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 243
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_16

    .line 245
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 246
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v4, v6

    .line 247
    const/high16 v6, 0x41840000    # 16.5f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_76

    move v4, v5

    .line 248
    :goto_53
    if-eqz v4, :cond_78

    .line 249
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 251
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 252
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 253
    const/4 v4, -0x2

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 257
    :goto_72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_16

    :cond_76
    move v4, v3

    .line 247
    goto :goto_53

    .line 255
    :cond_78
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_72

    .line 261
    :cond_81
    return-void
.end method

.method private static walk(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 358
    move v3, v4

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_52

    .line 359
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 360
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_19

    .line 361
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->walk(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 358
    :cond_15
    :goto_15
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 362
    :cond_19
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_15

    instance-of v1, v0, Landroid/widget/Button;

    if-nez v1, :cond_15

    .line 363
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 364
    instance-of v1, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_15

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-eqz v1, :cond_15

    .line 365
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    .line 366
    check-cast v0, Landroid/widget/TextView;

    .line 367
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v4, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 369
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_15

    .line 373
    :cond_52
    return-void
.end method
