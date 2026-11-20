.class final Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;
.super Landroid/view/View;
.source "XemsLocalConsent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalConsent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SignPad"
.end annotation


# instance fields
.field private any:Z

.field private final ink:Landroid/graphics/Paint;

.field private lx:F

.field private ly:F

.field onInk:Landroid/view/View;

.field private final path:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 406
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 398
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->path:Landroid/graphics/Path;

    .line 399
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->ink:Landroid/graphics/Paint;

    .line 407
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->ink:Landroid/graphics/Paint;

    const v1, -0xf4e0bc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 408
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->ink:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 409
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->ink:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 410
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->ink:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 411
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->ink:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x40266666    # 2.6f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 412
    return-void
.end method


# virtual methods
.method bitmap()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->any:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->getWidth()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->getHeight()I

    move-result v0

    if-gtz v0, :cond_12

    .line 422
    :cond_10
    const/4 v0, 0x0

    .line 428
    :goto_11
    return-object v0

    .line 424
    :cond_12
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 426
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 427
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->ink:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_11
.end method

.method clear()V
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->any:Z

    .line 417
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->invalidate()V

    .line 418
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 434
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->ink:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 435
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v0, 0x1

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_60

    .line 466
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_16
    return v0

    .line 443
    :pswitch_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 444
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 445
    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->lx:F

    .line 446
    iput v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->ly:F

    goto :goto_16

    .line 449
    :pswitch_28
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->path:Landroid/graphics/Path;

    iget v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->lx:F

    iget v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->ly:F

    iget v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->lx:F

    add-float/2addr v6, v1

    div-float/2addr v6, v8

    iget v7, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->ly:F

    add-float/2addr v7, v2

    div-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 450
    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->lx:F

    .line 451
    iput v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->ly:F

    .line 452
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->any:Z

    if-nez v1, :cond_53

    .line 453
    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->any:Z

    .line 454
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->onInk:Landroid/view/View;

    if-eqz v1, :cond_53

    .line 455
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->onInk:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 456
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->onInk:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 459
    :cond_53
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->invalidate()V

    goto :goto_16

    .line 462
    :pswitch_57
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 463
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->invalidate()V

    goto :goto_16

    .line 441
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_17
        :pswitch_57
        :pswitch_28
    .end packed-switch
.end method
