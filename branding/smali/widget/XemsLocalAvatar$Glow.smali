.class final Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;
.super Landroid/graphics/drawable/Drawable;
.source "XemsLocalAvatar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalAvatar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Glow"
.end annotation


# instance fields
.field private final p:Landroid/graphics/Paint;

.field private final v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 474
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 472
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    .line 475
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    .line 476
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 477
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v10, 0x3fc00000    # 1.5f

    .line 481
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 483
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_26

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_31

    .line 484
    :cond_26
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->setBounds(IIII)V

    .line 486
    :cond_31
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 487
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42300000    # 44.0f

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    const/high16 v4, 0x42380000    # 46.0f

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    .line 488
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_51

    .line 506
    :goto_50
    return-void

    .line 491
    :cond_51
    int-to-float v0, v0

    div-float v4, v0, v5

    .line 492
    int-to-float v0, v1

    div-float v1, v0, v5

    .line 494
    const/4 v0, 0x6

    :goto_58
    if-lt v0, v11, :cond_86

    .line 495
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 496
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    rsub-int/lit8 v6, v0, 0x6

    mul-int/lit8 v6, v6, 0xe

    add-int/lit8 v6, v6, 0x16

    const/16 v7, 0x5e

    const/16 v8, 0xf0

    const/16 v9, 0x8c

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 497
    int-to-float v5, v0

    const v6, 0x400ccccd    # 2.2f

    mul-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 494
    add-int/lit8 v0, v0, -0x1

    goto :goto_58

    .line 500
    :cond_86
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x40900000    # 4.5f

    mul-float/2addr v5, v2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 501
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    const v5, -0xa10f74

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    mul-float v0, v10, v2

    sub-float v0, v3, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 503
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    mul-float v5, v10, v2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 504
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    const v5, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    mul-float v0, v10, v2

    sub-float v0, v3, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Glow;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_50
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 516
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 509
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 512
    return-void
.end method
