.class public Lcom/isaigu/gymapp/widget/AvatarClusterLayout;
.super Landroid/widget/RelativeLayout;
.source "AvatarClusterLayout.java"


# static fields
.field private static final BTN_DP:F = 45.0f

.field private static final EDGE_DP:F = 6.0f

.field private static final ICON_PAD_DP:F = 28.0f

.field private static final VERT_DP:F = 16.0f


# instance fields
.field private appliedH:I

.field private appliedW:I

.field private baselineH:I

.field private baselineW:I

.field private hasBaseline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method private applyCornerButton(Ljava/lang/String;IIIZZZ)V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->id(Ljava/lang/String;)I

    move-result v0

    .line 115
    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 119
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 124
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 125
    if-eqz p5, :cond_5

    move v2, p4

    :goto_1
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 126
    if-eqz p6, :cond_6

    :goto_2
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 127
    if-eqz p7, :cond_7

    .line 128
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 129
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 130
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 138
    :goto_3
    if-eqz p5, :cond_2

    .line 139
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    :cond_2
    if-eqz p6, :cond_3

    .line 143
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 148
    check-cast v0, Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ui_ma_text_size"

    const-string v4, "dimen"

    .line 150
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 151
    if-eqz v1, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 152
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 156
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_5
    move v2, v3

    .line 125
    goto :goto_1

    :cond_6
    move p4, v3

    .line 126
    goto :goto_2

    .line 133
    :cond_7
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 134
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 135
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3
.end method

.method private applyScaledLayout(FF)V
    .locals 9

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 87
    const/high16 v2, 0x42340000    # 45.0f

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 88
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v0

    mul-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 89
    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v0

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 90
    const/high16 v5, 0x41e00000    # 28.0f

    mul-float/2addr v0, v5

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 92
    const-string v1, "ma"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 93
    const-string v1, "pauseMaValue"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 94
    const-string v1, "hzValue"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 95
    const-string v1, "pauseHzValue"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 97
    const-string v0, "userIcon"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->id(Ljava/lang/String;)I

    move-result v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 104
    :cond_0
    return-void
.end method

.method private id(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 46
    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->hasBaseline:Z

    .line 47
    iput v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineW:I

    .line 48
    iput v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineH:I

    .line 49
    iput v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    .line 50
    iput v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    .line 51
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 56
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->hasBaseline:Z

    if-nez v0, :cond_2

    .line 61
    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineW:I

    .line 62
    iput p2, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineH:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->hasBaseline:Z

    .line 64
    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    .line 65
    iput p2, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    goto :goto_0

    .line 69
    :cond_2
    iget v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    if-eq p2, v0, :cond_0

    .line 72
    :cond_3
    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    .line 73
    iput p2, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    .line 75
    iget v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineW:I

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineH:I

    if-eq p2, v0, :cond_0

    .line 79
    :cond_4
    int-to-float v0, p1

    iget v1, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineW:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 80
    int-to-float v1, p2

    iget v2, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyScaledLayout(FF)V

    goto :goto_0
.end method
