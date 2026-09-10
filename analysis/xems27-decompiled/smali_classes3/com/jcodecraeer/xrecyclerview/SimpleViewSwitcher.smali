.class public Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;
.super Landroid/view/ViewGroup;
.source "SimpleViewSwitcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 43
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->getChildCount()I

    move-result v0

    .line 44
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 45
    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 47
    sub-int v3, p4, p2

    sub-int v4, p5, p3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 44
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 27
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->getChildCount()I

    move-result v0

    .line 28
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 29
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 30
    .local v2, "maxWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 31
    invoke-virtual {p0, v3}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 32
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p0, v4, p1, p2}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->measureChild(Landroid/view/View;II)V

    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 35
    .local v5, "cw":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 36
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 30
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "cw":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setMeasuredDimension(II)V

    .line 39
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->removeViewAt(I)V

    .line 57
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->addView(Landroid/view/View;I)V

    .line 58
    return-void
.end method
