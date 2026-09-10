.class public abstract Lcom/yanzhenjie/loading/LoadingRenderer;
.super Ljava/lang/Object;
.source "LoadingRenderer.java"


# static fields
.field private static final ANIMATION_DURATION:J = 0x535L


# instance fields
.field private final mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field protected final mBounds:Landroid/graphics/Rect;

.field private mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field protected mDuration:J

.field protected mHeight:F

.field private mRenderAnimator:Landroid/animation/ValueAnimator;

.field protected mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/yanzhenjie/loading/LoadingRenderer$1;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/loading/LoadingRenderer$1;-><init>(Lcom/yanzhenjie/loading/LoadingRenderer;)V

    iput-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mBounds:Landroid/graphics/Rect;

    .line 56
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {p1, v0}, Lcom/yanzhenjie/loading/Utils;->dip2px(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mHeight:F

    iput v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mWidth:F

    .line 57
    const-wide/16 v0, 0x535

    iput-wide v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mDuration:J

    .line 58
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LoadingRenderer;->setupAnimators()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/loading/LoadingRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LoadingRenderer;

    .line 31
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LoadingRenderer;->invalidateSelf()V

    return-void
.end method

.method private invalidateSelf()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    .line 111
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 112
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 113
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 116
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected addRenderListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 78
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 79
    return-void
.end method

.method protected abstract computeRender(F)V
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 66
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/yanzhenjie/loading/LoadingRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 67
    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    return-void
.end method

.method isRunning()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected abstract reset()V
.end method

.method protected abstract setAlpha(I)V
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 106
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 107
    return-void
.end method

.method setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .line 102
    iput-object p1, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 103
    return-void
.end method

.method protected abstract setColorFilter(Landroid/graphics/ColorFilter;)V
.end method

.method start()V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/yanzhenjie/loading/LoadingRenderer;->reset()V

    .line 83
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 86
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 87
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 88
    return-void
.end method

.method stop()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 93
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingRenderer;->mRenderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 95
    return-void
.end method
