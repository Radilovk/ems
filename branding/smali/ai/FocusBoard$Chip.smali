.class final Lcom/isaigu/gymapp/ai/FocusBoard$Chip;
.super Ljava/lang/Object;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Chip"
.end annotation


# instance fields
.field final bar:Landroid/view/View;

.field final barFill:Landroid/view/View;

.field cap:I

.field dragValue:I

.field final k:I

.field level:I

.field final name:Landroid/widget/TextView;

.field off:Z

.field sel:Z

.field private shown:Ljava/lang/String;

.field tint:I

.field final value:Landroid/widget/TextView;

.field final view:Landroid/widget/LinearLayout;

.field yellow:Z


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .registers 15

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1888
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    .line 1894
    iput v7, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 1896
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    .line 1898
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->cap:I

    .line 1901
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    .line 1902
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_14f

    const/high16 v0, 0x40e00000    # 7.0f

    :goto_24
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    if-eqz p3, :cond_153

    const/high16 v0, 0x40e00000    # 7.0f

    :goto_30
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 1903
    invoke-static {p1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 1902
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1904
    iput p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    .line 1905
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1906
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;-><init>(Lcom/isaigu/gymapp/ai/FocusBoard$Chip;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1907
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;

    invoke-direct {v2, p2}, Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1909
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1910
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1911
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1912
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1913
    invoke-static {p1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const v6, 0x3eb33333    # 0.35f

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1914
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1915
    if-eqz p3, :cond_157

    move v0, v1

    .line 1916
    :goto_80
    if-eqz v0, :cond_a0

    .line 1917
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1918
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1919
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1920
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 1921
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1922
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1925
    :cond_a0
    if-nez p3, :cond_b8

    .line 1926
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {p1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {p1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1929
    :cond_b8
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1930
    if-eqz p3, :cond_16d

    const/4 v0, 0x0

    :goto_bf
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1931
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, p2

    if-eqz p3, :cond_171

    const/high16 v0, 0x41500000    # 13.0f

    :goto_d0
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p1, v3, v0, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    .line 1932
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1933
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1934
    const-string v0, ""

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p1, v0, v3, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    .line 1935
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1936
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1937
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1938
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/16 v4, 0xaa

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1939
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    .line 1940
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->bar:Landroid/view/View;

    .line 1941
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1942
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1943
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1944
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1945
    return-void

    .line 1902
    :cond_14f
    const/high16 v0, 0x41000000    # 8.0f

    goto/16 :goto_24

    :cond_153
    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_30

    .line 1915
    :cond_157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->ICONS:[Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2900()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    const-string v4, "mipmap"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_80

    .line 1930
    :cond_16d
    const/high16 v0, 0x41000000    # 8.0f

    goto/16 :goto_bf

    .line 1931
    :cond_171
    const/high16 v0, 0x41600000    # 14.0f

    goto/16 :goto_d0
.end method


# virtual methods
.method repaint()V
    .registers 11

    .prologue
    const/16 v9, 0xcc

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1958
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    if-ltz v0, :cond_5f

    const/4 v0, 0x1

    move v1, v0

    .line 1959
    :goto_b
    if-eqz v1, :cond_61

    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 1960
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->yellow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1961
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 1982
    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    move v1, v3

    .line 1958
    goto :goto_b

    .line 1959
    :cond_61
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->level:I

    goto :goto_f

    .line 1964
    :cond_64
    iput-object v4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    .line 1965
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1966
    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    .line 1967
    iget v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    .line 1968
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    iget-boolean v8, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-nez v8, :cond_7d

    if-eqz v1, :cond_f0

    :cond_7d
    invoke-static {v4, v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 1969
    :goto_81
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1968
    invoke-static {v1, v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1971
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v1, :cond_106

    const v1, 0x3ecccccd    # 0.4f

    :goto_93
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1972
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v1, :cond_108

    const-string v1, "\u0438\u0437\u043a\u043b."

    const-string v5, "off"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_a4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1973
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1974
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4, v3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1975
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->bar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1976
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1977
    if-lez v1, :cond_11c

    const/16 v4, 0x64

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_e1
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1978
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1979
    if-gtz v1, :cond_5e

    .line 1980
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    goto/16 :goto_5e

    .line 1969
    :cond_f0
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    .line 1970
    invoke-static {v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    .line 1969
    invoke-static {v1, v5, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_81

    :cond_106
    move v1, v2

    .line 1971
    goto :goto_93

    .line 1972
    :cond_108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " %"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a4

    :cond_11c
    move v0, v3

    .line 1977
    goto :goto_e1
.end method

.method set(IIZZZ)V
    .registers 7

    .prologue
    .line 1948
    iput p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->level:I

    .line 1949
    iput p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    .line 1950
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    .line 1951
    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->yellow:Z

    .line 1952
    iput-boolean p5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    .line 1953
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->cap:I

    .line 1954
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->repaint()V

    .line 1955
    return-void
.end method
