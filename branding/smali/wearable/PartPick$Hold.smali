.class final Lcom/isaigu/gymapp/wearable/PartPick$Hold;
.super Ljava/lang/Object;
.source "PartPick.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PartPick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Hold"
.end annotation


# instance fields
.field active:Z

.field final cell:Landroid/view/View;

.field done:Z

.field down:J

.field final icon:Landroid/view/View;

.field final index:I

.field final ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;I)V
    .registers 6

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    .line 376
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->icon:Landroid/view/View;

    .line 377
    iput p3, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->index:I

    .line 378
    new-instance v0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/PartPick$Ring;-><init>(F)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    .line 379
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 382
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_70

    .line 408
    :cond_8
    :goto_8
    return v0

    .line 384
    :pswitch_9
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->done:Z

    .line 385
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->holdable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 386
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->start()V

    goto :goto_8

    .line 390
    :pswitch_15
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->active:Z

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->slop()F

    move-result v2

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_57

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->slop()F

    move-result v2

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_57

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->slop()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_57

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->slop()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 392
    :cond_57
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->stop(Z)V

    goto :goto_8

    .line 396
    :pswitch_5b
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->done:Z

    if-eqz v1, :cond_66

    .line 397
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->done:Z

    .line 398
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 399
    const/4 v0, 0x1

    goto :goto_8

    .line 401
    :cond_66
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->stop(Z)V

    goto :goto_8

    .line 404
    :pswitch_6a
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->done:Z

    .line 405
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->stop(Z)V

    goto :goto_8

    .line 382
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_9
        :pswitch_5b
        :pswitch_15
        :pswitch_6a
    .end packed-switch
.end method

.method place()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 438
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->icon:Landroid/view/View;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->icon:Landroid/view/View;

    .line 439
    :goto_9
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    if-ne v0, v1, :cond_60

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 440
    :goto_15
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    if-ne v0, v2, :cond_6d

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 441
    :goto_21
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    const/high16 v3, 0x40800000    # 4.0f

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 442
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iput v1, v3, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cx:F

    .line 443
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iput v2, v1, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->cy:F

    .line 444
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iput v0, v1, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->r:F

    .line 445
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->setBounds(IIII)V

    .line 446
    return-void

    .line 438
    :cond_5d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    goto :goto_9

    .line 439
    :cond_60
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    goto :goto_15

    .line 440
    :cond_6d
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    goto :goto_21
.end method

.method public run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x10

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 450
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->active:Z

    if-eqz v0, :cond_91

    .line 451
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->down:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    const v5, 0x453b8000    # 3000.0f

    div-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->progress:F

    .line 452
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->down:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    const v5, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v5

    iput v4, v0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->spin:F

    .line 453
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->progress:F

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_69

    .line 454
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->active:Z

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->done:Z

    .line 456
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iput v6, v0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    .line 457
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->down:J

    .line 458
    # getter for: Lcom/isaigu/gymapp/wearable/PartPick;->LAST:[J
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->access$200()[J

    move-result-object v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->index:I

    aput-wide v2, v0, v4

    .line 461
    :try_start_47
    iget v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->index:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/PartPick;->sync(I)Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4c} :catch_76

    move-result v0

    .line 465
    :goto_4d
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 466
    if-eqz v0, :cond_69

    .line 467
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u0412\u0442\u043e\u0440\u0438\u044f\u0442 \u0438\u043c\u043f\u0443\u043b\u0441 \u043d\u0430 \u043a\u0430\u043d\u0430\u043b\u0430 \u0435 \u0438\u0437\u0440\u0430\u0432\u043d\u0435\u043d \u0441 \u0433\u043b\u0430\u0432\u043d\u0438\u044f"

    const-string v3, "The channel\'s second impulse now matches the main one"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 472
    :cond_69
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->invalidateSelf()V

    .line 473
    # getter for: Lcom/isaigu/gymapp/wearable/PartPick;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    :goto_75
    return-void

    .line 462
    :catch_76
    move-exception v0

    .line 463
    const-string v2, "index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "part sync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_4d

    .line 476
    :cond_91
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_bf

    .line 477
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->down:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x43e10000    # 450.0f

    div-float/2addr v1, v2

    sub-float v1, v6, v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    .line 478
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->invalidateSelf()V

    .line 479
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_bf

    .line 480
    # getter for: Lcom/isaigu/gymapp/wearable/PartPick;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_75

    .line 484
    :cond_bf
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    goto :goto_75
.end method

.method slop()F
    .registers 3

    .prologue
    .line 413
    const/high16 v0, 0x41400000    # 12.0f

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    return v0
.end method

.method start()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->down:J

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->active:Z

    .line 419
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iput v2, v0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->progress:F

    .line 420
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    iput v2, v0, Lcom/isaigu/gymapp/wearable/PartPick$Ring;->flash:F

    .line 421
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->place()V

    .line 422
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 423
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 424
    # getter for: Lcom/isaigu/gymapp/wearable/PartPick;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    # getter for: Lcom/isaigu/gymapp/wearable/PartPick;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method

.method stop(Z)V
    .registers 4

    .prologue
    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->active:Z

    .line 430
    if-nez p1, :cond_17

    .line 431
    # getter for: Lcom/isaigu/gymapp/wearable/PartPick;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 432
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PartPick$Hold;->ring:Lcom/isaigu/gymapp/wearable/PartPick$Ring;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :cond_17
    return-void
.end method
