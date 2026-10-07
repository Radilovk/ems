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
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    .line 641
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holder:Ljava/lang/Object;

    .line 642
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->face:Lcom/isaigu/gymapp/wearable/DoubleImpulse$Face;

    .line 643
    return-void
.end method


# virtual methods
.method item()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 3

    .prologue
    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holder:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 648
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 649
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holder:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    .line 651
    :goto_18
    return-object v0

    .line 650
    :catch_19
    move-exception v0

    .line 651
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const v4, 0x3f6b851f    # 0.92f

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 656
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_ca

    .line 697
    :cond_c
    :goto_c
    return v1

    .line 658
    :pswitch_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    .line 659
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    .line 660
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    .line 661
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 662
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 663
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

    .line 664
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 665
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

    .line 666
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holdable:Z

    if-eqz v0, :cond_c

    .line 667
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 668
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 673
    :pswitch_63
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    .line 674
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

    .line 675
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-lez v2, :cond_c

    .line 676
    :cond_a2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    .line 677
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->release(Landroid/view/View;)V

    goto/16 :goto_c

    .line 682
    :pswitch_a9
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    if-eqz v2, :cond_b2

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v2, :cond_b2

    move v0, v1

    .line 683
    :cond_b2
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->release(Landroid/view/View;)V

    .line 684
    if-eqz v0, :cond_c

    .line 685
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 686
    if-eqz v0, :cond_c

    .line 687
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->click(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V

    goto/16 :goto_c

    .line 693
    :pswitch_c2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    .line 694
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->release(Landroid/view/View;)V

    goto/16 :goto_c

    .line 656
    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a9
        :pswitch_63
        :pswitch_c2
    .end packed-switch
.end method

.method radius()F
    .registers 8

    .prologue
    .line 745
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 746
    const/high16 v0, 0x42800000    # 64.0f

    mul-float/2addr v0, v2

    .line 748
    :try_start_f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->row(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 749
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

    .line 750
    if-eqz v1, :cond_56

    if-eqz v3, :cond_56

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 751
    :goto_35
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_55

    .line 752
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

    .line 756
    :cond_55
    :goto_55
    return v0

    .line 750
    :cond_56
    const/4 v1, 0x0

    goto :goto_35

    .line 754
    :catch_58
    move-exception v1

    goto :goto_55
.end method

.method release(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 702
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 703
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

    .line 704
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v0, :cond_29

    .line 705
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 706
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->ring(Z)V

    .line 708
    :cond_29
    return-void
.end method

.method ring(Z)V
    .registers 9

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 715
    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 716
    if-nez v0, :cond_b

    .line 741
    :cond_a
    :goto_a
    return-void

    .line 719
    :cond_b
    if-nez p1, :cond_35

    .line 720
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v1, :cond_a

    .line 721
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_a

    .line 738
    :catch_1b
    move-exception v0

    .line 739
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

    .line 725
    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-nez v1, :cond_4c

    .line 726
    new-instance v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;-><init>(F)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    .line 728
    :cond_4c
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 729
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 730
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 731
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 732
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

    .line 733
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

    .line 734
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->radius()F

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    .line 735
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->setBounds(IIII)V

    .line 736
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v1, v2}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 737
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

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 761
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->inside:Z

    if-eqz v4, :cond_99

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    if-nez v4, :cond_99

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->holdable:Z

    if-eqz v4, :cond_99

    .line 762
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    sub-long v4, v2, v4

    .line 763
    const-wide/16 v6, 0xb4

    cmp-long v6, v4, v6

    if-ltz v6, :cond_49

    .line 764
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget v6, v6, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->progress:F

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_30

    .line 765
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->ring(Z)V

    .line 767
    :cond_30
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iput v8, v6, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    .line 768
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    const-wide/16 v8, 0xb4

    sub-long v8, v4, v8

    long-to-float v7, v8

    const/high16 v8, 0x44a50000    # 1320.0f

    div-float/2addr v7, v8

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->progress:F

    .line 769
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->invalidateSelf()V

    .line 771
    :cond_49
    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-ltz v4, :cond_70

    .line 772
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->done:Z

    .line 773
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->down:J

    .line 774
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->item()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 777
    if-eqz v2, :cond_78

    :try_start_59
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->sync(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)Z
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5e} :catch_7a

    move-result v2

    if-eqz v2, :cond_78

    .line 781
    :goto_61
    if-eqz v0, :cond_95

    .line 782
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->btn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 783
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v0, :cond_70

    .line 784
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iput v10, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    .line 791
    :cond_70
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 806
    :goto_77
    return-void

    :cond_78
    move v0, v1

    .line 777
    goto :goto_61

    .line 778
    :catch_7a
    move-exception v0

    .line 779
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

    .line 787
    :cond_95
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->ring(Z)V

    goto :goto_77

    .line 794
    :cond_99
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_cc

    .line 795
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

    .line 796
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->invalidateSelf()V

    .line 797
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_cc

    .line 798
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_77

    .line 802
    :cond_cc
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    if-eqz v0, :cond_d4

    .line 803
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->big:Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;

    iput v8, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->progress:F

    .line 805
    :cond_d4
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Press;->ring(Z)V

    goto :goto_77
.end method
