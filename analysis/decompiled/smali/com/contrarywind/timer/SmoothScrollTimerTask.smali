.class public final Lcom/contrarywind/timer/SmoothScrollTimerTask;
.super Ljava/util/TimerTask;
.source "SmoothScrollTimerTask.java"


# instance fields
.field private offset:I

.field private realOffset:I

.field private realTotalOffset:I

.field private final wheelView:Lcom/contrarywind/view/WheelView;


# direct methods
.method public constructor <init>(Lcom/contrarywind/view/WheelView;I)V
    .locals 1
    .param p1, "wheelView"    # Lcom/contrarywind/view/WheelView;
    .param p2, "offset"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 21
    iput p2, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->offset:I

    .line 22
    const v0, 0x7fffffff

    iput v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/16 v6, 0xbb8

    const/4 v5, 0x1

    .line 28
    iget v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 29
    iget v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->offset:I

    iput v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    .line 32
    :cond_0
    iget v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    .line 34
    iget v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    if-nez v3, :cond_1

    .line 35
    iget v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    if-gez v3, :cond_2

    .line 36
    const/4 v3, -0x1

    iput v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    .line 42
    :cond_1
    :goto_0
    iget v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v5, :cond_3

    .line 43
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->cancelFuture()V

    .line 44
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    :goto_1
    return-void

    .line 38
    :cond_2
    iput v5, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    goto :goto_0

    .line 46
    :cond_3
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    iget-object v4, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v4

    iget v5, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 49
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->isLoop()Z

    move-result v3

    if-nez v3, :cond_5

    .line 50
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getItemHeight()F

    move-result v1

    .line 51
    .local v1, "itemHeight":F
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getInitPosition()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v2, v3, v1

    .line 52
    .local v2, "top":F
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getItemsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getInitPosition()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v0, v3, v1

    .line 53
    .local v0, "bottom":F
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v3

    cmpg-float v3, v3, v2

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v3

    cmpl-float v3, v3, v0

    if-ltz v3, :cond_5

    .line 54
    :cond_4
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    iget-object v4, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getTotalScrollY()F

    move-result v4

    iget v5, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/contrarywind/view/WheelView;->setTotalScrollY(F)V

    .line 55
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->cancelFuture()V

    .line 56
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 60
    .end local v0    # "bottom":F
    .end local v1    # "itemHeight":F
    .end local v2    # "top":F
    :cond_5
    iget-object v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v3}, Lcom/contrarywind/view/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    iget v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    iget v4, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/contrarywind/timer/SmoothScrollTimerTask;->realTotalOffset:I

    goto/16 :goto_1
.end method
