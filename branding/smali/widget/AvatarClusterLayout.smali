.class public Lcom/isaigu/gymapp/widget/AvatarClusterLayout;
.super Landroid/widget/RelativeLayout;
.source "AvatarClusterLayout.java"


# static fields
.field private static final BTN_DP:F = 45.0f

.field private static final EDGE_DP:F = 0.0f

.field private static final EPS:F = 0.02f

.field private static final ICON_PAD_DP:F = 29.0f

.field private static final REF_H_DP:F = 170.0f

.field private static final REF_W_DP:F = 130.0f

.field private static final VERT_DP:F = 10.0f


# instance fields
.field private appliedH:I

.field private appliedW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method private applyCornerButton(Ljava/lang/String;IIIZZ)V
    .registers 15

    .line 88
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 89
    return-void
.end method

.method private applyCornerButton(Ljava/lang/String;IIIZZZ)V
    .registers 10

    .line 99
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->id(Ljava/lang/String;)I

    move-result p1

    .line 100
    if-nez p1, :cond_7

    .line 101
    return-void

    .line 103
    :cond_7
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 104
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_18

    goto :goto_63

    .line 107
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 108
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 109
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 110
    const/4 p2, 0x0

    if-eqz p5, :cond_27

    move v1, p4

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 111
    if-eqz p6, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 p4, 0x0

    :goto_2e
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 112
    const/16 p4, 0xc

    const/16 v1, 0xa

    if-eqz p7, :cond_41

    .line 113
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 114
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 115
    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    invoke-virtual {v0, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4b

    .line 118
    :cond_41
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 119
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    invoke-virtual {v0, p4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 123
    :goto_4b
    const/16 p3, 0xb

    const/16 p4, 0x9

    if-eqz p5, :cond_57

    .line 124
    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    invoke-virtual {v0, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 127
    :cond_57
    if-eqz p6, :cond_5f

    .line 128
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    invoke-virtual {v0, p4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 131
    :cond_5f
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void

    .line 105
    :cond_63
    :goto_63
    return-void
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 135
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
.method protected onSizeChanged(IIII)V
    .registers 14

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 48
    if-lez p1, :cond_a5

    if-lez p2, :cond_a5

    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    if-ne p1, p3, :cond_11

    iget p3, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    if-ne p2, p3, :cond_11

    goto/16 :goto_a5

    .line 51
    :cond_11
    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedW:I

    .line 52
    iput p2, p0, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->appliedH:I

    .line 54
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 55
    int-to-float p1, p1

    const/high16 p4, 0x43020000    # 130.0f

    mul-float p4, p4, p3

    div-float/2addr p1, p4

    .line 56
    int-to-float p2, p2

    const/high16 p4, 0x432a0000    # 170.0f

    mul-float p4, p4, p3

    div-float/2addr p2, p4

    .line 57
    const/high16 p4, 0x3f800000    # 1.0f

    sub-float v0, p1, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_45

    sub-float p4, p2, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p4, p4, v1

    if-gez p4, :cond_45

    .line 58
    return-void

    .line 61
    :cond_45
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 62
    const/high16 v0, 0x42340000    # 45.0f

    mul-float v0, v0, p3

    mul-float v0, v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 63
    const/high16 v1, 0x41200000    # 10.0f

    mul-float v1, v1, p3

    mul-float v1, v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 64
    const/4 v1, 0x0

    mul-float v1, v1, p3

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 65
    const/high16 v1, 0x41e80000    # 29.0f

    mul-float p3, p3, v1

    mul-float p3, p3, p4

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 67
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v2, "ma"

    move-object v1, p0

    move v3, v0

    move v4, p2

    move v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZ)V

    .line 68
    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v2, "pauseMaValue"

    invoke-direct/range {v1 .. v7}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZ)V

    .line 69
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v2, "hzValue"

    invoke-direct/range {v1 .. v8}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 70
    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v2, "pauseHzValue"

    invoke-direct/range {v1 .. v8}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->applyCornerButton(Ljava/lang/String;IIIZZZ)V

    .line 72
    const-string p1, "userIcon"

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->id(Ljava/lang/String;)I

    move-result p1

    .line 73
    if-eqz p1, :cond_a4

    .line 74
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AvatarClusterLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 75
    if-eqz p1, :cond_a4

    .line 76
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 79
    :cond_a4
    return-void

    .line 49
    :cond_a5
    :goto_a5
    return-void
.end method
