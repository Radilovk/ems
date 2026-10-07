.class final Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;
.super Ljava/lang/Object;
.source "DoubleImpulse.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/DoubleImpulse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Press"
.end annotation


# instance fields
.field final btn:Landroid/view/View;

.field done:Z

.field down:J

.field final face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

.field holdable:Z

.field final holder:Ljava/lang/Object;

.field inside:Z


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/Object;Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;)V
    .registers 4

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    .line 617
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holder:Ljava/lang/Object;

    .line 618
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    .line 619
    return-void
.end method


# virtual methods
.method item()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 3

    .prologue
    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holder:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 624
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 625
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holder:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    .line 627
    :goto_18
    return-object v0

    .line 626
    :catch_19
    move-exception v0

    .line 627
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const v4, 0x3f6b851f    # 0.92f

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 632
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_ca

    .line 673
    :cond_c
    :goto_c
    return v1

    .line 634
    :pswitch_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    .line 635
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    .line 636
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    .line 637
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 638
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 639
    if-eqz v2, :cond_34

    if-eqz v3, :cond_34

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v3, :cond_34

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->muscle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->blocked(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_34

    move v0, v1

    :cond_34
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holdable:Z

    .line 640
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 641
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5a

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 642
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holdable:Z

    if-eqz v0, :cond_c

    .line 643
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 644
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 649
    :pswitch_63
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    .line 650
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    if-eqz v3, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    neg-float v4, v2

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_a2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    neg-float v4, v2

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_a2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_a2

    .line 651
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-lez v2, :cond_c

    .line 652
    :cond_a2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    .line 653
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->release(Landroid/view/View;)V

    goto/16 :goto_c

    .line 658
    :pswitch_a9
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    if-eqz v2, :cond_b2

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v2, :cond_b2

    move v0, v1

    .line 659
    :cond_b2
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->release(Landroid/view/View;)V

    .line 660
    if-eqz v0, :cond_c

    .line 661
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_c

    .line 663
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->click(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V

    goto/16 :goto_c

    .line 669
    :pswitch_c2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    .line 670
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->release(Landroid/view/View;)V

    goto/16 :goto_c

    .line 632
    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a9
        :pswitch_63
        :pswitch_c2
    .end packed-switch
.end method

.method release(Landroid/view/View;)V
    .registers 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 678
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 680
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v0, :cond_30

    .line 681
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 682
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->hold:F

    .line 683
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->invalidateSelf()V

    .line 685
    :cond_30
    return-void
.end method

.method public run()V
    .registers 9

    .prologue
    .line 688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 689
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    if-eqz v0, :cond_8b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v0, :cond_8b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holdable:Z

    if-eqz v0, :cond_8b

    .line 690
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    sub-long v4, v2, v0

    .line 691
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    const-wide/16 v6, 0xb4

    cmp-long v0, v4, v6

    if-gez v0, :cond_5c

    const/4 v0, 0x0

    :goto_1d
    iput v0, v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->hold:F

    .line 692
    const-wide/16 v0, 0x5dc

    cmp-long v0, v4, v0

    if-ltz v0, :cond_4d

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    .line 694
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->hold:F

    .line 695
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->flash:F

    .line 696
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    .line 697
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 698
    const/4 v1, 0x0

    .line 700
    if-eqz v0, :cond_68

    :try_start_3c
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->sync(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_41} :catch_6a

    move-result v0

    if-eqz v0, :cond_68

    const/4 v0, 0x1

    .line 704
    :goto_45
    if-eqz v0, :cond_85

    .line 705
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 710
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->invalidateSelf()V

    .line 711
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 721
    :cond_5b
    :goto_5b
    return-void

    .line 691
    :cond_5c
    const/high16 v0, 0x3f800000    # 1.0f

    long-to-float v6, v4

    const v7, 0x44bb8000    # 1500.0f

    div-float/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1d

    .line 700
    :cond_68
    const/4 v0, 0x0

    goto :goto_45

    .line 701
    :catch_6a
    move-exception v0

    .line 702
    const-string v2, "index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "double sync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_45

    .line 707
    :cond_85
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->flash:F

    goto :goto_4d

    .line 714
    :cond_8b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->flash:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5b

    .line 715
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    sub-long/2addr v2, v6

    long-to-float v2, v2

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->flash:F

    .line 716
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->invalidateSelf()V

    .line 717
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;->flash:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5b

    .line 718
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5b
.end method
