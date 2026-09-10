.class public final Lcom/contrarywind/timer/InertiaTimerTask;
.super Ljava/util/TimerTask;
.source "InertiaTimerTask.java"


# instance fields
.field private mCurrentVelocityY:F

.field private final mFirstVelocityY:F

.field private final mWheelView:Lcom/contrarywind/view/WheelView;


# direct methods
.method public constructor <init>(Lcom/contrarywind/view/WheelView;F)V
    .locals 1
    .param p1, "wheelView"    # Lcom/contrarywind/view/WheelView;
    .param p2, "velocityY"    # F

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    .line 26
    iput p2, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mFirstVelocityY:F

    .line 27
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 28
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/high16 v4, 0x44fa0000    # 2000.0f

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v8, 0x0

    .line 34
    iget v5, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    const/high16 v6, 0x4f000000

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 35
    iget v5, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mFirstVelocityY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    .line 36
    iget v5, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mFirstVelocityY:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    :goto_0
    iput v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 43
    :cond_0
    :goto_1
    iget v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v8

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_3

    .line 44
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->cancelFuture()V

    .line 45
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x7d0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    :goto_2
    return-void

    .line 36
    :cond_1
    const/high16 v4, -0x3b060000    # -2000.0f

    goto :goto_0

    .line 38
    :cond_2
    iget v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mFirstVelocityY:F

    iput v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    goto :goto_1

    .line 49
    :cond_3
    iget v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 50
    .local v1, "dy":I
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    iget-object v5, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v5}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v5

    int-to-float v6, v1

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 51
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->isLoop()Z

    move-result v4

    if-nez v4, :cond_5

    .line 52
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getItemHeight()F

    move-result v2

    .line 53
    .local v2, "itemHeight":F
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getInitPosition()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    mul-float v3, v4, v2

    .line 54
    .local v3, "top":F
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getItemsCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v5}, Lcom/contrarywind/view/WheelView;->getInitPosition()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v0, v4, v2

    .line 55
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v4

    float-to-double v4, v4

    float-to-double v6, v2

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    float-to-double v6, v3

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    .line 56
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v4

    int-to-float v5, v1

    add-float v3, v4, v5

    .line 61
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v4

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_7

    .line 62
    const/high16 v4, 0x42200000    # 40.0f

    iput v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 63
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    float-to-int v5, v3

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 70
    .end local v0    # "bottom":F
    .end local v2    # "itemHeight":F
    .end local v3    # "top":F
    :cond_5
    :goto_4
    iget v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_8

    .line 71
    iget v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    add-float/2addr v4, v9

    iput v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    .line 77
    :goto_5
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 57
    .restart local v0    # "bottom":F
    .restart local v2    # "itemHeight":F
    .restart local v3    # "top":F
    :cond_6
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v4

    float-to-double v4, v4

    float-to-double v6, v2

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    float-to-double v6, v0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    .line 58
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v4

    int-to-float v5, v1

    add-float v0, v4, v5

    goto :goto_3

    .line 64
    :cond_7
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v4

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_5

    .line 65
    iget-object v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mWheelView:Lcom/contrarywind/view/WheelView;

    float-to-int v5, v0

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 66
    const/high16 v4, -0x3de00000    # -40.0f

    iput v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    goto :goto_4

    .line 73
    .end local v0    # "bottom":F
    .end local v2    # "itemHeight":F
    .end local v3    # "top":F
    :cond_8
    iget v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    sub-float/2addr v4, v9

    iput v4, p0, Lcom/contrarywind/timer/InertiaTimerTask;->mCurrentVelocityY:F

    goto :goto_5
.end method
