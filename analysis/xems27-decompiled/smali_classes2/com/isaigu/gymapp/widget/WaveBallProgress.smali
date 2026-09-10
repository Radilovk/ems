.class public Lcom/isaigu/gymapp/widget/WaveBallProgress;
.super Landroid/view/View;
.source "WaveBallProgress.java"


# static fields
.field private static final HANDLER_WHAT_UPDATE:I = 0x100


# instance fields
.field private isWaveMoving:Z

.field private mBallBitmap:Landroid/graphics/Bitmap;

.field private mOffsetA:I

.field private mProgress:I

.field private mProgressAnimator:Landroid/animation/ObjectAnimator;

.field private mWaveACycle:F

.field private mWaveColor:I

.field private mWaveHeightA:I

.field private mWavePaint:Landroid/graphics/Paint;

.field private mWaveSpeedA:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveColor:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->isWaveMoving:Z

    .line 69
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->init()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveColor:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->isWaveMoving:Z

    .line 74
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveColor:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->isWaveMoving:Z

    .line 79
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveColor:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->isWaveMoving:Z

    .line 85
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->init()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/widget/WaveBallProgress;)I
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/WaveBallProgress;

    .line 25
    iget v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mOffsetA:I

    return v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/widget/WaveBallProgress;I)I
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/WaveBallProgress;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mOffsetA:I

    return p1
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/widget/WaveBallProgress;)I
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/WaveBallProgress;

    .line 25
    iget v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveSpeedA:I

    return v0
.end method

.method private getWaveY(IIIF)D
    .locals 6
    .param p1, "x"    # I
    .param p2, "offset"    # I
    .param p3, "waveHeight"    # I
    .param p4, "waveCycle"    # F

    .line 256
    int-to-double v0, p3

    add-int v2, p1, p2

    int-to-float v2, v2

    mul-float v2, v2, p4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mProgress:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    return-wide v0
.end method

.method private init()V
    .locals 2

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWavePaint:Landroid/graphics/Paint;

    .line 91
    iget v1, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWavePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 93
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mProgress:I

    return v0
.end method

.method public getWaveHeightA()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveHeightA:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 209
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 210
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    .line 212
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 213
    .local v0, "paint":Landroid/graphics/Paint;
    iget v1, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 218
    .local v1, "edge":Landroid/graphics/RectF;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 219
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getWidth()I

    move-result v2

    int-to-float v8, v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getHeight()I

    move-result v2

    int-to-float v9, v2

    const/4 v10, 0x0

    const/16 v11, 0x1f

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v2

    .line 220
    .local v2, "sc":I
    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->isWaveMoving:Z

    if-eqz v3, :cond_1

    .line 225
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 226
    int-to-float v7, v3

    iget v5, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mOffsetA:I

    iget v6, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveHeightA:I

    iget v8, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveACycle:F

    invoke-direct {p0, v3, v5, v6, v8}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getWaveY(IIIF)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v8, v5

    int-to-float v9, v3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getHeight()I

    move-result v5

    int-to-float v10, v5

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWavePaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 233
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mProgress:I

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v3, v3, v5

    .line 234
    .local v3, "height":F
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getWidth()I

    move-result v5

    int-to-float v9, v5

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getHeight()I

    move-result v5

    int-to-float v10, v5

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWavePaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 235
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getWidth()I

    move-result v5

    int-to-float v9, v5

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getHeight()I

    move-result v5

    int-to-float v10, v5

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 238
    .end local v3    # "height":F
    :goto_1
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWavePaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 239
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mBallBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 240
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWavePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 241
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 244
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v1    # "edge":Landroid/graphics/RectF;
    .end local v2    # "sc":I
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 172
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 179
    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveSpeedA:I

    .line 180
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveHeightA:I

    .line 181
    div-int/lit8 v2, p2, 0xa

    if-ge v2, v0, :cond_0

    .line 182
    div-int/lit8 v0, p2, 0xa

    iput v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveHeightA:I

    .line 184
    :cond_0
    const-wide v2, 0x4022d97c7f3321d2L    # 9.42477796076938

    int-to-double v4, p1

    div-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveACycle:F

    .line 194
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mBallBitmap:Landroid/graphics/Bitmap;

    .line 195
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mBallBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 196
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, v2

    .line 197
    .local v1, "ball":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 199
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "ball":Landroid/graphics/RectF;
    :cond_1
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 108
    iput p1, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mProgress:I

    .line 109
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->invalidate()V

    .line 110
    return-void
.end method

.method public setWaveColor(I)V
    .locals 1
    .param p1, "mWaveColor"    # I

    .line 202
    iput p1, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveColor:I

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->invalidate()V

    .line 205
    return-void
.end method

.method public setWaveHeightA(I)V
    .locals 0
    .param p1, "waveHeightA"    # I

    .line 117
    iput p1, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mWaveHeightA:I

    .line 118
    return-void
.end method

.method public startProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .line 122
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->startProgress(IJJ)V

    .line 123
    return-void
.end method

.method public startProgress(IJJ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "duration"    # J
    .param p4, "delay"    # J

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 133
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 136
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->isWaveMoving:Z

    .line 137
    new-array v1, v1, [I

    aput p1, v1, v0

    const-string v0, "Progress"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 138
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/isaigu/gymapp/widget/WaveBallProgress$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress$1;-><init>(Lcom/isaigu/gymapp/widget/WaveBallProgress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/isaigu/gymapp/widget/WaveBallProgress$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/WaveBallProgress$2;-><init>(Lcom/isaigu/gymapp/widget/WaveBallProgress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress;->mProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 167
    return-void
.end method
