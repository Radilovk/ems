.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroid/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field static final IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mPreservedOpenState:Z

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field mSlideOffset:F

.field mSlideRange:I

.field mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .local v0, "deviceVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 204
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0

    .line 205
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 206
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0

    .line 208
    :cond_1
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    .line 210
    .end local v0    # "deviceVersion":I
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 262
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    const v0, -0x33333334

    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 194
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 265
    .local v1, "density":F
    const/high16 v2, 0x42000000    # 32.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 267
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 269
    .local v2, "viewConfig":Landroid/view/ViewConfiguration;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 271
    new-instance v4, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v4, p0}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 272
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 274
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v3, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 275
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 276
    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 2
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .line 867
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    return v1

    .line 868
    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 869
    const/4 v0, 0x1

    return v0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mag"    # F
    .param p3, "fadeColor"    # I

    .line 976
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 978
    .local v0, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    if-eqz p3, :cond_2

    .line 979
    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    .line 980
    .local v1, "baseAlpha":I
    int-to-float v2, v1

    mul-float v2, v2, p2

    float-to-int v2, v2

    .line 981
    .local v2, "imag":I
    shl-int/lit8 v3, v2, 0x18

    const v4, 0xffffff

    and-int/2addr v4, p3

    or-int/2addr v3, v4

    .line 982
    .local v3, "color":I
    iget-object v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_0

    .line 983
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 985
    :cond_0
    iget-object v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v3, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 986
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 987
    iget-object v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 989
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .end local v1    # "baseAlpha":I
    .end local v2    # "imag":I
    .end local v3    # "color":I
    goto :goto_0

    .line 990
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_4

    .line 991
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_3

    .line 992
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 994
    :cond_3
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 995
    .local v1, "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 990
    .end local v1    # "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    :cond_4
    :goto_0
    nop

    .line 998
    :goto_1
    return-void
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 1
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .line 875
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 879
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 876
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 877
    return v0
.end method

.method private parallaxOtherViews(F)V
    .locals 11
    .param p1, "slideOffset"    # F

    .line 1196
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 1197
    .local v0, "isLayoutRtl":Z
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1198
    .local v1, "slideLp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v2, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget v2, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_0
    if-gtz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1200
    .local v2, "dimViews":Z
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v3

    .line 1201
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_6

    .line 1202
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1203
    .local v5, "v":Landroid/view/View;
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v5, v6, :cond_2

    goto :goto_5

    .line 1205
    :cond_2
    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v9, v8

    mul-float v6, v6, v9

    float-to-int v6, v6

    .line 1206
    .local v6, "oldOffset":I
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    .line 1207
    sub-float v9, v7, p1

    int-to-float v8, v8

    mul-float v9, v9, v8

    float-to-int v8, v9

    .line 1208
    .local v8, "newOffset":I
    sub-int v9, v6, v8

    .line 1210
    .local v9, "dx":I
    if-eqz v0, :cond_3

    neg-int v10, v9

    goto :goto_3

    :cond_3
    move v10, v9

    :goto_3
    invoke-virtual {v5, v10}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1212
    if-eqz v2, :cond_5

    .line 1213
    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    if-eqz v0, :cond_4

    sub-float/2addr v10, v7

    goto :goto_4

    :cond_4
    sub-float v10, v7, v10

    :goto_4
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {p0, v5, v10, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 1201
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "oldOffset":I
    .end local v8    # "newOffset":I
    .end local v9    # "dx":I
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1217
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 414
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 415
    return v1

    .line 421
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    .line 422
    return v3

    .line 425
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 426
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 427
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 429
    :cond_3
    return v3
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 1231
    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1232
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1233
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1234
    .local v3, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1235
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 1237
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 1240
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1241
    .local v13, "child":Landroid/view/View;
    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int v7, p5, v4

    .line 1242
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    const/4 v9, 0x1

    add-int v7, p4, v3

    .line 1243
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v11, v7, v8

    add-int v7, p5, v4

    .line 1244
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v12, v7, v8

    .line 1243
    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Landroid/support/v4/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1245
    return v2

    .line 1237
    .end local v13    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1250
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v1, p3

    move v3, v1

    goto :goto_1

    :cond_2
    move/from16 v1, p3

    neg-int v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_3
    move/from16 v1, p3

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public canSlide()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 934
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1275
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public closePane()Z
    .locals 2

    .line 915
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .line 1084
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1085
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 1086
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 1087
    return-void

    .line 1090
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1092
    :cond_1
    return-void
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .line 352
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    .line 355
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 356
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .line 345
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    .line 348
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 349
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .line 339
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 340
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 342
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1162
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1163
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 1165
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_0

    .line 1166
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .local v1, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1168
    .end local v1    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1171
    .restart local v1    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1172
    .local v2, "shadowView":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_4

    if-nez v1, :cond_2

    goto :goto_3

    .line 1177
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1178
    .local v3, "top":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1180
    .local v4, "bottom":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1183
    .local v5, "shadowWidth":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1184
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    .line 1185
    .local v6, "left":I
    add-int v7, v6, v5

    .local v7, "right":I
    goto :goto_2

    .line 1187
    .end local v6    # "left":I
    .end local v7    # "right":I
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1188
    .restart local v7    # "right":I
    sub-int v6, v7, v5

    .line 1191
    .restart local v6    # "left":I
    :goto_2
    invoke-virtual {v1, v6, v3, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1192
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1193
    return-void

    .line 1174
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    .end local v5    # "shadowWidth":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    :cond_4
    :goto_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 1002
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1004
    .local v0, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    .line 1006
    .local v1, "save":I
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1008
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1009
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1010
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1014
    :goto_0
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1017
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 1018
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_2

    .line 1020
    .end local v2    # "result":Z
    :cond_2
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 1021
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1022
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1024
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1025
    .local v2, "cache":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 1026
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1027
    const/4 v3, 0x0

    move v2, v3

    .local v3, "result":Z
    goto :goto_1

    .line 1029
    .end local v3    # "result":Z
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawChild: child view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " returned null drawing cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SlidingPaneLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    move v2, v3

    .line 1032
    .local v2, "result":Z
    :goto_1
    goto :goto_2

    .line 1033
    .end local v2    # "result":Z
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1034
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1036
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 1040
    .restart local v2    # "result":Z
    :goto_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1042
    return v2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1263
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1280
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1268
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .line 331
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    .line 296
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1

    .line 313
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return v0
.end method

.method invalidateChildRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1046
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 1047
    return-void
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 1254
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1255
    return v0

    .line 1257
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1258
    .local v1, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method isLayoutRtlSupport()Z
    .locals 2

    .line 1663
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOpen()Z
    .locals 2

    .line 925
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSlideable()Z
    .locals 1

    .line 944
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 434
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 436
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 440
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 443
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 444
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 445
    .local v2, "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 443
    .end local v2    # "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 448
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 771
    .local v0, "action":I
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 773
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 774
    .local v1, "secondChild":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 775
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 776
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 775
    invoke-virtual {v3, v1, v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v3

    xor-int/2addr v3, v2

    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 780
    .end local v1    # "secondChild":Landroid/view/View;
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 785
    :cond_1
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_8

    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 790
    :cond_2
    const/4 v1, 0x0

    .line 792
    .local v1, "interceptTap":Z
    if-eqz v0, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    goto :goto_0

    .line 808
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 809
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 810
    .local v5, "y":F
    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 811
    .local v6, "adx":F
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 812
    .local v7, "ady":F
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v8

    .line 813
    .local v8, "slop":I
    int-to-float v9, v8

    cmpl-float v9, v6, v9

    if-lez v9, :cond_5

    cmpl-float v9, v7, v6

    if-lez v9, :cond_5

    .line 814
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 815
    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 816
    return v3

    .line 794
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "adx":F
    .end local v7    # "ady":F
    .end local v8    # "slop":I
    :cond_4
    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 796
    .restart local v4    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 797
    .restart local v5    # "y":F
    iput v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 798
    iput v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 800
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v8, v4

    float-to-int v9, v5

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 801
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 802
    const/4 v1, 0x1

    .line 821
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_5
    :goto_0
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 823
    .local v4, "interceptForDrag":Z
    if-nez v4, :cond_7

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_1
    return v2

    .line 786
    .end local v1    # "interceptTap":Z
    .end local v4    # "interceptForDrag":Z
    :cond_8
    :goto_2
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 787
    return v3

    .line 781
    :cond_9
    :goto_3
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 782
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 664
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .line 665
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 666
    iget-object v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto :goto_0

    .line 668
    :cond_0
    iget-object v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 670
    :goto_0
    sub-int v3, p4, p2

    .line 671
    .local v3, "width":I
    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    .line 672
    .local v4, "paddingStart":I
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    .line 673
    .local v5, "paddingEnd":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v6

    .line 675
    .local v6, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v7

    .line 676
    .local v7, "childCount":I
    move v8, v4

    .line 677
    .local v8, "xStart":I
    move v9, v8

    .line 679
    .local v9, "nextXStart":I
    iget-boolean v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v10, :cond_4

    .line 680
    iget-boolean v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v10, :cond_3

    iget-boolean v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    if-eqz v10, :cond_3

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    iput v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 683
    :cond_4
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v7, :cond_b

    .line 684
    invoke-virtual {v0, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 686
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v2, 0x8

    if-ne v15, v2, :cond_5

    .line 687
    move/from16 v20, v4

    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_9

    .line 690
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 692
    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 693
    .local v15, "childWidth":I
    const/16 v16, 0x0

    .line 695
    .local v16, "offset":I
    iget-boolean v13, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v13, :cond_8

    .line 696
    iget v13, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v12, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v12

    .line 697
    .local v13, "margin":I
    sub-int v12, v3, v5

    iget v11, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int/2addr v12, v11

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int/2addr v11, v8

    sub-int/2addr v11, v13

    .line 699
    .local v11, "range":I
    iput v11, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    .line 700
    if-eqz v1, :cond_6

    iget v12, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    :cond_6
    iget v12, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    .line 701
    .local v12, "lpMargin":I
    :goto_5
    add-int v18, v8, v12

    add-int v18, v18, v11

    div-int/lit8 v19, v15, 0x2

    move/from16 v20, v4

    .end local v4    # "paddingStart":I
    .local v20, "paddingStart":I
    add-int v4, v18, v19

    move/from16 v18, v13

    .end local v13    # "margin":I
    .local v18, "margin":I
    sub-int v13, v3, v5

    if-le v4, v13, :cond_7

    const/4 v13, 0x1

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    :goto_6
    iput-boolean v13, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 702
    int-to-float v4, v11

    iget v13, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    mul-float v4, v4, v13

    float-to-int v4, v4

    .line 703
    .local v4, "pos":I
    add-int v13, v4, v12

    add-int/2addr v8, v13

    .line 704
    int-to-float v13, v4

    move-object/from16 v19, v2

    .end local v2    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .local v19, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v13, v2

    iput v13, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 705
    .end local v4    # "pos":I
    .end local v11    # "range":I
    .end local v12    # "lpMargin":I
    .end local v18    # "margin":I
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_7

    .end local v19    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v20    # "paddingStart":I
    .restart local v2    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .local v4, "paddingStart":I
    :cond_8
    move-object/from16 v19, v2

    move/from16 v20, v4

    .end local v2    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v4    # "paddingStart":I
    .restart local v19    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .restart local v20    # "paddingStart":I
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_9

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v2, :cond_9

    .line 706
    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v4, v11, v4

    int-to-float v2, v2

    mul-float v4, v4, v2

    float-to-int v2, v4

    .line 707
    .end local v16    # "offset":I
    .local v2, "offset":I
    move v8, v9

    move/from16 v16, v2

    goto :goto_7

    .line 705
    .end local v2    # "offset":I
    .restart local v16    # "offset":I
    :cond_9
    const/high16 v11, 0x3f800000    # 1.0f

    .line 709
    move v8, v9

    .line 714
    :goto_7
    if-eqz v1, :cond_a

    .line 715
    sub-int v2, v3, v8

    add-int v2, v2, v16

    .line 716
    .local v2, "childRight":I
    sub-int v4, v2, v15

    .local v4, "childLeft":I
    goto :goto_8

    .line 718
    .end local v2    # "childRight":I
    .end local v4    # "childLeft":I
    :cond_a
    sub-int v4, v8, v16

    .line 719
    .restart local v4    # "childLeft":I
    add-int v2, v4, v15

    .line 722
    .restart local v2    # "childRight":I
    :goto_8
    move v12, v6

    .line 723
    .local v12, "childTop":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v12

    .line 724
    .local v13, "childBottom":I
    invoke-virtual {v14, v4, v6, v2, v13}, Landroid/view/View;->layout(IIII)V

    .line 726
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v17

    add-int v9, v9, v17

    .line 683
    .end local v2    # "childRight":I
    .end local v4    # "childLeft":I
    .end local v12    # "childTop":I
    .end local v13    # "childBottom":I
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "childWidth":I
    .end local v16    # "offset":I
    .end local v19    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v20

    const/4 v2, 0x1

    goto/16 :goto_4

    .end local v20    # "paddingStart":I
    .local v4, "paddingStart":I
    :cond_b
    move/from16 v20, v4

    .line 729
    .end local v4    # "paddingStart":I
    .end local v10    # "i":I
    .restart local v20    # "paddingStart":I
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v2, :cond_f

    .line 730
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_d

    .line 731
    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v2, :cond_c

    .line 732
    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {v0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 734
    :cond_c
    iget-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v2, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_e

    .line 735
    iget-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {v0, v2, v4, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_b

    .line 739
    :cond_d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v7, :cond_e

    .line 740
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    const/4 v11, 0x0

    invoke-direct {v0, v4, v11, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 739
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 743
    .end local v2    # "i":I
    :cond_e
    :goto_b
    iget-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 746
    :cond_f
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 747
    return-void
.end method

.method protected onMeasure(II)V
    .locals 29
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 452
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 453
    .local v1, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 454
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 455
    .local v3, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 457
    .local v4, "heightSize":I
    const/high16 v5, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v1, v6, :cond_2

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 463
    if-ne v1, v5, :cond_0

    .line 464
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    .line 465
    :cond_0
    if-nez v1, :cond_4

    .line 466
    const/high16 v1, 0x40000000    # 2.0f

    .line 467
    const/16 v2, 0x12c

    goto :goto_0

    .line 470
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 472
    :cond_2
    if-nez v3, :cond_4

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 477
    if-nez v3, :cond_4

    .line 478
    const/high16 v3, -0x80000000

    .line 479
    const/16 v4, 0x12c

    goto :goto_0

    .line 482
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Height must not be UNSPECIFIED"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 486
    :cond_4
    :goto_0
    const/4 v7, 0x0

    .line 487
    .local v7, "layoutHeight":I
    const/4 v8, -0x1

    .line 488
    .local v8, "maxLayoutHeight":I
    if-eq v3, v5, :cond_6

    if-eq v3, v6, :cond_5

    goto :goto_1

    .line 490
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    move v8, v9

    move v7, v9

    .line 491
    goto :goto_1

    .line 493
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v10

    sub-int v8, v9, v10

    .line 497
    :goto_1
    const/4 v9, 0x0

    .line 498
    .local v9, "weightSum":F
    const/4 v10, 0x0

    .line 499
    .local v10, "canSlide":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v11

    sub-int v11, v2, v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    .line 500
    .local v11, "widthAvailable":I
    move v12, v11

    .line 501
    .local v12, "widthRemaining":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v13

    .line 503
    .local v13, "childCount":I
    const/4 v14, 0x2

    if-le v13, v14, :cond_7

    .line 504
    const-string v14, "SlidingPaneLayout"

    const-string v15, "onMeasure: More than two child views are not supported."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_7
    const/4 v14, 0x0

    iput-object v14, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 512
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    const/16 v15, 0x8

    const/16 v17, 0x1

    const/16 v19, 0x0

    if-ge v14, v13, :cond_11

    .line 513
    invoke-virtual {v0, v14}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 514
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v5, v21

    check-cast v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 516
    .local v5, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    move/from16 v21, v1

    .end local v1    # "widthMode":I
    .local v21, "widthMode":I
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v15, :cond_8

    .line 517
    const/4 v1, 0x0

    iput-boolean v1, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 518
    move/from16 v22, v4

    goto/16 :goto_6

    .line 521
    :cond_8
    iget v1, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v19

    if-lez v1, :cond_9

    .line 522
    iget v1, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    add-float/2addr v9, v1

    .line 526
    iget v1, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v1, :cond_9

    move/from16 v22, v4

    goto/16 :goto_6

    .line 530
    :cond_9
    iget v1, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v15, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v15

    .line 531
    .local v1, "horizontalMargin":I
    iget v15, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v22, v4

    const/4 v4, -0x2

    .end local v4    # "heightSize":I
    .local v22, "heightSize":I
    if-ne v15, v4, :cond_a

    .line 532
    sub-int v4, v11, v1

    const/high16 v15, -0x80000000

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "childWidthSpec":I
    goto :goto_3

    .line 534
    .end local v4    # "childWidthSpec":I
    :cond_a
    iget v4, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v4, v15, :cond_b

    .line 535
    sub-int v4, v11, v1

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childWidthSpec":I
    goto :goto_3

    .line 538
    .end local v4    # "childWidthSpec":I
    :cond_b
    const/high16 v15, 0x40000000    # 2.0f

    iget v4, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 542
    .restart local v4    # "childWidthSpec":I
    :goto_3
    iget v15, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v19, v1

    const/4 v1, -0x2

    .end local v1    # "horizontalMargin":I
    .local v19, "horizontalMargin":I
    if-ne v15, v1, :cond_c

    .line 543
    const/high16 v1, -0x80000000

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .local v15, "childHeightSpec":I
    goto :goto_4

    .line 544
    .end local v15    # "childHeightSpec":I
    :cond_c
    iget v1, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_d

    .line 545
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .restart local v15    # "childHeightSpec":I
    goto :goto_4

    .line 547
    .end local v15    # "childHeightSpec":I
    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    iget v15, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 550
    .restart local v15    # "childHeightSpec":I
    :goto_4
    invoke-virtual {v6, v4, v15}, Landroid/view/View;->measure(II)V

    .line 551
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 552
    .local v1, "childWidth":I
    move/from16 v18, v4

    .end local v4    # "childWidthSpec":I
    .local v18, "childWidthSpec":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 554
    .local v4, "childHeight":I
    move/from16 v20, v9

    const/high16 v9, -0x80000000

    .end local v9    # "weightSum":F
    .local v20, "weightSum":F
    if-ne v3, v9, :cond_e

    if-le v4, v7, :cond_e

    .line 555
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 558
    :cond_e
    sub-int/2addr v12, v1

    .line 559
    if-gez v12, :cond_f

    const/4 v9, 0x1

    goto :goto_5

    :cond_f
    const/4 v9, 0x0

    :goto_5
    iput-boolean v9, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int/2addr v9, v10

    .line 560
    .end local v10    # "canSlide":Z
    .local v9, "canSlide":Z
    iget-boolean v10, v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v10, :cond_10

    .line 561
    iput-object v6, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 512
    .end local v1    # "childWidth":I
    .end local v4    # "childHeight":I
    .end local v5    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v6    # "child":Landroid/view/View;
    .end local v15    # "childHeightSpec":I
    .end local v18    # "childWidthSpec":I
    .end local v19    # "horizontalMargin":I
    :cond_10
    move v10, v9

    move/from16 v9, v20

    .end local v20    # "weightSum":F
    .local v9, "weightSum":F
    .restart local v10    # "canSlide":Z
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v21

    move/from16 v4, v22

    const/high16 v5, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    goto/16 :goto_2

    .end local v21    # "widthMode":I
    .end local v22    # "heightSize":I
    .local v1, "widthMode":I
    .local v4, "heightSize":I
    :cond_11
    move/from16 v21, v1

    move/from16 v22, v4

    .line 566
    .end local v1    # "widthMode":I
    .end local v4    # "heightSize":I
    .end local v14    # "i":I
    .restart local v21    # "widthMode":I
    .restart local v22    # "heightSize":I
    if-nez v10, :cond_13

    cmpl-float v1, v9, v19

    if-lez v1, :cond_12

    goto :goto_7

    :cond_12
    move/from16 v24, v3

    move/from16 v28, v8

    move/from16 v25, v13

    goto/16 :goto_f

    .line 567
    :cond_13
    :goto_7
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int v1, v11, v1

    .line 569
    .local v1, "fixedPanelWidthLimit":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v13, :cond_25

    .line 570
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 572
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v15, :cond_14

    .line 573
    move/from16 v27, v1

    move/from16 v24, v3

    move/from16 v28, v8

    move/from16 v25, v13

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_e

    .line 576
    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 578
    .local v6, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v15, :cond_15

    .line 579
    move/from16 v27, v1

    move/from16 v24, v3

    move/from16 v28, v8

    move/from16 v25, v13

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_e

    .line 582
    :cond_15
    iget v14, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v14, :cond_16

    iget v14, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    cmpl-float v14, v14, v19

    if-lez v14, :cond_16

    const/4 v14, 0x1

    goto :goto_9

    :cond_16
    const/4 v14, 0x0

    .line 583
    .local v14, "skippedFirstPass":Z
    :goto_9
    if-eqz v14, :cond_17

    const/16 v23, 0x0

    goto :goto_a

    :cond_17
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    :goto_a
    move/from16 v24, v23

    .line 584
    .local v24, "measuredWidth":I
    if-eqz v10, :cond_1e

    iget-object v15, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eq v5, v15, :cond_1e

    .line 585
    iget v15, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-gez v15, :cond_1d

    move/from16 v15, v24

    .end local v24    # "measuredWidth":I
    .local v15, "measuredWidth":I
    if-gt v15, v1, :cond_19

    move/from16 v24, v3

    .end local v3    # "heightMode":I
    .local v24, "heightMode":I
    iget v3, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    cmpl-float v3, v3, v19

    if-lez v3, :cond_18

    goto :goto_b

    :cond_18
    move/from16 v27, v1

    move/from16 v28, v8

    move/from16 v25, v13

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_e

    .end local v24    # "heightMode":I
    .restart local v3    # "heightMode":I
    :cond_19
    move/from16 v24, v3

    .line 589
    .end local v3    # "heightMode":I
    .restart local v24    # "heightMode":I
    :goto_b
    if-eqz v14, :cond_1c

    .line 592
    iget v3, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v25, v13

    const/4 v13, -0x2

    .end local v13    # "childCount":I
    .local v25, "childCount":I
    if-ne v3, v13, :cond_1a

    .line 593
    const/high16 v3, -0x80000000

    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/high16 v3, 0x40000000    # 2.0f

    .local v13, "childHeightSpec":I
    goto :goto_c

    .line 595
    .end local v13    # "childHeightSpec":I
    :cond_1a
    iget v3, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v13, -0x1

    if-ne v3, v13, :cond_1b

    .line 596
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .restart local v13    # "childHeightSpec":I
    goto :goto_c

    .line 599
    .end local v13    # "childHeightSpec":I
    :cond_1b
    const/high16 v3, 0x40000000    # 2.0f

    iget v13, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v13, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .restart local v13    # "childHeightSpec":I
    goto :goto_c

    .line 603
    .end local v25    # "childCount":I
    .local v13, "childCount":I
    :cond_1c
    move/from16 v25, v13

    const/high16 v3, 0x40000000    # 2.0f

    .line 604
    .end local v13    # "childCount":I
    .restart local v25    # "childCount":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 603
    invoke-static {v13, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 606
    .local v13, "childHeightSpec":I
    :goto_c
    move/from16 v26, v14

    .end local v14    # "skippedFirstPass":Z
    .local v26, "skippedFirstPass":Z
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 608
    .local v14, "childWidthSpec":I
    invoke-virtual {v5, v14, v13}, Landroid/view/View;->measure(II)V

    .line 609
    .end local v13    # "childHeightSpec":I
    .end local v14    # "childWidthSpec":I
    move/from16 v27, v1

    move/from16 v28, v8

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_e

    .line 585
    .end local v15    # "measuredWidth":I
    .end local v25    # "childCount":I
    .end local v26    # "skippedFirstPass":Z
    .restart local v3    # "heightMode":I
    .local v13, "childCount":I
    .local v14, "skippedFirstPass":Z
    .local v24, "measuredWidth":I
    :cond_1d
    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v15, v24

    move/from16 v24, v3

    .end local v3    # "heightMode":I
    .end local v13    # "childCount":I
    .end local v14    # "skippedFirstPass":Z
    .restart local v15    # "measuredWidth":I
    .local v24, "heightMode":I
    .restart local v25    # "childCount":I
    .restart local v26    # "skippedFirstPass":Z
    move/from16 v27, v1

    move/from16 v28, v8

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_e

    .line 584
    .end local v15    # "measuredWidth":I
    .end local v25    # "childCount":I
    .end local v26    # "skippedFirstPass":Z
    .restart local v3    # "heightMode":I
    .restart local v13    # "childCount":I
    .restart local v14    # "skippedFirstPass":Z
    .local v24, "measuredWidth":I
    :cond_1e
    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v15, v24

    move/from16 v24, v3

    .line 610
    .end local v3    # "heightMode":I
    .end local v13    # "childCount":I
    .end local v14    # "skippedFirstPass":Z
    .restart local v15    # "measuredWidth":I
    .local v24, "heightMode":I
    .restart local v25    # "childCount":I
    .restart local v26    # "skippedFirstPass":Z
    iget v3, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    cmpl-float v3, v3, v19

    if-lez v3, :cond_24

    .line 612
    iget v3, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v3, :cond_21

    .line 614
    iget v3, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v13, -0x2

    if-ne v3, v13, :cond_1f

    .line 615
    const/high16 v3, -0x80000000

    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move v3, v14

    const/high16 v14, 0x40000000    # 2.0f

    .local v14, "childHeightSpec":I
    goto :goto_d

    .line 617
    .end local v14    # "childHeightSpec":I
    :cond_1f
    const/high16 v3, -0x80000000

    iget v14, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v14, v3, :cond_20

    .line 618
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v3, v16

    .local v16, "childHeightSpec":I
    goto :goto_d

    .line 621
    .end local v16    # "childHeightSpec":I
    :cond_20
    const/high16 v14, 0x40000000    # 2.0f

    iget v3, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    goto :goto_d

    .line 625
    .end local v3    # "childHeightSpec":I
    :cond_21
    const/4 v13, -0x2

    const/high16 v14, 0x40000000    # 2.0f

    .line 626
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 625
    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 629
    .restart local v3    # "childHeightSpec":I
    :goto_d
    if-eqz v10, :cond_23

    .line 631
    iget v13, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v14, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    .line 632
    .local v13, "horizontalMargin":I
    sub-int v14, v11, v13

    .line 633
    .local v14, "newWidth":I
    move/from16 v27, v1

    move/from16 v28, v8

    const/high16 v1, 0x40000000    # 2.0f

    .end local v1    # "fixedPanelWidthLimit":I
    .end local v8    # "maxLayoutHeight":I
    .local v27, "fixedPanelWidthLimit":I
    .local v28, "maxLayoutHeight":I
    invoke-static {v14, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 635
    .local v8, "childWidthSpec":I
    if-eq v15, v14, :cond_22

    .line 636
    invoke-virtual {v5, v8, v3}, Landroid/view/View;->measure(II)V

    .line 638
    .end local v8    # "childWidthSpec":I
    .end local v13    # "horizontalMargin":I
    .end local v14    # "newWidth":I
    :cond_22
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_e

    .line 640
    .end local v27    # "fixedPanelWidthLimit":I
    .end local v28    # "maxLayoutHeight":I
    .restart local v1    # "fixedPanelWidthLimit":I
    .local v8, "maxLayoutHeight":I
    :cond_23
    move/from16 v27, v1

    move/from16 v28, v8

    .end local v1    # "fixedPanelWidthLimit":I
    .end local v8    # "maxLayoutHeight":I
    .restart local v27    # "fixedPanelWidthLimit":I
    .restart local v28    # "maxLayoutHeight":I
    const/4 v1, 0x0

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 641
    .local v8, "widthToDistribute":I
    iget v13, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    int-to-float v14, v8

    mul-float v13, v13, v14

    div-float/2addr v13, v9

    float-to-int v13, v13

    .line 642
    .local v13, "addedWidth":I
    add-int v14, v15, v13

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v14, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 644
    .local v14, "childWidthSpec":I
    invoke-virtual {v5, v14, v3}, Landroid/view/View;->measure(II)V

    goto :goto_e

    .line 610
    .end local v3    # "childHeightSpec":I
    .end local v13    # "addedWidth":I
    .end local v14    # "childWidthSpec":I
    .end local v27    # "fixedPanelWidthLimit":I
    .end local v28    # "maxLayoutHeight":I
    .restart local v1    # "fixedPanelWidthLimit":I
    .local v8, "maxLayoutHeight":I
    :cond_24
    move/from16 v27, v1

    move/from16 v28, v8

    const/high16 v1, 0x40000000    # 2.0f

    .line 569
    .end local v1    # "fixedPanelWidthLimit":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v8    # "maxLayoutHeight":I
    .end local v15    # "measuredWidth":I
    .end local v26    # "skippedFirstPass":Z
    .restart local v27    # "fixedPanelWidthLimit":I
    .restart local v28    # "maxLayoutHeight":I
    :goto_e
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v24

    move/from16 v13, v25

    move/from16 v1, v27

    move/from16 v8, v28

    const/16 v15, 0x8

    goto/16 :goto_8

    .end local v24    # "heightMode":I
    .end local v25    # "childCount":I
    .end local v27    # "fixedPanelWidthLimit":I
    .end local v28    # "maxLayoutHeight":I
    .restart local v1    # "fixedPanelWidthLimit":I
    .local v3, "heightMode":I
    .restart local v8    # "maxLayoutHeight":I
    .local v13, "childCount":I
    :cond_25
    move/from16 v27, v1

    move/from16 v24, v3

    move/from16 v28, v8

    move/from16 v25, v13

    .line 650
    .end local v1    # "fixedPanelWidthLimit":I
    .end local v3    # "heightMode":I
    .end local v4    # "i":I
    .end local v8    # "maxLayoutHeight":I
    .end local v13    # "childCount":I
    .restart local v24    # "heightMode":I
    .restart local v25    # "childCount":I
    .restart local v28    # "maxLayoutHeight":I
    :goto_f
    move v1, v2

    .line 651
    .local v1, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 653
    .local v3, "measuredHeight":I
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 654
    iput-boolean v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 656
    iget-object v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v4

    if-eqz v4, :cond_26

    if-nez v10, :cond_26

    .line 658
    iget-object v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 660
    :cond_26
    return-void
.end method

.method onPanelDragged(I)V
    .locals 10
    .param p1, "newLeft"    # I

    .line 948
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 950
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 951
    return-void

    .line 953
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 954
    .local v0, "isLayoutRtl":Z
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 956
    .local v1, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 957
    .local v2, "childWidth":I
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, v2

    goto :goto_0

    :cond_1
    move v3, p1

    .line 959
    .local v3, "newStart":I
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    .line 960
    .local v4, "paddingStart":I
    :goto_1
    if-eqz v0, :cond_3

    iget v5, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_3
    iget v5, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    .line 961
    .local v5, "lpMargin":I
    :goto_2
    add-int v6, v4, v5

    .line 963
    .local v6, "startBound":I
    sub-int v7, v3, v6

    int-to-float v7, v7

    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 965
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v8, :cond_4

    .line 966
    invoke-direct {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 969
    :cond_4
    iget-boolean v7, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v7, :cond_5

    .line 970
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v7, v8, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 972
    :cond_5
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 973
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1295
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_0

    .line 1296
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1297
    return-void

    .line 1300
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    .line 1301
    .local v0, "ss":Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1303
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v1, :cond_1

    .line 1304
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    goto :goto_0

    .line 1306
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    .line 1308
    :goto_0
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1309
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1285
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1287
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1288
    .local v1, "ss":Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v2

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :goto_0
    iput-boolean v2, v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 1290
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 751
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 753
    if-eq p1, p3, :cond_0

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 756
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 828
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 829
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 832
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 834
    const/4 v0, 0x1

    .line 836
    .local v0, "wantTouchEvents":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 846
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 847
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 848
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 849
    .local v2, "y":F
    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v3, v1, v3

    .line 850
    .local v3, "dx":F
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v4, v2, v4

    .line 851
    .local v4, "dy":F
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 852
    .local v5, "slop":I
    mul-float v6, v3, v3

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    mul-int v7, v5, v5

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v8, v1

    float-to-int v9, v2

    .line 853
    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 855
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    .line 856
    goto :goto_0

    .line 838
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v5    # "slop":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 839
    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 840
    .restart local v2    # "y":F
    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 841
    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 842
    nop

    .line 863
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_3
    :goto_0
    return v0
.end method

.method public openPane()Z
    .locals 2

    .line 897
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 760
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 761
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 762
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 764
    :cond_1
    return-void
.end method

.method setAllChildrenVisible()V
    .locals 5

    .line 405
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 406
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 407
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 408
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 405
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "i":I
    .end local v1    # "childCount":I
    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 323
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 324
    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    .line 335
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    .line 336
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0
    .param p1, "parallaxBy"    # I

    .line 286
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 287
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    .line 288
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1103
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1104
    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1113
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1114
    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1123
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1124
    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1137
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1138
    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1147
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1148
    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1157
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 1158
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 305
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 306
    return-void
.end method

.method public smoothSlideClosed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 905
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    .line 906
    return-void
.end method

.method public smoothSlideOpen()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 887
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 888
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 8
    .param p1, "slideOffset"    # F
    .param p2, "velocity"    # I

    .line 1056
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1058
    return v1

    .line 1061
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 1062
    .local v0, "isLayoutRtl":Z
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1065
    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 1066
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    iget v4, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1067
    .local v3, "startBound":I
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1068
    .local v4, "childWidth":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v7, v7

    mul-float v7, v7, p1

    add-float/2addr v6, v7

    int-to-float v7, v4

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v3, v5

    .line 1069
    .end local v4    # "childWidth":I
    .local v3, "x":I
    goto :goto_0

    .line 1070
    .end local v3    # "x":I
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    iget v4, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    .line 1071
    .local v3, "startBound":I
    int-to-float v4, v3

    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v5, v5

    mul-float v5, v5, p1

    add-float/2addr v4, v5

    float-to-int v4, v4

    move v3, v4

    .line 1074
    .local v3, "x":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1075
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1076
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1077
    const/4 v1, 0x1

    return v1

    .line 1079
    :cond_2
    return v1
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 19
    .param p1, "panel"    # Landroid/view/View;

    .line 359
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .line 360
    .local v1, "isLayoutRtl":Z
    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    .line 361
    .local v2, "startBound":I
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 362
    .local v3, "endBound":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v4

    .line 363
    .local v4, "topBound":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 368
    .local v5, "bottomBound":I
    if-eqz v0, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/support/v4/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 370
    .local v6, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 371
    .local v7, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v8

    .line 372
    .local v8, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v9

    .local v9, "bottom":I
    goto :goto_2

    .line 374
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "top":I
    .end local v9    # "bottom":I
    :cond_2
    const/4 v6, 0x0

    move v9, v6

    .restart local v9    # "bottom":I
    move v8, v6

    .restart local v8    # "top":I
    move v7, v6

    .line 377
    .restart local v6    # "left":I
    .restart local v7    # "right":I
    :goto_2
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    .local v11, "childCount":I
    :goto_3
    if-ge v10, v11, :cond_8

    .line 378
    move-object/from16 v12, p0

    invoke-virtual {v12, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 380
    .local v13, "child":Landroid/view/View;
    if-ne v13, v0, :cond_3

    .line 382
    move/from16 v16, v1

    goto/16 :goto_8

    .line 383
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_4

    .line 384
    move/from16 v16, v1

    goto :goto_7

    .line 387
    :cond_4
    if-eqz v1, :cond_5

    move v14, v3

    goto :goto_4

    :cond_5
    move v14, v2

    .line 388
    :goto_4
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 387
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 389
    .local v14, "clampedChildLeft":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 390
    .local v15, "clampedChildTop":I
    if-eqz v1, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v3

    .line 391
    :goto_5
    move/from16 v16, v1

    .end local v1    # "isLayoutRtl":Z
    .local v16, "isLayoutRtl":Z
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v1

    .line 390
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 392
    .local v0, "clampedChildRight":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 394
    .local v1, "clampedChildBottom":I
    if-lt v14, v6, :cond_7

    if-lt v15, v8, :cond_7

    if-gt v0, v7, :cond_7

    if-gt v1, v9, :cond_7

    .line 396
    const/16 v17, 0x4

    move/from16 v18, v0

    move/from16 v0, v17

    .local v17, "vis":I
    goto :goto_6

    .line 398
    .end local v17    # "vis":I
    :cond_7
    const/16 v17, 0x0

    move/from16 v18, v0

    move/from16 v0, v17

    .line 400
    .local v0, "vis":I
    .local v18, "clampedChildRight":I
    :goto_6
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 377
    .end local v0    # "vis":I
    .end local v1    # "clampedChildBottom":I
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "clampedChildLeft":I
    .end local v15    # "clampedChildTop":I
    .end local v18    # "clampedChildRight":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    goto :goto_3

    .end local v16    # "isLayoutRtl":Z
    .local v1, "isLayoutRtl":Z
    :cond_8
    move-object/from16 v12, p0

    move/from16 v16, v1

    .line 402
    .end local v1    # "isLayoutRtl":Z
    .end local v10    # "i":I
    .end local v11    # "childCount":I
    .restart local v16    # "isLayoutRtl":Z
    :goto_8
    return-void
.end method
