.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$LayoutParams;,
        Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private mCollapsed:Z

.field private mCollapsible:Z

.field private mDownPreScrollRange:I

.field private mDownScrollRange:I

.field private mHaveChildWithInterpolator:Z

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:I

.field private final mTmpStatesArray:[I

.field private mTotalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 156
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 135
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 136
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 149
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout;->mTmpStatesArray:[I

    .line 157
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setOrientation(I)V

    .line 159
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 161
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 164
    invoke-static {p0}, Landroid/support/design/widget/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 168
    sget v1, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-static {p0, p2, v0, v1}, Landroid/support/design/widget/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 172
    :cond_0
    sget-object v1, Landroid/support/design/R$styleable;->AppBarLayout:[I

    sget v3, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-virtual {p1, p2, v1, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 174
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/design/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 175
    sget v3, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    sget v3, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-direct {p0, v3, v0, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    .line 178
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_2

    sget v2, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    sget v2, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    .line 180
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 179
    invoke-static {p0, v0}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 182
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    new-instance v0, Landroid/support/design/widget/AppBarLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/AppBarLayout$1;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 192
    return-void
.end method

.method private invalidateScrollRanges()V
    .locals 1

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 261
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 262
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 263
    return-void
.end method

.method private setCollapsibleState(Z)Z
    .locals 1
    .param p1, "collapsible"    # Z

    .line 519
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    if-eq v0, p1, :cond_0

    .line 520
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    .line 521
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 522
    const/4 v0, 0x1

    return v0

    .line 524
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setExpanded(ZZZ)V
    .locals 3
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .line 307
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v0, v2

    if-eqz p3, :cond_2

    const/16 v1, 0x8

    :cond_2
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 310
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    .line 311
    return-void
.end method

.method private updateCollapsible()V
    .locals 4

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "haveCollapsibleChild":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 250
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    const/4 v0, 0x1

    .line 252
    goto :goto_1

    .line 249
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setCollapsibleState(Z)Z

    .line 256
    return-void
.end method


# virtual methods
.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 202
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    .line 205
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 315
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    return v0
.end method

.method dispatchOffsetUpdates(I)V
    .locals 3
    .param p1, "offset"    # I

    .line 470
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 471
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "z":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 472
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 473
    .local v2, "listener":Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
    if-eqz v2, :cond_0

    .line 474
    invoke-interface {v2, p0, p1}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V

    .line 471
    .end local v2    # "listener":Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "z":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 3

    .line 320
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 107
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 107
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 325
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 332
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 333
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 335
    :cond_1
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method getDownNestedPreScrollRange()I
    .locals 8

    .line 394
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 396
    return v0

    .line 399
    :cond_0
    const/4 v0, 0x0

    .line 400
    .local v0, "range":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 401
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 402
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 403
    .local v3, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 404
    .local v4, "childHeight":I
    iget v5, v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 406
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    .line 408
    iget v6, v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v7, v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 410
    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_1

    .line 412
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1

    .line 413
    :cond_1
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_2

    .line 415
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    sub-int v6, v4, v6

    add-int/2addr v0, v6

    goto :goto_1

    .line 418
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v6

    sub-int v6, v4, v6

    add-int/2addr v0, v6

    goto :goto_1

    .line 420
    :cond_3
    if-lez v0, :cond_4

    .line 423
    goto :goto_2

    .line 400
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v4    # "childHeight":I
    .end local v5    # "flags":I
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 426
    .end local v1    # "i":I
    :cond_5
    :goto_2
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    return v1
.end method

.method getDownNestedScrollRange()I
    .locals 9

    .line 433
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 435
    return v0

    .line 438
    :cond_0
    const/4 v0, 0x0

    .line 439
    .local v0, "range":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 440
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 441
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 442
    .local v4, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 443
    .local v5, "childHeight":I
    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 445
    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 447
    .local v6, "flags":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_2

    .line 449
    add-int/2addr v0, v5

    .line 451
    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_1

    .line 455
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v0, v7

    .line 456
    goto :goto_1

    .line 439
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v5    # "childHeight":I
    .end local v6    # "flags":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_2
    :goto_1
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    return v1
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .locals 5

    .line 481
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    .line 482
    .local v0, "topInset":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 483
    .local v1, "minHeight":I
    if-eqz v1, :cond_0

    .line 485
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    return v2

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .line 490
    .local v2, "childCount":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 491
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 492
    .local v3, "lastChildMinHeight":I
    :goto_0
    if-eqz v3, :cond_2

    .line 493
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    return v4

    .line 498
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    return v4
.end method

.method getPendingAction()I
    .locals 1

    .line 567
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    return v0
.end method

.method public getTargetElevation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method final getTopInset()I
    .locals 1

    .line 576
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .line 348
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 349
    return v0

    .line 352
    :cond_0
    const/4 v0, 0x0

    .line 353
    .local v0, "range":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 354
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 355
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 356
    .local v4, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 357
    .local v5, "childHeight":I
    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 359
    .local v6, "flags":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_2

    .line 361
    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v5

    iget v8, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    .line 363
    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_1

    .line 367
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v0, v7

    .line 368
    goto :goto_1

    .line 353
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v5    # "childHeight":I
    .end local v6    # "flags":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_2
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    return v1
.end method

.method getUpNestedPreScrollRange()I
    .locals 1

    .line 387
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method hasChildWithInterpolator()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    return v0
.end method

.method hasScrollableChildren()Z
    .locals 1

    .line 380
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4
    .param p1, "extraSpace"    # I

    .line 503
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mTmpStatesArray:[I

    .line 504
    .local v0, "extraStates":[I
    array-length v1, v0

    add-int/2addr v1, p1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 506
    .local v1, "states":[I
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    if-eqz v2, :cond_0

    sget v2, Landroid/support/design/R$attr;->state_collapsible:I

    goto :goto_0

    :cond_0
    sget v2, Landroid/support/design/R$attr;->state_collapsible:I

    neg-int v2, v2

    :goto_0
    const/4 v3, 0x0

    aput v2, v0, v3

    .line 507
    const/4 v2, 0x1

    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    if-eqz v3, :cond_1

    sget v3, Landroid/support/design/R$attr;->state_collapsed:I

    goto :goto_1

    :cond_1
    sget v3, Landroid/support/design/R$attr;->state_collapsed:I

    neg-int v3, v3

    :goto_1
    aput v3, v0, v2

    .line 510
    invoke-static {v1, v0}, Landroid/support/design/widget/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object v2

    return-object v2
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 229
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 230
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 234
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 235
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 236
    .local v3, "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 238
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v4, :cond_0

    .line 239
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 240
    goto :goto_1

    .line 233
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->updateCollapsible()V

    .line 245
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 223
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 224
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 225
    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .line 580
    const/4 v0, 0x0

    .line 582
    .local v0, "newInsets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    move-object v0, p1

    .line 588
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroid/support/design/widget/ViewUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 589
    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 590
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 593
    :cond_1
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 216
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 217
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    return-void
.end method

.method resetPendingAction()V
    .locals 1

    .line 571
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 572
    return-void
.end method

.method setCollapsedState(Z)Z
    .locals 1
    .param p1, "collapsed"    # Z

    .line 533
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    if-eq v0, p1, :cond_0

    .line 534
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    .line 535
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 536
    const/4 v0, 0x1

    return v0

    .line 538
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .line 287
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 288
    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z

    .line 303
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    .line 304
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 267
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 271
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 272
    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTargetElevation(F)V
    .locals 2
    .param p1, "elevation"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 551
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 552
    invoke-static {p0, p1}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 554
    :cond_0
    return-void
.end method
