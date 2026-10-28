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
    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    .line 722
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holder:Ljava/lang/Object;

    .line 723
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    .line 724
    return-void
.end method


# virtual methods
.method item()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 3

    .prologue
    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holder:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 729
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 730
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holder:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    .line 732
    :goto_18
    return-object v0

    .line 731
    :catch_19
    move-exception v0

    .line 732
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const v4, 0x3f6b851f    # 0.92f

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 737
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_104

    .line 790
    :cond_c
    :goto_c
    return v1

    .line 739
    :pswitch_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    .line 740
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    .line 741
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    .line 742
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 743
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 744
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

    .line 745
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 746
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

    .line 747
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 748
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 750
    :cond_5b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holdable:Z

    if-eqz v0, :cond_c

    .line 751
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 752
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 757
    :pswitch_70
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    .line 758
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

    .line 759
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-lez v2, :cond_c

    .line 760
    :cond_af
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    .line 761
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->release(Landroid/view/View;)V

    goto/16 :goto_c

    .line 766
    :pswitch_b6
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    if-eqz v2, :cond_bf

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v2, :cond_bf

    move v0, v1

    .line 767
    :cond_bf
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->release(Landroid/view/View;)V

    .line 768
    if-eqz v0, :cond_c

    .line 769
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_c

    .line 771
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->click(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V

    goto/16 :goto_c

    .line 780
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

    .line 781
    :goto_e5
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    .line 782
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->release(Landroid/view/View;)V

    .line 783
    if-eqz v2, :cond_102

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 784
    :goto_f0
    if-eqz v0, :cond_c

    .line 785
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/DoubleImpulse$LateTap;

    invoke-direct {v3, v0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$LateTap;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c

    :cond_100
    move v2, v0

    .line 780
    goto :goto_e5

    .line 783
    :cond_102
    const/4 v0, 0x0

    goto :goto_f0

    .line 737
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
    .line 838
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 839
    const/high16 v0, 0x42800000    # 64.0f

    mul-float/2addr v0, v2

    .line 841
    :try_start_f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->row(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 842
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

    .line 843
    if-eqz v1, :cond_56

    if-eqz v3, :cond_56

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 844
    :goto_35
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_55

    .line 845
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

    .line 849
    :cond_55
    :goto_55
    return v0

    .line 843
    :cond_56
    const/4 v1, 0x0

    goto :goto_35

    .line 847
    :catch_58
    move-exception v1

    goto :goto_55
.end method

.method release(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 795
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 796
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

    .line 797
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v0, :cond_29

    .line 798
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 799
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->ring(Z)V

    .line 801
    :cond_29
    return-void
.end method

.method ring(Z)V
    .registers 9

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 808
    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 809
    if-nez v0, :cond_b

    .line 834
    :cond_a
    :goto_a
    return-void

    .line 812
    :cond_b
    if-nez p1, :cond_35

    .line 813
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v1, :cond_a

    .line 814
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_a

    .line 831
    :catch_1b
    move-exception v0

    .line 832
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

    .line 818
    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-nez v1, :cond_4c

    .line 819
    new-instance v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;-><init>(F)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    .line 821
    :cond_4c
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 822
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 823
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 824
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 825
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

    .line 826
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

    .line 827
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->radius()F

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    .line 828
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->setBounds(IIII)V

    .line 829
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v1, v2}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 830
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

    .line 853
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 854
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    if-eqz v4, :cond_9d

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v4, :cond_9d

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holdable:Z

    if-eqz v4, :cond_9d

    .line 855
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    sub-long v4, v2, v4

    .line 856
    const-wide/16 v6, 0xb4

    cmp-long v6, v4, v6

    if-ltz v6, :cond_49

    .line 857
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget v6, v6, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->progress:F

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_30

    .line 858
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->ring(Z)V

    .line 860
    :cond_30
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iput v8, v6, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    .line 861
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    const-wide/16 v8, 0xb4

    sub-long v8, v4, v8

    long-to-float v7, v8

    const/high16 v8, 0x44a50000    # 1320.0f

    div-float/2addr v7, v8

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->progress:F

    .line 862
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->invalidateSelf()V

    .line 864
    :cond_49
    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-ltz v4, :cond_70

    .line 865
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    .line 866
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    .line 867
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 870
    if-eqz v2, :cond_78

    :try_start_59
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->sync(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)Z
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5e} :catch_7a

    move-result v2

    if-eqz v2, :cond_78

    .line 874
    :goto_61
    if-eqz v0, :cond_95

    .line 875
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 876
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v0, :cond_70

    .line 877
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iput v10, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    .line 886
    :cond_70
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 901
    :goto_77
    return-void

    :cond_78
    move v0, v1

    .line 870
    goto :goto_61

    .line 871
    :catch_7a
    move-exception v0

    .line 872
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

    .line 880
    :cond_95
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    .line 881
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holdable:Z

    .line 882
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->ring(Z)V

    goto :goto_77

    .line 889
    :cond_9d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_d0

    .line 890
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

    .line 891
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->invalidateSelf()V

    .line 892
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_d0

    .line 893
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_77

    .line 897
    :cond_d0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v0, :cond_d8

    .line 898
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iput v8, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->progress:F

    .line 900
    :cond_d8
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->ring(Z)V

    goto :goto_77
.end method
