.class public Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
.super Ljava/lang/Object;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/percent/PercentLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PercentLayoutInfo"
.end annotation


# instance fields
.field public aspectRatio:F

.field public bottomMarginPercent:F

.field public endMarginPercent:F

.field public heightPercent:F

.field public leftMarginPercent:F

.field final mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

.field public rightMarginPercent:F

.field public startMarginPercent:F

.field public topMarginPercent:F

.field public widthPercent:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    .line 380
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    .line 381
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    .line 382
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    .line 383
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    .line 384
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    .line 385
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:F

    .line 386
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:F

    .line 387
    new-instance v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;-><init>(II)V

    iput-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 388
    return-void
.end method


# virtual methods
.method public fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 6
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p2, "widthHint"    # I
    .param p3, "heightHint"    # I

    .line 398
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->width:I

    .line 399
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->height:I

    .line 405
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 406
    invoke-static {v0}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$000(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->width:I

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 408
    .local v0, "widthNotSet":Z
    :goto_0
    iget-object v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 409
    invoke-static {v4}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$100(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v4, v4, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->height:I

    if-nez v4, :cond_3

    :cond_2
    iget v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_3

    const/4 v1, 0x1

    .line 412
    .local v1, "heightNotSet":Z
    :cond_3
    iget v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    cmpl-float v5, v4, v3

    if-ltz v5, :cond_4

    .line 413
    int-to-float v5, p2

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 416
    :cond_4
    iget v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    cmpl-float v5, v4, v3

    if-ltz v5, :cond_5

    .line 417
    int-to-float v5, p3

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 420
    :cond_5
    iget v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_7

    .line 421
    if-eqz v0, :cond_6

    .line 422
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 424
    iget-object v3, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    invoke-static {v3, v2}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$002(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;Z)Z

    .line 426
    :cond_6
    if-eqz v1, :cond_7

    .line 427
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 429
    iget-object v3, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    invoke-static {v3, v2}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$102(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;Z)Z

    .line 436
    :cond_7
    return-void
.end method

.method public fillMarginLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p3, "widthHint"    # I
    .param p4, "heightHint"    # I

    .line 456
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V

    .line 459
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->leftMargin:I

    .line 460
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->topMargin:I

    .line 461
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->rightMargin:I

    .line 462
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->bottomMargin:I

    .line 463
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 464
    invoke-static {p2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 463
    invoke-static {v0, v1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 465
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 466
    invoke-static {p2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 465
    invoke-static {v0, v1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 468
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    .line 469
    int-to-float v2, p3

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 471
    :cond_0
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    .line 472
    int-to-float v2, p4

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 474
    :cond_1
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_2

    .line 475
    int-to-float v2, p3

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 477
    :cond_2
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_3

    .line 478
    int-to-float v2, p4

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 480
    :cond_3
    const/4 v0, 0x0

    .line 481
    .local v0, "shouldResolveLayoutDirection":Z
    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:F

    cmpl-float v3, v2, v1

    if-ltz v3, :cond_4

    .line 482
    int-to-float v3, p3

    mul-float v3, v3, v2

    .line 483
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 482
    invoke-static {p2, v2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 484
    const/4 v0, 0x1

    .line 486
    :cond_4
    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_5

    .line 487
    int-to-float v1, p3

    mul-float v1, v1, v2

    .line 488
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 487
    invoke-static {p2, v1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 489
    const/4 v0, 0x1

    .line 491
    :cond_5
    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 494
    nop

    .line 495
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 494
    invoke-static {p2, v1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 501
    :cond_6
    return-void
.end method

.method public fillMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "widthHint"    # I
    .param p3, "heightHint"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->fillMarginLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;II)V

    .line 447
    return-void
.end method

.method public restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 535
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    invoke-static {v0}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$000(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 540
    :cond_0
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    invoke-static {v0}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$100(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 547
    :cond_1
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$002(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;Z)Z

    .line 548
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    invoke-static {v0, v1}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$102(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;Z)Z

    .line 549
    return-void
.end method

.method public restoreMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 518
    invoke-virtual {p0, p1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->leftMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 520
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->topMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 521
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->rightMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 522
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->bottomMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 523
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 524
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    .line 523
    invoke-static {p1, v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 525
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 526
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    .line 525
    invoke-static {p1, v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 527
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 505
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    .line 506
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    .line 507
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:F

    .line 508
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 505
    const-string v1, "PercentLayoutInformation width: %f height %f, margins (%f, %f,  %f, %f, %f, %f)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
