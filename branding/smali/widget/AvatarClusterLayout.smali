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

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method private applyCornerButton(Ljava/lang/String;IIIZZZ)V
    .registers 10

    .line 113
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->id(Ljava/lang/String;)I

    move-result p1

    .line 114
    if-nez p1, :cond_7

    .line 115
    return-void

    .line 117
    :cond_7
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 118
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_18

    goto :goto_63

    .line 121
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 122
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 123
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 124
    const/4 p2, 0x0

    if-eqz p5, :cond_27

    move v1, p4

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 125
    if-eqz p6, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 p4, 0x0

    :goto_2e
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 126
    const/16 p4, 0xc

    const/16 v1, 0xa

    if-eqz p7, :cond_41

    .line 127
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 128
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 129
    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    invoke-virtual {v0, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4b

    .line 132
    :cond_41
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 133
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 135
    invoke-virtual {v0, p4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 137
    :goto_4b
    const/16 p3, 0xb

    const/16 p4, 0x9

    if-eqz p5, :cond_57

    .line 138
    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 139
    invoke-virtual {v0, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 141
    :cond_57
    if-eqz p6, :cond_5f

    .line 142
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 143
    invoke-virtual {v0, p4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 145
    :cond_5f
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-void

    .line 119
    :cond_63
    :goto_63
    return-void
.end method

.method private applyScaledLayout(FF)V
    .registers 14

    .line 84
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 85
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 86
    const/high16 v2, 0x42340000    # 45.0f

    mul-float v2, v2, v0

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 87
    const/high16 v3, 0x41200000    # 10.0f

    mul-float v3, v3, v0

    mul-float v3, v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 88
    const/4 v3, 0x0

    mul-float v3, v3, v0

    mul-float v3, v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 89
    const/high16 v3, 0x41e00000    # 28.0f

    mul-float v0, v0, v3

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 91
    const-string v4, "ma"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move v5, v2

    move v6, p2

    move v7, p1

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 92
    const-string v4, "pauseMaValue"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 93
    const-string v4, "hzValue"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 94
    const-string v4, "pauseHzValue"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 96
    const-string p1, "userIcon"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->id(Ljava/lang/String;)I

    move-result p1

    .line 97
    if-eqz p1, :cond_6a

    .line 98
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 99
    if-eqz p1, :cond_6a

    .line 100
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 103
    :cond_6a
    return-void
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 149
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

    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->hasBaseline:Z

    .line 46
    iput v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineW:I

    .line 47
    iput v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineH:I

    .line 48
    iput v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    .line 49
    iput v0, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    .line 50
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 55
    if-lez p1, :cond_3c

    if-gtz p2, :cond_8

    goto :goto_3c

    .line 59
    :cond_8
    iget-boolean p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->hasBaseline:Z

    if-nez p3, :cond_18

    .line 60
    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineW:I

    .line 61
    iput p2, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineH:I

    .line 62
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->hasBaseline:Z

    .line 63
    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    .line 64
    iput p2, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    .line 65
    return-void

    .line 68
    :cond_18
    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    if-ne p1, p3, :cond_21

    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    if-ne p2, p3, :cond_21

    .line 69
    return-void

    .line 71
    :cond_21
    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    .line 72
    iput p2, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    .line 74
    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineW:I

    if-ne p1, p3, :cond_2e

    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineH:I

    if-ne p2, p3, :cond_2e

    .line 75
    return-void

    .line 78
    :cond_2e
    int-to-float p1, p1

    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineW:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 79
    int-to-float p2, p2

    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->baselineH:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyScaledLayout(FF)V

    .line 81
    return-void

    .line 56
    :cond_3c
    :goto_3c
    return-void
.end method
