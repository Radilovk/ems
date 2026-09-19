.class public Lcom/isaigu/gymapp/widget/AvatarStageLayout;
.super Landroid/widget/RelativeLayout;
.source "AvatarStageLayout.java"


# static fields
.field private static final REF_DP:F = 170.0f


# instance fields
.field private appliedScale:F

.field private refPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->appliedScale:F

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->appliedScale:F

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->appliedScale:F

    .line 29
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 12

    .line 45
    sub-int/2addr p4, p2

    .line 46
    int-to-float p2, p4

    iget v5, p0, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->refPx:I

    int-to-float p3, v5

    div-float p3, p2, p3

    .line 47
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, v5

    invoke-super/range {v0 .. v5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 48
    iget p1, p0, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->appliedScale:F

    sub-float p1, p3, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p4, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, p4

    if-lez p1, :cond_26

    .line 49
    iput p3, p0, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->appliedScale:F

    .line 50
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->setScaleX(F)V

    .line 51
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->setScaleY(F)V

    .line 53
    :cond_26
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->setPivotX(F)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->setPivotY(F)V

    .line 55
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 33
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x432a0000    # 170.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->refPx:I

    .line 34
    nop

    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 36
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 37
    iget p2, p0, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->refPx:I

    .line 38
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->refPx:I

    .line 39
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 37
    invoke-super {p0, p2, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 40
    invoke-virtual {p0, p1, p1}, Lcom/isaigu/gymapp/widget/AvatarStageLayout;->setMeasuredDimension(II)V

    .line 41
    return-void
.end method
