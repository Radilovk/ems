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

    .line 1668
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 1669
    return-void
.end method


# virtual methods
.method add(Landroid/view/View;)V
    .registers 2

    .line 1672
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->addView(Landroid/view/View;)V

    .line 1673
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    .line 1699
    sub-int/2addr p4, p2

    .line 1700
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p1

    .line 1701
    nop

    .line 1702
    nop

    .line 1703
    nop

    .line 1704
    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->getChildCount()I

    move-result v2

    if-ge p3, v2, :cond_49

    .line 1705
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1706
    if-lez p5, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p5

    if-le v3, p4, :cond_2b

    .line 1707
    nop

    .line 1708
    add-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 1709
    const/4 p5, 0x0

    const/4 v1, 0x0

    .line 1711
    :cond_2b
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, p5, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1712
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p1

    add-int/2addr p5, v3

    .line 1713
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1704
    add-int/lit8 p3, p3, 0x1

    goto :goto_13

    .line 1715
    :cond_49
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 1677
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1678
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p2

    .line 1679
    nop

    .line 1680
    nop

    .line 1681
    nop

    .line 1682
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_4c

    .line 1683
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1684
    const/high16 v6, -0x80000000

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1685
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1684
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 1686
    if-lez v4, :cond_3b

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    if-le v6, p1, :cond_3b

    .line 1687
    nop

    .line 1688
    add-int/2addr v3, p2

    add-int/2addr v2, v3

    .line 1689
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1691
    :cond_3b
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, p2

    add-int/2addr v4, v6

    .line 1692
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1682
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1694
    :cond_4c
    add-int/2addr v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->setMeasuredDimension(II)V

    .line 1695
    return-void
.end method
