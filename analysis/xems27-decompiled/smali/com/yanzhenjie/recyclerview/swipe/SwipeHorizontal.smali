.class abstract Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;
.super Ljava/lang/Object;
.source "SwipeHorizontal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal$Checker;
    }
.end annotation


# instance fields
.field private direction:I

.field protected mChecker:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal$Checker;

.field private menuView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "menuView"    # Landroid/view/View;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->direction:I

    .line 33
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->menuView:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal$Checker;

    invoke-direct {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal$Checker;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->mChecker:Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal$Checker;

    .line 35
    return-void
.end method


# virtual methods
.method public abstract autoCloseMenu(Landroid/widget/OverScroller;II)V
.end method

.method public abstract autoOpenMenu(Landroid/widget/OverScroller;II)V
.end method

.method public canSwipe()Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->menuView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 41
    :cond_1
    return v2
.end method

.method public abstract checkXY(II)Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal$Checker;
.end method

.method public getDirection()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->direction:I

    return v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->menuView:Landroid/view/View;

    return-object v0
.end method

.method public getMenuWidth()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->menuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public abstract isClickOnContentView(IF)Z
.end method

.method public isCompleteClose(I)Z
    .locals 2
    .param p1, "scrollX"    # I

    .line 45
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->getMenuView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeHorizontal;->getDirection()I

    move-result v1

    mul-int v0, v0, v1

    .line 46
    .local v0, "i":I
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract isMenuOpen(I)Z
.end method

.method public abstract isMenuOpenNotEqual(I)Z
.end method
