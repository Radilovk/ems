.class public Lcom/isaigu/gymapp/widget/CircularProgressView;
.super Landroid/view/View;
.source "CircularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;
    }
.end annotation


# static fields
.field private static final INDETERMINANT_MIN_SWEEP:F = 15.0f


# instance fields
.field private actualProgress:F

.field private animDuration:I

.field private animSteps:I

.field private animSwoopDuration:I

.field private animSyncDuration:I

.field private autostartAnimation:Z

.field private bounds:Landroid/graphics/RectF;

.field private color:I

.field private currentProgress:F

.field private indeterminateAnimator:Landroid/animation/AnimatorSet;

.field private indeterminateRotateOffset:F

.field private indeterminateSweep:F

.field private initialStartAngle:F

.field private isIndeterminate:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private maxProgress:F

.field private paint:Landroid/graphics/Paint;

.field private progressAnimator:Landroid/animation/ValueAnimator;

.field private size:I

.field private startAngle:F

.field private startAngleRotate:Landroid/animation/ValueAnimator;

.field private thickness:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    iput v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->size:I

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/CircularProgressView;->init(Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->size:I

    .line 57
    invoke-virtual {p0, p2, v0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->init(Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->size:I

    .line 62
    invoke-virtual {p0, p2, p3}, Lcom/isaigu/gymapp/widget/CircularProgressView;->init(Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/widget/CircularProgressView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/CircularProgressView;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->actualProgress:F

    return p1
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/widget/CircularProgressView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/CircularProgressView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/widget/CircularProgressView;)F
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/CircularProgressView;

    .prologue
    .line 29
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngle:F

    return v0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/widget/CircularProgressView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/CircularProgressView;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngle:F

    return p1
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/widget/CircularProgressView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/CircularProgressView;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateSweep:F

    return p1
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/widget/CircularProgressView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/CircularProgressView;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateRotateOffset:F

    return p1
.end method

.method private createIndeterminateAnimator(F)Landroid/animation/AnimatorSet;
    .locals 11
    .param p1, "step"    # F

    .prologue
    .line 430
    const/high16 v7, 0x43b40000    # 360.0f

    iget v8, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSteps:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSteps:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x41700000    # 15.0f

    add-float v2, v7, v8

    .line 431
    .local v2, "maxSweep":F
    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x41700000    # 15.0f

    sub-float v8, v2, v8

    mul-float/2addr v8, p1

    add-float v6, v7, v8

    .line 434
    .local v6, "start":F
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x41700000    # 15.0f

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 435
    .local v1, "frontEndExtend":Landroid/animation/ValueAnimator;
    iget v7, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animDuration:I

    iget v8, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSteps:I

    div-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-long v8, v7

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 436
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 437
    new-instance v7, Lcom/isaigu/gymapp/widget/CircularProgressView$6;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/widget/CircularProgressView$6;-><init>(Lcom/isaigu/gymapp/widget/CircularProgressView;)V

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 446
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x44340000    # 720.0f

    mul-float/2addr v9, p1

    iget v10, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v9, p1

    const/high16 v10, 0x44340000    # 720.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 447
    .local v3, "rotateAnimator1":Landroid/animation/ValueAnimator;
    iget v7, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animDuration:I

    iget v8, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSteps:I

    div-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-long v8, v7

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 448
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 449
    new-instance v7, Lcom/isaigu/gymapp/widget/CircularProgressView$7;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/widget/CircularProgressView$7;-><init>(Lcom/isaigu/gymapp/widget/CircularProgressView;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 459
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v6, v7, v8

    const/4 v8, 0x1

    add-float v9, v6, v2

    const/high16 v10, 0x41700000    # 15.0f

    sub-float/2addr v9, v10

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 460
    .local v0, "backEndRetract":Landroid/animation/ValueAnimator;
    iget v7, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animDuration:I

    iget v8, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSteps:I

    div-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 461
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 462
    new-instance v7, Lcom/isaigu/gymapp/widget/CircularProgressView$8;

    invoke-direct {v7, p0, v2, v6}, Lcom/isaigu/gymapp/widget/CircularProgressView$8;-><init>(Lcom/isaigu/gymapp/widget/CircularProgressView;FF)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 472
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v9, p1

    const/high16 v10, 0x44340000    # 720.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v9, p1

    const/high16 v10, 0x44340000    # 720.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 473
    .local v4, "rotateAnimator2":Landroid/animation/ValueAnimator;
    iget v7, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animDuration:I

    iget v8, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSteps:I

    div-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 474
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 475
    new-instance v7, Lcom/isaigu/gymapp/widget/CircularProgressView$9;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/widget/CircularProgressView$9;-><init>(Lcom/isaigu/gymapp/widget/CircularProgressView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 482
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 483
    .local v5, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 484
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 485
    return-object v5
.end method

.method private initAttributes(Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v11, 0x5

    const v10, 0x7f0d0025

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/R$styleable;->CircularProgressView:[I

    invoke-virtual {v4, p1, v5, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 84
    .local v2, "resources":Landroid/content/res/Resources;
    const v4, 0x7f0c000c

    .line 85
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    .line 84
    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->currentProgress:F

    .line 86
    const v4, 0x7f0c000b

    .line 87
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    .line 86
    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->maxProgress:F

    .line 88
    const/4 v4, 0x6

    const v5, 0x7f090058

    .line 89
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 88
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->thickness:I

    .line 90
    const/4 v4, 0x7

    const v5, 0x7f0b0006

    .line 91
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 90
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->isIndeterminate:Z

    .line 92
    const/16 v4, 0x8

    const v5, 0x7f0b0005

    .line 93
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 92
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->autostartAnimation:Z

    .line 94
    const/16 v4, 0xa

    const v5, 0x7f0c000d

    .line 95
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    .line 94
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->initialStartAngle:F

    .line 96
    iget v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->initialStartAngle:F

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngle:F

    .line 98
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "colorAccent"

    const-string v6, "attr"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, "accentColor":I
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->color:I

    .line 120
    :goto_0
    const/4 v4, 0x2

    const v5, 0x7f0c0007

    .line 121
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 120
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animDuration:I

    .line 122
    const/4 v4, 0x3

    const v5, 0x7f0c0009

    .line 123
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 122
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSwoopDuration:I

    .line 124
    const/4 v4, 0x4

    const v5, 0x7f0c000a

    .line 125
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 124
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSyncDuration:I

    .line 126
    const/16 v4, 0x9

    const v5, 0x7f0c0008

    .line 127
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 126
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSteps:I

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    return-void

    .line 105
    :cond_0
    if-eqz v1, :cond_1

    .line 106
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 107
    .local v3, "t":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 108
    iget v4, v3, Landroid/util/TypedValue;->data:I

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->color:I

    goto :goto_0

    .line 111
    .end local v3    # "t":Landroid/util/TypedValue;
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v9, [I

    const v6, 0x1010435

    aput v6, v5, v8

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 113
    .local v3, "t":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->color:I

    goto :goto_0

    .line 117
    .end local v3    # "t":Landroid/content/res/TypedArray;
    :cond_2
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->color:I

    goto :goto_0
.end method

.method private updateBounds()V
    .locals 8

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getPaddingLeft()I

    move-result v0

    .line 153
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getPaddingTop()I

    move-result v1

    .line 154
    .local v1, "paddingTop":I
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->bounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->thickness:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->thickness:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->size:I

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->thickness:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->size:I

    sub-int/2addr v6, v1

    iget v7, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->thickness:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    return-void
.end method

.method private updatePaint()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->thickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 163
    return-void
.end method


# virtual methods
.method public addListener(Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->color:I

    return v0
.end method

.method public getMaxProgress()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->maxProgress:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->currentProgress:F

    return v0
.end method

.method public getThickness()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->thickness:I

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->listeners:Ljava/util/List;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/widget/CircularProgressView;->initAttributes(Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->paint:Landroid/graphics/Paint;

    .line 71
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->updatePaint()V

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->bounds:Landroid/graphics/RectF;

    .line 74
    return-void
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->isIndeterminate:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 490
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 491
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->autostartAnimation:Z

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAnimation()V

    .line 493
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 497
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 498
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->stopAnimation()V

    .line 499
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    .line 167
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->currentProgress:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->maxProgress:F

    div-float/2addr v0, v1

    mul-float v3, v0, v2

    .line 171
    .local v3, "sweepAngle":F
    :goto_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->isIndeterminate:Z

    if-nez v0, :cond_1

    .line 172
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngle:F

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 175
    :goto_1
    return-void

    .line 170
    .end local v3    # "sweepAngle":F
    :cond_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->actualProgress:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->maxProgress:F

    div-float/2addr v0, v1

    mul-float v3, v0, v2

    goto :goto_0

    .line 174
    .restart local v3    # "sweepAngle":F
    :cond_1
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->bounds:Landroid/graphics/RectF;

    iget v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngle:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateRotateOffset:F

    add-float v7, v0, v1

    iget v8, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateSweep:F

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 134
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getPaddingRight()I

    move-result v5

    add-int v2, v4, v5

    .line 135
    .local v2, "xPad":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 136
    .local v3, "yPad":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getMeasuredWidth()I

    move-result v4

    sub-int v1, v4, v2

    .line 137
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getMeasuredHeight()I

    move-result v4

    sub-int v0, v4, v3

    .line 138
    .local v0, "height":I
    if-ge v1, v0, :cond_0

    .end local v1    # "width":I
    :goto_0
    iput v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->size:I

    .line 139
    iget v4, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->size:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->size:I

    add-int/2addr v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/isaigu/gymapp/widget/CircularProgressView;->setMeasuredDimension(II)V

    .line 141
    return-void

    .restart local v1    # "width":I
    :cond_0
    move v1, v0

    .line 138
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 146
    if-ge p1, p2, :cond_0

    .end local p1    # "w":I
    :goto_0
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->size:I

    .line 147
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->updateBounds()V

    .line 148
    return-void

    .restart local p1    # "w":I
    :cond_0
    move p1, p2

    .line 146
    goto :goto_0
.end method

.method public removeListener(Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public resetAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 332
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 334
    :cond_0
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 335
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 336
    :cond_1
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 337
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 340
    :cond_2
    iget-boolean v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->isIndeterminate:Z

    if-nez v5, :cond_4

    .line 343
    iget v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->initialStartAngle:F

    iput v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngle:F

    .line 344
    new-array v5, v10, [F

    iget v6, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngle:F

    aput v6, v5, v8

    iget v6, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngle:F

    const/high16 v7, 0x43b40000    # 360.0f

    add-float/2addr v6, v7

    aput v6, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    .line 345
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    iget v6, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSwoopDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 346
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 347
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/isaigu/gymapp/widget/CircularProgressView$3;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/widget/CircularProgressView$3;-><init>(Lcom/isaigu/gymapp/widget/CircularProgressView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 354
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 357
    const/4 v5, 0x0

    iput v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->actualProgress:F

    .line 358
    new-array v5, v10, [F

    iget v6, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->actualProgress:F

    aput v6, v5, v8

    iget v6, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->currentProgress:F

    aput v6, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    .line 359
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    iget v6, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSyncDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 360
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 361
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/isaigu/gymapp/widget/CircularProgressView$4;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/widget/CircularProgressView$4;-><init>(Lcom/isaigu/gymapp/widget/CircularProgressView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 407
    :cond_3
    return-void

    .line 373
    :cond_4
    const/high16 v5, 0x41700000    # 15.0f

    iput v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateSweep:F

    .line 375
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    .line 376
    const/4 v4, 0x0

    .line 377
    .local v4, "prevSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSteps:I

    if-ge v1, v5, :cond_6

    .line 379
    int-to-float v5, v1

    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/widget/CircularProgressView;->createIndeterminateAnimator(F)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 380
    .local v3, "nextSet":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 381
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    if-eqz v4, :cond_5

    .line 382
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 383
    :cond_5
    move-object v4, v3

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "nextSet":Landroid/animation/AnimatorSet;
    :cond_6
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/isaigu/gymapp/widget/CircularProgressView$5;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/widget/CircularProgressView$5;-><init>(Lcom/isaigu/gymapp/widget/CircularProgressView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 401
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;

    .line 402
    .local v2, "listener":Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;
    invoke-interface {v2}, Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;->onAnimationReset()V

    goto :goto_1
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->color:I

    .line 236
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->updatePaint()V

    .line 237
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->invalidate()V

    .line 238
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 5
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 191
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->isIndeterminate:Z

    .line 192
    .local v1, "old":Z
    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->isIndeterminate:Z

    if-eq v3, p1, :cond_1

    const/4 v2, 0x1

    .line 193
    .local v2, "reset":Z
    :goto_0
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->isIndeterminate:Z

    .line 194
    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->resetAnimation()V

    .line 196
    :cond_0
    if-eq v1, p1, :cond_2

    .line 197
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;

    .line 198
    .local v0, "listener":Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;->onModeChanged(Z)V

    goto :goto_1

    .line 192
    .end local v0    # "listener":Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;
    .end local v2    # "reset":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 201
    .restart local v2    # "reset":Z
    :cond_2
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 0
    .param p1, "maxProgress"    # F

    .prologue
    .line 253
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->maxProgress:F

    .line 254
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->invalidate()V

    .line 255
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "currentProgress"    # F

    .prologue
    .line 270
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->currentProgress:F

    .line 272
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->isIndeterminate:Z

    if-nez v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 275
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->actualProgress:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    .line 276
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->animSyncDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 277
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/isaigu/gymapp/widget/CircularProgressView$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/CircularProgressView$1;-><init>(Lcom/isaigu/gymapp/widget/CircularProgressView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 285
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/isaigu/gymapp/widget/CircularProgressView$2;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/widget/CircularProgressView$2;-><init>(Lcom/isaigu/gymapp/widget/CircularProgressView;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 294
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->invalidate()V

    .line 297
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;

    .line 298
    .local v0, "listener":Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;->onProgressUpdate(F)V

    goto :goto_0

    .line 300
    .end local v0    # "listener":Lcom/isaigu/gymapp/widget/CircularProgressView$CircularProgressViewListener;
    :cond_2
    return-void
.end method

.method public setThickness(I)V
    .locals 0
    .param p1, "thickness"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->thickness:I

    .line 217
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->updatePaint()V

    .line 218
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->updateBounds()V

    .line 219
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->invalidate()V

    .line 220
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->getVisibility()I

    move-result v0

    .line 504
    .local v0, "currentVisibility":I
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 505
    if-eq p1, v0, :cond_0

    .line 506
    if-nez p1, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->resetAnimation()V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 509
    :cond_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->stopAnimation()V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 0

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/CircularProgressView;->resetAnimation()V

    .line 325
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 416
    iput-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->startAngleRotate:Landroid/animation/ValueAnimator;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 420
    iput-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->progressAnimator:Landroid/animation/ValueAnimator;

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 424
    iput-object v1, p0, Lcom/isaigu/gymapp/widget/CircularProgressView;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    .line 426
    :cond_2
    return-void
.end method
