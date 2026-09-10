.class public Lcom/isaigu/gymapp/widget/SwitchButton;
.super Landroid/view/View;
.source "SwitchButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;,
        Lcom/isaigu/gymapp/widget/SwitchButton$State;
    }
.end annotation


# static fields
.field private static final DEF_H:I = 0x3c

.field private static final DEF_W:I = 0x78


# instance fields
.field private BALL_X_RIGHT:I

.field private greenColor:I

.field private greyColor:I

.field private mBallPaint:Landroid/graphics/Paint;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBgStrokeRectF:Landroid/graphics/RectF;

.field private mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

.field private mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

.field private mSolidRadius:F

.field private mStrokeRadius:I

.field private mSwitchBallx:F

.field private mViewHeight:I

.field private mViewWidth:I

.field private switchViewBallColor:I

.field private switchViewBgColor:I

.field private switchViewStrockWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/R$styleable;->SwitchView:[I

    const v2, 0x7f0e0189

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 51
    .local v1, "indexCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 53
    .local v3, "attr":I
    const/high16 v4, -0x1000000

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    .line 56
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBallColor:I

    .line 51
    .end local v3    # "attr":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SwitchButton;->initData()V

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/widget/SwitchButton;F)F
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/SwitchButton;
    .param p1, "x1"    # F

    .line 25
    iput p1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mSwitchBallx:F

    return p1
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/widget/SwitchButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/SwitchButton;

    .line 25
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    return v0
.end method

.method static synthetic access$102(Lcom/isaigu/gymapp/widget/SwitchButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/SwitchButton;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/widget/SwitchButton;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/SwitchButton;

    .line 25
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private animate(IIII)V
    .locals 7
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "startColor"    # I
    .param p4, "endColor"    # I

    .line 260
    const-wide/16 v5, 0xc8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/widget/SwitchButton;->animate(IIIIJ)V

    .line 261
    return-void
.end method

.method private animate(IIIIJ)V
    .locals 7
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "startColor"    # I
    .param p4, "endColor"    # I
    .param p5, "duration"    # J

    .line 224
    const/4 v0, 0x2

    new-array v1, v0, [F

    int-to-float v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    int-to-float v2, p2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 225
    .local v1, "translate":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/isaigu/gymapp/widget/SwitchButton$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/SwitchButton$1;-><init>(Lcom/isaigu/gymapp/widget/SwitchButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 233
    .local v2, "color":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/isaigu/gymapp/widget/SwitchButton$2;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/widget/SwitchButton$2;-><init>(Lcom/isaigu/gymapp/widget/SwitchButton;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 241
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 242
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    invoke-virtual {v5, p5, p6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 244
    new-instance v0, Lcom/isaigu/gymapp/widget/SwitchButton$3;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/SwitchButton$3;-><init>(Lcom/isaigu/gymapp/widget/SwitchButton;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 256
    return-void
.end method

.method private createPaint(IILandroid/graphics/Paint$Style;I)Landroid/graphics/Paint;
    .locals 3
    .param p1, "paintColor"    # I
    .param p2, "textSize"    # I
    .param p3, "style"    # Landroid/graphics/Paint$Style;
    .param p4, "lineWidth"    # I

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 151
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    int-to-float v2, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 154
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 157
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 158
    return-object v0
.end method

.method private drawSwitchBall(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 142
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mSwitchBallx:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mSolidRadius:F

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 143
    return-void
.end method

.method private drawSwitchBg(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgStrokeRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 147
    return-void
.end method

.method private initData()V
    .locals 3

    .line 70
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greyColor:I

    .line 71
    const-string v0, "#B70003"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greenColor:I

    .line 73
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBallColor:I

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/isaigu/gymapp/widget/SwitchButton;->createPaint(IILandroid/graphics/Paint$Style;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBallPaint:Landroid/graphics/Paint;

    .line 74
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/isaigu/gymapp/widget/SwitchButton;->createPaint(IILandroid/graphics/Paint$Style;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgPaint:Landroid/graphics/Paint;

    .line 75
    sget-object v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    .line 76
    invoke-virtual {p0, p0}, Lcom/isaigu/gymapp/widget/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method


# virtual methods
.method public isCheck()Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;->OPEN:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    :goto_0
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    .line 182
    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_1

    .line 183
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->BALL_X_RIGHT:I

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greenColor:I

    iget v3, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greyColor:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/SwitchButton;->animate(IIII)V

    goto :goto_1

    .line 185
    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->BALL_X_RIGHT:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greyColor:I

    iget v3, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greenColor:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/SwitchButton;->animate(IIII)V

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->OPEN:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/isaigu/gymapp/widget/SwitchButton;Z)V

    goto :goto_2

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/isaigu/gymapp/widget/SwitchButton;Z)V

    .line 194
    :cond_3
    :goto_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 137
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/SwitchButton;->drawSwitchBg(Landroid/graphics/Canvas;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/SwitchButton;->drawSwitchBall(Landroid/graphics/Canvas;)V

    .line 139
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 105
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 107
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 112
    .local v1, "heightMode":I
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    const/high16 v5, 0x42f00000    # 120.0f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v3, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 116
    .local v5, "measureWidth":I
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 117
    nop

    .line 122
    .end local v5    # "measureWidth":I
    :goto_0
    if-eq v1, v4, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 125
    :cond_1
    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 126
    .local v3, "measureHeight":I
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 127
    nop

    .line 132
    .end local v3    # "measureHeight":I
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 133
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 83
    iput p2, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mViewHeight:I

    .line 84
    iput p1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mViewWidth:I

    .line 87
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewStrockWidth:F

    .line 89
    div-int/lit8 v1, p2, 0x2

    iput v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    .line 90
    int-to-float v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mSolidRadius:F

    .line 91
    sub-int v0, p1, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->BALL_X_RIGHT:I

    .line 94
    int-to-float v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mSwitchBallx:F

    .line 95
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mViewHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgStrokeRectF:Landroid/graphics/RectF;

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/SwitchButton;->setCheck(Z)V

    .line 98
    return-void
.end method

.method public setCheck(Z)V
    .locals 2
    .param p1, "check"    # Z

    .line 201
    if-eqz p1, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;->OPEN:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    :goto_0
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    .line 204
    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_1

    .line 205
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greyColor:I

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    .line 206
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    int-to-float v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mSwitchBallx:F

    goto :goto_1

    .line 209
    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greenColor:I

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    .line 210
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->BALL_X_RIGHT:I

    int-to-float v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mSwitchBallx:F

    .line 213
    :goto_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/SwitchButton;->postInvalidate()V

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->OPEN:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/isaigu/gymapp/widget/SwitchButton;Z)V

    goto :goto_2

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/isaigu/gymapp/widget/SwitchButton;Z)V

    .line 221
    :cond_3
    :goto_2
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    .line 174
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    .line 175
    return-void
.end method
