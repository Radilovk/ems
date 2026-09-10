.class public final Landroid/support/v4/widget/ListViewCompat;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scrollListBy(Landroid/widget/ListView;I)V
    .locals 3
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "y"    # I

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 41
    .local v0, "firstPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 42
    return-void

    .line 45
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "firstView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 47
    return-void

    .line 50
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, p1

    .line 51
    .local v2, "newTop":I
    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 53
    .end local v0    # "firstPosition":I
    .end local v1    # "firstView":Landroid/view/View;
    .end local v2    # "newTop":I
    :goto_0
    return-void
.end method
