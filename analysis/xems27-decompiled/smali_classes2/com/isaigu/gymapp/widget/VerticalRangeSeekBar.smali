.class public Lcom/isaigu/gymapp/widget/VerticalRangeSeekBar;
.super Lcom/isaigu/gymapp/widget/RangeSeekBar;
.source "VerticalRangeSeekBar.java"


# static fields
.field public static final DICTION_LEFT:I = -0x1

.field public static final DICTION_RIGHT:I = 0x1


# instance fields
.field private orientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget-object v0, Lcom/isaigu/gymapp/R$styleable;->RangeSeekBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 21
    .local v0, "t":Landroid/content/res/TypedArray;
    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/VerticalRangeSeekBar;->orientation:I

    .line 22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    return-void
.end method


# virtual methods
.method protected getEventX(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 45
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalRangeSeekBar;->orientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalRangeSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    return v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method protected getEventY(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 54
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalRangeSeekBar;->orientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalRangeSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 32
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalRangeSeekBar;->orientation:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 33
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 34
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalRangeSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 36
    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 37
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalRangeSeekBar;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 39
    :goto_0
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 27
    invoke-super {p0, p2, p1, p4, p3}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->onSizeChanged(IIII)V

    .line 28
    return-void
.end method
