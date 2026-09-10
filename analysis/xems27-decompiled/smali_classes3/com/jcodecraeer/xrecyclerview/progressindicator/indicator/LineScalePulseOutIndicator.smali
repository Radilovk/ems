.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePulseOutIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScaleIndicator;
.source "LineScalePulseOutIndicator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScaleIndicator;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x5

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    .line 18
    .local v2, "delays":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 19
    move v4, v3

    .line 20
    .local v4, "index":I
    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 21
    .local v5, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x384

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 23
    aget-wide v6, v2, v3

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 24
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePulseOutIndicator$1;

    invoke-direct {v6, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePulseOutIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePulseOutIndicator;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 31
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 32
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .end local v4    # "index":I
    .end local v5    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    .end local v3    # "i":I
    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 8
        0x1f4
        0xfa
        0x0
        0xfa
        0x1f4
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method
