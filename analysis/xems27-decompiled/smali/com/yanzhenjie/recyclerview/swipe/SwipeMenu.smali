.class public Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
.super Ljava/lang/Object;
.source "SwipeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mSwipeMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeMenuLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

.field private mViewType:I

.field private orientation:I


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;I)V
    .locals 2
    .param p1, "swipeMenuLayout"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;
    .param p2, "viewType"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->orientation:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->mSwipeMenuLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    .line 50
    iput p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->mViewType:I

    .line 51
    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    .line 98
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->mSwipeMenuLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getMenuItem(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;
    .locals 1
    .param p1, "index"    # I

    .line 110
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    return-object v0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->orientation:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->mViewType:I

    return v0
.end method

.method public removeMenuItem(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    .line 102
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public setOpenPercent(F)V
    .locals 3
    .param p1, "openPercent"    # F

    .line 59
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->mSwipeMenuLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->getOpenPercent()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    move p1, v0

    .line 61
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->mSwipeMenuLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->setOpenPercent(F)V

    .line 63
    :cond_2
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 82
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use SwipeMenu#HORIZONTAL or SwipeMenu#VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    :goto_0
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->orientation:I

    .line 85
    return-void
.end method

.method public setScrollerDuration(I)V
    .locals 1
    .param p1, "scrollerDuration"    # I

    .line 71
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->mSwipeMenuLayout:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->setScrollerDuration(I)V

    .line 72
    return-void
.end method
