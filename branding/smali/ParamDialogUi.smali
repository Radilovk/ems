.class public final Lcom/isaigu/gymapp/dialog/ParamDialogUi;
.super Ljava/lang/Object;
.source "ParamDialogUi.java"


# static fields
.field private static final DONE:Ljava/lang/String; = "xems_param_ui"

.field private static final FIELDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    const/4 v0, 0x4

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

    sput-object v0, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->FIELDS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static button(Landroid/content/Context;Landroid/view/View;I)V
    .registers 7

    .prologue
    const/high16 v3, 0x41b00000    # 22.0f

    const/4 v2, 0x0

    .line 100
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_8

    .line 112
    :goto_7
    return-void

    .line 103
    :cond_8
    check-cast p1, Landroid/widget/TextView;

    .line 104
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 107
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 109
    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 110
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    goto :goto_7
.end method

.method private static field(Landroid/content/Context;Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v4, 0x41000000    # 8.0f

    .line 61
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_a

    .line 78
    :goto_9
    return-void

    .line 64
    :cond_a
    check-cast p1, Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v3, 0x99

    .line 66
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 65
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 66
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 65
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 70
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v0, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_66

    .line 73
    const/high16 v1, 0x42980000    # 76.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 74
    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_66
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    goto :goto_9
.end method

.method static find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 56
    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static style(Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 29
    if-eqz p0, :cond_f

    :try_start_3
    const-string v1, "xems_param_ui"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 51
    :cond_f
    :goto_f
    return-void

    .line 32
    :cond_10
    const-string v1, "xems_param_ui"

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 35
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 37
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v2, v2, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 39
    :goto_47
    sget-object v3, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->FIELDS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_5a

    .line 40
    sget-object v3, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->FIELDS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->field(Landroid/content/Context;Landroid/view/View;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 42
    :cond_5a
    invoke-static {v1, p0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->walk(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 43
    const-string v0, "save"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->button(Landroid/content/Context;Landroid/view/View;I)V

    .line 44
    const-string v0, "close"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v1, v0, v3}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->button(Landroid/content/Context;Landroid/view/View;I)V

    .line 45
    const/4 v0, 0x1

    :goto_72
    const/4 v3, 0x3

    if-gt v0, v3, :cond_f

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->button(Landroid/content/Context;Landroid/view/View;I)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_90} :catch_93

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 48
    :catch_93
    move-exception v0

    .line 49
    const-string v1, "ParamDialogUi.style"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f
.end method

.method private static walk(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 82
    move v3, v4

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_52

    .line 83
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 84
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_19

    .line 85
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->walk(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 82
    :cond_15
    :goto_15
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 86
    :cond_19
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_15

    instance-of v1, v0, Landroid/widget/Button;

    if-nez v1, :cond_15

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 88
    instance-of v1, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_15

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-eqz v1, :cond_15

    .line 89
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    .line 90
    check-cast v0, Landroid/widget/TextView;

    .line 91
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v4, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_15

    .line 97
    :cond_52
    return-void
.end method
