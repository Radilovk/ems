.class public final Lcom/isaigu/gymapp/ai/AutoViews$StagePair;
.super Landroid/view/ViewGroup;
.source "AutoViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StagePair"
.end annotation


# static fields
.field static final NEXT_SHARE:F = 0.46f


# instance fields
.field private final arrowPx:I

.field private final minRestPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    .prologue
    .line 305
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 306
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->minRestPx:I

    .line 307
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->arrowPx:I

    .line 308
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 334
    sub-int v3, p5, p3

    move v0, v1

    move v2, v1

    .line 336
    :goto_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 337
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1c

    move v1, v2

    .line 336
    :goto_18
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_5

    .line 341
    :cond_1c
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 342
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 343
    sub-int v6, v3, v5

    div-int/lit8 v6, v6, 0x2

    .line 344
    add-int v7, v2, v4

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v6, v7, v5}, Landroid/view/View;->layout(IIII)V

    .line 345
    add-int v1, v2, v4

    goto :goto_18

    .line 347
    :cond_31
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14

    .prologue
    const/16 v10, 0x8

    const/4 v4, 0x2

    const v2, 0x3eeb851f    # 0.46f

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 312
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 313
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_65

    const v0, 0x7fffffff

    .line 314
    :goto_15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->getChildCount()I

    move-result v1

    if-le v1, v4, :cond_6a

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_6a

    move v5, v6

    .line 315
    :goto_26
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v5, :cond_6c

    move v1, v2

    :goto_2b
    add-float/2addr v1, v4

    .line 316
    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->minRestPx:I

    sub-int v4, v0, v4

    if-eqz v5, :cond_6e

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->arrowPx:I

    :goto_34
    sub-int v0, v4, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 317
    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 318
    int-to-float v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 319
    if-eqz v5, :cond_70

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->arrowPx:I

    add-int/2addr v0, v4

    :goto_50
    add-int v5, v1, v0

    .line 320
    :goto_52
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_91

    .line 321
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 322
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v10, :cond_72

    .line 320
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 313
    :cond_65
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_15

    :cond_6a
    move v5, v3

    .line 314
    goto :goto_26

    .line 315
    :cond_6c
    const/4 v1, 0x0

    goto :goto_2b

    :cond_6e
    move v0, v3

    .line 316
    goto :goto_34

    :cond_70
    move v0, v3

    .line 319
    goto :goto_50

    .line 325
    :cond_72
    if-nez v3, :cond_88

    move v2, v1

    .line 326
    :goto_75
    if-ne v3, v6, :cond_8f

    move v0, v1

    .line 327
    :goto_78
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v8, v2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_62

    .line 325
    :cond_88
    if-ne v3, v6, :cond_8d

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->arrowPx:I

    goto :goto_75

    :cond_8d
    move v2, v4

    goto :goto_75

    :cond_8f
    move v0, v2

    .line 326
    goto :goto_78

    .line 329
    :cond_91
    invoke-virtual {p0, v5, v7}, Lcom/isaigu/gymapp/ai/AutoViews$StagePair;->setMeasuredDimension(II)V

    .line 330
    return-void
.end method
