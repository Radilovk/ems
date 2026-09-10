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

    .prologue
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
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v7, -0x1000000

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/R$styleable;->SwitchView:[I

    const v6, 0x7f0a0189

    invoke-virtual {v4, p2, v5, p3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 50
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 51
    .local v2, "indexCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 52
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 53
    .local v0, "attr":I
    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :pswitch_0
    invoke-virtual {v3, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    goto :goto_1

    .line 58
    :pswitch_1
    invoke-virtual {v3, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBallColor:I

    goto :goto_1

    .line 62
    .end local v0    # "attr":I
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SwitchButton;->initData()V

    .line 64
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/widget/SwitchButton;F)F
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/SwitchButton;
    .param p1, "x1"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mSwitchBallx:F

    return p1
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/widget/SwitchButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/SwitchButton;

    .prologue
    .line 25
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    return v0
.end method

.method static synthetic access$102(Lcom/isaigu/gymapp/widget/SwitchButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/SwitchButton;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/widget/SwitchButton;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/SwitchButton;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private animate(IIII)V
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "startColor"    # I
    .param p4, "endColor"    # I

    .prologue
    .line 260
    const-wide/16 v6, 0xc8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/isaigu/gymapp/widget/SwitchButton;->animate(IIIIJ)V

    .line 261
    return-void
.end method

.method private animate(IIIIJ)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "startColor"    # I
    .param p4, "endColor"    # I
    .param p5, "duration"    # J

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 224
    new-array v3, v8, [F

    int-to-float v4, p1

    aput v4, v3, v6

    int-to-float v4, p2

    aput v4, v3, v7

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 225
    .local v2, "translate":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/isaigu/gymapp/widget/SwitchButton$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/SwitchButton$1;-><init>(Lcom/isaigu/gymapp/widget/SwitchButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 233
    .local v1, "color":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/isaigu/gymapp/widget/SwitchButton$2;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/SwitchButton$2;-><init>(Lcom/isaigu/gymapp/widget/SwitchButton;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 241
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 242
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    invoke-virtual {v0, p5, p6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 244
    new-instance v3, Lcom/isaigu/gymapp/widget/SwitchButton$3;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/SwitchButton$3;-><init>(Lcom/isaigu/gymapp/widget/SwitchButton;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 256
    return-void
.end method

.method private createPaint(IILandroid/graphics/Paint$Style;I)Landroid/graphics/Paint;
    .locals 3
    .param p1, "paintColor"    # I
    .param p2, "textSize"    # I
    .param p3, "style"    # Landroid/graphics/Paint$Style;
    .param p4, "lineWidth"    # I

    .prologue
    const/4 v2, 0x1

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 151
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    int-to-float v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

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

    .prologue
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

    .prologue
    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgStrokeRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 147
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

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

    .prologue
    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;->OPEN:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    :goto_0
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_2

    .line 183
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->BALL_X_RIGHT:I

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greenColor:I

    iget v3, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greyColor:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/SwitchButton;->animate(IIII)V

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->OPEN:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_3

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/isaigu/gymapp/widget/SwitchButton;Z)V

    .line 194
    :cond_0
    :goto_2
    return-void

    .line 179
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    goto :goto_0

    .line 185
    :cond_2
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->BALL_X_RIGHT:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greyColor:I

    iget v3, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greenColor:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/SwitchButton;->animate(IIII)V

    goto :goto_1

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/isaigu/gymapp/widget/SwitchButton;Z)V

    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/SwitchButton;->drawSwitchBg(Landroid/graphics/Canvas;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/SwitchButton;->drawSwitchBall(Landroid/graphics/Canvas;)V

    .line 139
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x1

    .line 105
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 107
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 112
    .local v0, "heightMode":I
    sparse-switch v3, :sswitch_data_0

    .line 122
    :goto_0
    sparse-switch v0, :sswitch_data_1

    .line 132
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 133
    return-void

    .line 115
    :sswitch_0
    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v2, v4

    .line 116
    .local v2, "measureWidth":I
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 117
    goto :goto_0

    .line 125
    .end local v2    # "measureWidth":I
    :sswitch_1
    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v1, v4

    .line 126
    .local v1, "measureHeight":I
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 127
    goto :goto_1

    .line 112
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
    .end sparse-switch

    .line 122
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 83
    iput p2, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mViewHeight:I

    .line 84
    iput p1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mViewWidth:I

    .line 87
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewStrockWidth:F

    .line 89
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    .line 90
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mViewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewStrockWidth:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mSolidRadius:F

    .line 91
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mViewWidth:I

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->BALL_X_RIGHT:I

    .line 94
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    int-to-float v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mSwitchBallx:F

    .line 95
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mViewHeight:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgStrokeRectF:Landroid/graphics/RectF;

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/SwitchButton;->setCheck(Z)V

    .line 98
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCheck(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 201
    if-eqz p1, :cond_1

    sget-object v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;->OPEN:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    :goto_0
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_2

    .line 205
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greyColor:I

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mStrokeRadius:I

    int-to-float v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mSwitchBallx:F

    .line 213
    :goto_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/SwitchButton;->postInvalidate()V

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mCurrentState:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    sget-object v1, Lcom/isaigu/gymapp/widget/SwitchButton$State;->OPEN:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    if-ne v0, v1, :cond_3

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/isaigu/gymapp/widget/SwitchButton;Z)V

    .line 221
    :cond_0
    :goto_2
    return-void

    .line 201
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/widget/SwitchButton$State;->CLOSE:Lcom/isaigu/gymapp/widget/SwitchButton$State;

    goto :goto_0

    .line 209
    :cond_2
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->greenColor:I

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    .line 210
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->switchViewBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->BALL_X_RIGHT:I

    int-to-float v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mSwitchBallx:F

    goto :goto_1

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/isaigu/gymapp/widget/SwitchButton;Z)V

    goto :goto_2
.end method

.method public setOnCheckedChangeListener(Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/SwitchButton;->mOnCheckedChangeListener:Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;

    .line 175
    return-void
.end method
