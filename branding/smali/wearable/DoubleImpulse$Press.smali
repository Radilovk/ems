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
.field big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

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
    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    .line 671
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holder:Ljava/lang/Object;

    .line 672
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    .line 673
    return-void
.end method


# virtual methods
.method item()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 3

    .prologue
    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holder:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 678
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 679
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holder:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    .line 681
    :goto_18
    return-object v0

    .line 680
    :catch_19
    move-exception v0

    .line 681
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const v4, 0x3f6b851f    # 0.92f

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 686
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_104

    .line 739
    :cond_c
    :goto_c
    return v1

    .line 688
    :pswitch_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    .line 689
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    .line 690
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    .line 691
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 692
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 693
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

    .line 694
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 695
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

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 699
    :cond_5b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holdable:Z

    if-eqz v0, :cond_c

    .line 700
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 701
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 706
    :pswitch_70
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    .line 707
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    if-eqz v3, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    neg-float v4, v2

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_af

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    neg-float v4, v2

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_af

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_af

    .line 708
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-lez v2, :cond_c

    .line 709
    :cond_af
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    .line 710
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->release(Landroid/view/View;)V

    goto/16 :goto_c

    .line 715
    :pswitch_b6
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    if-eqz v2, :cond_bf

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v2, :cond_bf

    move v0, v1

    .line 716
    :cond_bf
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->release(Landroid/view/View;)V

    .line 717
    if-eqz v0, :cond_c

    .line 718
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 719
    if-eqz v0, :cond_c

    .line 720
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->click(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V

    goto/16 :goto_c

    .line 729
    :pswitch_cf
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    if-eqz v2, :cond_100

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v2, :cond_100

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xb4

    cmp-long v2, v2, v4

    if-gez v2, :cond_100

    move v2, v1

    .line 730
    :goto_e5
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    .line 731
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->release(Landroid/view/View;)V

    .line 732
    if-eqz v2, :cond_102

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 733
    :goto_f0
    if-eqz v0, :cond_c

    .line 734
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/DoubleImpulse$LateTap;

    invoke-direct {v3, v0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$LateTap;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c

    :cond_100
    move v2, v0

    .line 729
    goto :goto_e5

    .line 732
    :cond_102
    const/4 v0, 0x0

    goto :goto_f0

    .line 686
    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b6
        :pswitch_70
        :pswitch_cf
    .end packed-switch
.end method

.method radius()F
    .registers 8

    .prologue
    .line 787
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 788
    const/high16 v0, 0x42800000    # 64.0f

    mul-float/2addr v0, v2

    .line 790
    :try_start_f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->row(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 791
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "userIcon"

    const-string v5, "id"

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 792
    if-eqz v1, :cond_56

    if-eqz v3, :cond_56

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 793
    :goto_35
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_55

    .line 794
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_54} :catch_58

    move-result v0

    .line 798
    :cond_55
    :goto_55
    return v0

    .line 792
    :cond_56
    const/4 v1, 0x0

    goto :goto_35

    .line 796
    :catch_58
    move-exception v1

    goto :goto_55
.end method

.method release(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 744
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 745
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

    .line 746
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v0, :cond_29

    .line 747
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 748
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->ring(Z)V

    .line 750
    :cond_29
    return-void
.end method

.method ring(Z)V
    .registers 9

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 757
    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 758
    if-nez v0, :cond_b

    .line 783
    :cond_a
    :goto_a
    return-void

    .line 761
    :cond_b
    if-nez p1, :cond_35

    .line 762
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v1, :cond_a

    .line 763
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_a

    .line 780
    :catch_1b
    move-exception v0

    .line 781
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "double ring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 767
    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-nez v1, :cond_4c

    .line 768
    new-instance v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;-><init>(F)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    .line 770
    :cond_4c
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 771
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 772
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 773
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 774
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x0

    aget v5, v2, v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cx:F

    .line 775
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    const/4 v4, 0x1

    aget v1, v1, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v3, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cy:F

    .line 776
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->radius()F

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    .line 777
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->setBounds(IIII)V

    .line 778
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v1, v2}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 779
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_ad} :catch_1b

    goto/16 :goto_a
.end method

.method public run()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x10

    const/4 v0, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 803
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    if-eqz v4, :cond_9d

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v4, :cond_9d

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holdable:Z

    if-eqz v4, :cond_9d

    .line 804
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    sub-long v4, v2, v4

    .line 805
    const-wide/16 v6, 0xb4

    cmp-long v6, v4, v6

    if-ltz v6, :cond_49

    .line 806
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget v6, v6, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->progress:F

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_30

    .line 807
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->ring(Z)V

    .line 809
    :cond_30
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iput v8, v6, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    .line 810
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    const-wide/16 v8, 0xb4

    sub-long v8, v4, v8

    long-to-float v7, v8

    const/high16 v8, 0x44a50000    # 1320.0f

    div-float/2addr v7, v8

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->progress:F

    .line 811
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->invalidateSelf()V

    .line 813
    :cond_49
    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-ltz v4, :cond_70

    .line 814
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    .line 815
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    .line 816
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 819
    if-eqz v2, :cond_78

    :try_start_59
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->sync(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)Z
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5e} :catch_7a

    move-result v2

    if-eqz v2, :cond_78

    .line 823
    :goto_61
    if-eqz v0, :cond_95

    .line 824
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 825
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v0, :cond_70

    .line 826
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iput v10, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    .line 835
    :cond_70
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 850
    :goto_77
    return-void

    :cond_78
    move v0, v1

    .line 819
    goto :goto_61

    .line 820
    :catch_7a
    move-exception v0

    .line 821
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

    goto :goto_61

    .line 829
    :cond_95
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    .line 830
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holdable:Z

    .line 831
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->ring(Z)V

    goto :goto_77

    .line 838
    :cond_9d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_d0

    .line 839
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x44098000    # 550.0f

    div-float/2addr v2, v3

    sub-float v2, v10, v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    .line 840
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->invalidateSelf()V

    .line 841
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_d0

    .line 842
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_77

    .line 846
    :cond_d0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v0, :cond_d8

    .line 847
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iput v8, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->progress:F

    .line 849
    :cond_d8
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->ring(Z)V

    goto :goto_77
.end method
