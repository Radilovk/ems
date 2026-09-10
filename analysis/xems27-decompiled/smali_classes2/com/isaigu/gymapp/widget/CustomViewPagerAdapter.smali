.class public Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CustomViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/v4/view/PagerAdapter;"
    }
.end annotation


# instance fields
.field private views:[Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TV;)V"
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;, "Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter<TV;>;"
    .local p1, "views":[Landroid/view/View;, "[TV;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;->views:[Landroid/view/View;

    .line 14
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 53
    .local p0, "this":Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;, "Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter<TV;>;"
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .line 18
    .local p0, "this":Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;, "Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter<TV;>;"
    return-void
.end method

.method public getAllItems()[Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TV;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;, "Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter<TV;>;"
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;->views:[Landroid/view/View;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 27
    .local p0, "this":Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;, "Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter<TV;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I

    .line 32
    .local p0, "this":Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;, "Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter<TV;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;->views:[Landroid/view/View;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 33
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    array-length v2, v1

    rem-int v2, p2, v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 35
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;->views:[Landroid/view/View;

    array-length v2, v1

    rem-int v2, p2, v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 37
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;->views:[Landroid/view/View;

    array-length v1, v0

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .line 42
    .local p0, "this":Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;, "Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter<TV;>;"
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 22
    .local p0, "this":Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;, "Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter<TV;>;"
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 23
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 47
    .local p0, "this":Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;, "Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .line 58
    .local p0, "this":Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter;, "Lcom/isaigu/gymapp/widget/CustomViewPagerAdapter<TV;>;"
    return-void
.end method
