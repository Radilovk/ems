.class final Lcom/isaigu/gymapp/ai/AiUi$FlowRow;
.super Landroid/view/ViewGroup;
.source "AiUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlowRow"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1624
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 1625
    return-void
.end method


# virtual methods
.method add(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1628
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->addView(Landroid/view/View;)V

    .line 1629
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    .prologue
    const/4 v1, 0x0

    .line 1655
    sub-int v5, p4, p2

    .line 1656
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 1660
    :goto_11
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_46

    .line 1661
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1662
    if-lez v4, :cond_28

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    if-le v8, v5, :cond_28

    .line 1664
    add-int/2addr v2, v6

    add-int/2addr v3, v2

    move v2, v1

    move v4, v1

    .line 1667
    :cond_28
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v4, v3, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1668
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v4, v8

    .line 1669
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1660
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1671
    :cond_46
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 1633
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1634
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 1638
    :goto_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_48

    .line 1639
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1640
    const/high16 v8, -0x80000000

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1641
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1640
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1642
    if-lez v4, :cond_37

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    if-le v8, v5, :cond_37

    .line 1644
    add-int/2addr v2, v6

    add-int/2addr v3, v2

    move v2, v1

    move v4, v1

    .line 1647
    :cond_37
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v4, v8

    .line 1648
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1638
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1650
    :cond_48
    add-int v0, v3, v2

    invoke-virtual {p0, v5, v0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->setMeasuredDimension(II)V

    .line 1651
    return-void
.end method
