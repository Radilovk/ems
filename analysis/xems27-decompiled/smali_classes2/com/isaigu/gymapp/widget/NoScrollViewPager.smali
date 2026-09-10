.class public Lcom/isaigu/gymapp/widget/NoScrollViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "NoScrollViewPager.java"


# instance fields
.field private noScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/NoScrollViewPager;->noScroll:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/NoScrollViewPager;->noScroll:Z

    .line 14
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .line 44
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/NoScrollViewPager;->noScroll:Z

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .line 35
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/NoScrollViewPager;->noScroll:Z

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public scrollTo(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 29
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 30
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .line 59
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 60
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 54
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 55
    return-void
.end method

.method public setNoScroll(Z)V
    .locals 0
    .param p1, "noScroll"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/NoScrollViewPager;->noScroll:Z

    .line 24
    return-void
.end method
