.class public Lcom/isaigu/gymapp/widget/AvatarClusterLayout;
.super Landroid/widget/RelativeLayout;
.source "AvatarClusterLayout.java"


# static fields
.field private static final BTN_DP:F = 45.0f

.field private static final EDGE_DP:F = 0.0f

.field private static final ICON_PAD_DP:F = 28.0f

.field private static final VERT_DP:F = 10.0f


# instance fields
.field private appliedH:I

.field private appliedW:I

.field private baselineH:I

.field private baselineW:I

.field private hasBaseline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method private applyCornerButton(Ljava/lang/String;IIIZZZ)V
    .registers 10

    .line 114
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->id(Ljava/lang/String;)I

    move-result p1

    .line 115
    if-nez p1, :cond_7

    .line 116
    return-void

    .line 118
    :cond_7
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 119
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_90

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_19

    goto/16 :goto_90

    .line 122
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 124
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 125
    const/4 p2, 0x0

    if-eqz p5, :cond_28

    move v1, p4

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 126
    if-eqz p6, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 p4, 0x0

    :goto_2f
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 127
    const/16 p4, 0xc

    const/16 v1, 0xa

    if-eqz p7, :cond_42

    .line 128
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 129
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 130
    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    invoke-virtual {v0, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4c

    .line 133
    :cond_42
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 134
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    invoke-virtual {v0, p4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 138
    :goto_4c
    const/16 p3, 0xb

    const/16 p4, 0x9

    if-eqz p5, :cond_58

    .line 139
    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    invoke-virtual {v0, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    :cond_58
    if-eqz p6, :cond_60

    .line 143
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    invoke-virtual {v0, p4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    :cond_60
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    check-cast p1, Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 150
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 149
    const-string p5, "ui_ma_text_size"

    const-string p6, "dimen"

    invoke-virtual {p3, p5, p6, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 151
    if-eqz p3, :cond_87

    .line 152
    nop

    .line 154
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 152
    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 156
    :cond_87
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 157
    return-void

    .line 120
    :cond_90
    :goto_90
    return-void
.end method

.method private applyScaledLayout(FF)V
    .registers 14

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

    mul-float v2, v2, v0

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 88
    const/high16 v3, 0x41200000    # 10.0f

    mul-float v3, v3, v0

    mul-float v3, v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 89
    const/4 v3, 0x0

    mul-float v3, v3, v0

    mul-float v3, v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 90
    const/high16 v3, 0x41e00000    # 28.0f

    mul-float v0, v0, v3

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 92
    const-string v4, "ma"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move v5, v2

    move v6, p2

    move v7, p1

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 93
    const-string v4, "pauseMaValue"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 94
    const-string v4, "hzValue"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 95
    const-string v4, "pauseHzValue"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    const-string v4, "ma"

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->bringIndexButtonToFront(Ljava/lang/String;)V

    const-string v4, "pauseMaValue"

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->bringIndexButtonToFront(Ljava/lang/String;)V

    const-string v4, "hzValue"

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->bringIndexButtonToFront(Ljava/lang/String;)V

    const-string v4, "pauseHzValue"

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->bringIndexButtonToFront(Ljava/lang/String;)V

    .line 97
    const-string p1, "userIcon"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->id(Ljava/lang/String;)I

    move-result p1

    .line 98
    if-eqz p1, :cond_6a

    .line 99
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 100
    if-eqz p1, :cond_6a

    .line 101
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 104
    :cond_6a
    return-void
.end method

.method private bringIndexButtonToFront(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->id(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 160
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .line 45
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 46
    const/4 v0, 0x0

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
    .registers 5

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 56
    if-lez p1, :cond_3c

    if-gtz p2, :cond_8

    goto :goto_3c

    .line 60
    :cond_8
    iget-boolean p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->hasBaseline:Z

    if-nez p3, :cond_18

    .line 61
    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineW:I

    .line 62
    iput p2, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineH:I

    .line 63
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->hasBaseline:Z

    .line 64
    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    .line 65
    iput p2, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    .line 66
    return-void

    .line 69
    :cond_18
    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    if-ne p1, p3, :cond_21

    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    if-ne p2, p3, :cond_21

    .line 70
    return-void

    .line 72
    :cond_21
    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    .line 73
    iput p2, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    .line 75
    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineW:I

    if-ne p1, p3, :cond_2e

    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineH:I

    if-ne p2, p3, :cond_2e

    .line 76
    return-void

    .line 79
    :cond_2e
    int-to-float p1, p1

    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineW:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 80
    int-to-float p2, p2

    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineH:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyScaledLayout(FF)V

    .line 82
    return-void

    .line 57
    :cond_3c
    :goto_3c
    return-void
.end method
