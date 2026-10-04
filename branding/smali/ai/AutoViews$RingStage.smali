.class public final Lcom/isaigu/gymapp/ai/AutoViews$RingStage;
.super Landroid/view/ViewGroup;
.source "AutoViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RingStage"
.end annotation


# instance fields
.field private final figInset:F

.field private final maxPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FI)V
    .registers 4

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 254
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->figInset:F

    .line 255
    iput p3, p0, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->maxPx:I

    .line 256
    return-void
.end method

.method private box(II)[I
    .registers 11

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->getChildCount()I

    move-result v0

    .line 275
    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_18

    .line 276
    new-array v0, v7, [I

    aput v3, v0, v3

    aput v3, v0, v4

    aput p2, v0, v5

    aput p2, v0, v6

    .line 284
    :goto_17
    return-object v0

    .line 278
    :cond_18
    if-nez p1, :cond_3d

    .line 279
    int-to-float v0, p2

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->figInset:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 280
    new-array v0, v7, [I

    aput v1, v0, v3

    aput v1, v0, v4

    mul-int/lit8 v2, v1, 0x2

    sub-int v2, p2, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v5

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v6

    goto :goto_17

    .line 283
    :cond_3d
    int-to-float v0, p2

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->figInset:F

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 284
    new-array v0, v7, [I

    aput v1, v0, v3

    aput v1, v0, v4

    mul-int/lit8 v2, v1, 0x2

    sub-int v2, p2, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v5

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v6

    goto :goto_17
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 15

    .prologue
    .line 289
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 290
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 291
    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->box(II)[I

    move-result-object v2

    .line 292
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x2

    aget v7, v2, v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v2, v7

    const/4 v8, 0x3

    aget v2, v2, v8

    add-int/2addr v2, v7

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/view/View;->layout(IIII)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 294
    :cond_31
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 260
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_44

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->maxPx:I

    .line 261
    :goto_b
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_49

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->maxPx:I

    .line 262
    :goto_13
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->maxPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v2

    .line 263
    :goto_22
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4e

    .line 264
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 265
    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->box(II)[I

    move-result-object v3

    .line 266
    const/4 v4, 0x2

    aget v4, v3, v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x3

    aget v3, v3, v5

    .line 267
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 266
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 260
    :cond_44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_b

    .line 261
    :cond_49
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_13

    .line 269
    :cond_4e
    invoke-virtual {p0, v1, v1}, Lcom/isaigu/gymapp/ai/AutoViews$RingStage;->setMeasuredDimension(II)V

    .line 270
    return-void
.end method
