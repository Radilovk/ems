.class public Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;
.super Landroid/support/v4/widget/NestedScrollView;
.source "StickyNestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SHADOW_HEIGHT:I = 0xa

.field public static final FLAG_HASTRANSPARENCY:Ljava/lang/String; = "-hastransparency"

.field public static final FLAG_NONCONSTANT:Ljava/lang/String; = "-nonconstant"

.field public static final STICKY_TAG:Ljava/lang/String; = "sticky"


# instance fields
.field private clipToPaddingHasBeenSet:Z

.field private clippingToPadding:Z

.field private currentlyStickingView:Landroid/view/View;

.field private hasNotDoneActionDown:Z

.field private final invalidateRunnable:Ljava/lang/Runnable;

.field private mOnViewStickyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private redirectTouchesToStickyView:Z

.field private stickyViewLeftOffset:I

.field private stickyViewTopOffset:F

.field private stickyViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$1;-><init>(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->invalidateRunnable:Ljava/lang/Runnable;

    .line 79
    const/16 v0, 0xa

    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mShadowHeight:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->hasNotDoneActionDown:Z

    .line 95
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->setup()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getLeftForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getBottomForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getRightForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;)F
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;

    .prologue
    .line 34
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViewTopOffset:F

    return v0
.end method

.method private detainStickyView(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getStringTagForView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "sticky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const/4 v1, 0x1

    .line 391
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doTheStickyThing()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 290
    const/4 v3, 0x0

    .line 291
    .local v3, "viewThatShouldStick":Landroid/view/View;
    const/4 v0, 0x0

    .line 292
    .local v0, "approachingView":Landroid/view/View;
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 293
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getScrollY()I

    move-result v8

    sub-int v8, v5, v8

    iget-boolean v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->clippingToPadding:Z

    if-eqz v5, :cond_2

    move v5, v6

    .line 294
    :goto_1
    add-int v4, v8, v5

    .line 295
    .local v4, "viewTop":I
    if-gtz v4, :cond_4

    .line 296
    if-eqz v3, :cond_1

    .line 297
    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v5

    .line 298
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getScrollY()I

    move-result v8

    sub-int v8, v5, v8

    iget-boolean v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->clippingToPadding:Z

    if-eqz v5, :cond_3

    move v5, v6

    :goto_2
    add-int/2addr v5, v8

    if-le v4, v5, :cond_0

    .line 299
    :cond_1
    move-object v3, v2

    goto :goto_0

    .line 294
    .end local v4    # "viewTop":I
    :cond_2
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getPaddingTop()I

    move-result v5

    goto :goto_1

    .line 298
    .restart local v4    # "viewTop":I
    :cond_3
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getPaddingTop()I

    move-result v5

    goto :goto_2

    .line 302
    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v5

    .line 303
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getScrollY()I

    move-result v8

    sub-int v8, v5, v8

    iget-boolean v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->clippingToPadding:Z

    if-eqz v5, :cond_6

    move v5, v6

    :goto_3
    add-int/2addr v5, v8

    if-ge v4, v5, :cond_0

    .line 304
    :cond_5
    move-object v0, v2

    goto :goto_0

    .line 303
    :cond_6
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getPaddingTop()I

    move-result v5

    goto :goto_3

    .line 308
    .end local v2    # "v":Landroid/view/View;
    .end local v4    # "viewTop":I
    :cond_7
    if-eqz v3, :cond_c

    .line 309
    if-nez v0, :cond_8

    const/4 v5, 0x0

    .line 310
    :goto_4
    iput v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViewTopOffset:F

    .line 312
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eq v3, v5, :cond_e

    .line 313
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eqz v5, :cond_b

    .line 314
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    if-eqz v5, :cond_a

    .line 315
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;

    .line 316
    .local v1, "onViewStickyListener":Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;
    iget-object v6, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-interface {v1, v6}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;->onUnSticky(Landroid/view/View;)V

    goto :goto_5

    .line 310
    .end local v1    # "onViewStickyListener":Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;
    :cond_8
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getScrollY()I

    move-result v7

    sub-int v7, v5, v7

    iget-boolean v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->clippingToPadding:Z

    if-eqz v5, :cond_9

    move v5, v6

    .line 311
    :goto_6
    add-int/2addr v5, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v5, v7

    .line 310
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    goto :goto_4

    .line 311
    :cond_9
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getPaddingTop()I

    move-result v5

    goto :goto_6

    .line 317
    :cond_a
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stopStickingCurrentlyStickingView()V

    .line 320
    :cond_b
    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getLeftForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v5

    iput v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViewLeftOffset:I

    .line 321
    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->startStickingView(Landroid/view/View;)V

    .line 322
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    if-eqz v5, :cond_e

    .line 323
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;

    .line 324
    .restart local v1    # "onViewStickyListener":Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;
    iget-object v6, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-interface {v1, v6}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;->onSticky(Landroid/view/View;)V

    goto :goto_7

    .line 326
    .end local v1    # "onViewStickyListener":Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;
    :cond_c
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eqz v5, :cond_e

    .line 327
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    if-eqz v5, :cond_d

    .line 328
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;

    .line 329
    .restart local v1    # "onViewStickyListener":Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;
    iget-object v6, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-interface {v1, v6}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;->onUnSticky(Landroid/view/View;)V

    goto :goto_8

    .line 330
    .end local v1    # "onViewStickyListener":Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;
    :cond_d
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stopStickingCurrentlyStickingView()V

    .line 332
    :cond_e
    return-void
.end method

.method private findStickyViews(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->detainStickyView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 379
    check-cast v1, Landroid/view/ViewGroup;

    .line 380
    .local v1, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 381
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->findStickyViews(Landroid/view/View;)V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private getBottomForViewRelativeOnlyChild(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 155
    .local v0, "bottom":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 157
    .restart local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 159
    :cond_0
    return v0
.end method

.method private getLeftForViewRelativeOnlyChild(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 128
    .local v0, "left":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 130
    .restart local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 132
    :cond_0
    return v0
.end method

.method private getRightForViewRelativeOnlyChild(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 146
    .local v0, "right":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 148
    .restart local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 150
    :cond_0
    return v0
.end method

.method private getStringTagForView(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 396
    .local v0, "tagObject":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTopForViewRelativeOnlyChild(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 137
    .local v0, "top":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 139
    .restart local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 141
    :cond_0
    return v0
.end method

.method private hideView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 401
    return-void
.end method

.method private notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stopStickingCurrentlyStickingView()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->findStickyViews(Landroid/view/View;)V

    .line 373
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->doTheStickyThing()V

    .line 374
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->invalidate()V

    .line 375
    return-void
.end method

.method private showView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 404
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 405
    return-void
.end method

.method private startStickingView(Landroid/view/View;)V
    .locals 2
    .param p1, "viewThatShouldStick"    # Landroid/view/View;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    .line 336
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getStringTagForView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-hastransparency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->hideView(Landroid/view/View;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getStringTagForView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-nonconstant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->post(Ljava/lang/Runnable;)Z

    .line 344
    :cond_1
    return-void
.end method

.method private stopStickingCurrentlyStickingView()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getStringTagForView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-hastransparency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->showView(Landroid/view/View;)V

    .line 350
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    .line 351
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 352
    return-void
.end method


# virtual methods
.method public addOnViewStickyListener(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;)V
    .locals 1
    .param p1, "stickyListener"    # Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 181
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->findStickyViews(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->addView(Landroid/view/View;I)V

    .line 187
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->findStickyViews(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 198
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->addView(Landroid/view/View;II)V

    .line 199
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->findStickyViews(Landroid/view/View;)V

    .line 200
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->findStickyViews(Landroid/view/View;)V

    .line 194
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->findStickyViews(Landroid/view/View;)V

    .line 206
    return-void
.end method

.method public clearOnViewStickyListener()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 210
    invoke-super {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 211
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getPaddingLeft()I

    move-result v4

    iget v6, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViewLeftOffset:I

    add-int/2addr v4, v6

    int-to-float v6, v4

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViewTopOffset:F

    add-float/2addr v7, v4

    iget-boolean v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->clippingToPadding:Z

    if-eqz v4, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getPaddingTop()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    add-float/2addr v4, v7

    .line 213
    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 215
    iget-boolean v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->clippingToPadding:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViewTopOffset:F

    neg-float v4, v4

    .line 216
    :goto_1
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViewLeftOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    .line 217
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mShadowHeight:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    .line 215
    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 218
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "left":I
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 221
    .local v3, "top":I
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 222
    .local v2, "right":I
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v6, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mShadowHeight:I

    add-int v0, v4, v6

    .line 223
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 224
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 226
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_0
    iget-boolean v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->clippingToPadding:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViewTopOffset:F

    neg-float v4, v4

    :goto_2
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    .line 227
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 226
    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 228
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getStringTagForView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-hastransparency"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 229
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->showView(Landroid/view/View;)V

    .line 230
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 231
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->hideView(Landroid/view/View;)V

    .line 235
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 237
    :cond_1
    return-void

    .line 214
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move v4, v5

    .line 215
    goto :goto_1

    :cond_4
    move v4, v5

    .line 226
    goto :goto_2

    .line 233
    :cond_5
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->redirectTouchesToStickyView:Z

    .line 244
    :cond_0
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->redirectTouchesToStickyView:Z

    if-eqz v0, :cond_5

    .line 245
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->redirectTouchesToStickyView:Z

    .line 246
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->redirectTouchesToStickyView:Z

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViewTopOffset:F

    add-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getLeftForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getRightForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    :goto_1
    iput-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->redirectTouchesToStickyView:Z

    .line 255
    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->redirectTouchesToStickyView:Z

    if-eqz v0, :cond_2

    .line 256
    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViewTopOffset:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    .line 257
    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 256
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 259
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_3
    move v0, v2

    .line 245
    goto :goto_0

    :cond_4
    move v1, v2

    .line 250
    goto :goto_1

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 253
    iput-boolean v2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->redirectTouchesToStickyView:Z

    goto :goto_2
.end method

.method public notifyStickyAttributeChanged()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->notifyHierarchyChanged()V

    .line 365
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 357
    invoke-super {p0}, Landroid/support/v4/widget/NestedScrollView;->onDetachedFromWindow()V

    .line 358
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 164
    invoke-super/range {p0 .. p5}, Landroid/support/v4/widget/NestedScrollView;->onLayout(ZIIII)V

    .line 165
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->clipToPaddingHasBeenSet:Z

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->clippingToPadding:Z

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->notifyHierarchyChanged()V

    .line 169
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 285
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/widget/NestedScrollView;->onScrollChanged(IIII)V

    .line 286
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->doTheStickyThing()V

    .line 287
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 264
    iget-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->redirectTouchesToStickyView:Z

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViewTopOffset:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->currentlyStickingView:Landroid/view/View;

    .line 266
    invoke-direct {p0, v3}, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 265
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 268
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 269
    iput-boolean v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->hasNotDoneActionDown:Z

    .line 271
    :cond_1
    iget-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->hasNotDoneActionDown:Z

    if-eqz v1, :cond_2

    .line 272
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 273
    .local v0, "down":Landroid/view/MotionEvent;
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 274
    invoke-super {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 275
    iput-boolean v4, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->hasNotDoneActionDown:Z

    .line 277
    .end local v0    # "down":Landroid/view/MotionEvent;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 278
    :cond_3
    iput-boolean v5, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->hasNotDoneActionDown:Z

    .line 280
    :cond_4
    invoke-super {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public removeOnViewStickyListener(Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;)V
    .locals 1
    .param p1, "stickyListener"    # Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView$OnViewStickyListener;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mOnViewStickyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 174
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->clippingToPadding:Z

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->clipToPaddingHasBeenSet:Z

    .line 176
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    return-void
.end method

.method public setShadowHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->mShadowHeight:I

    .line 116
    return-void
.end method

.method public setup()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/StickyNestedScrollView;->stickyViews:Ljava/util/ArrayList;

    .line 124
    return-void
.end method
