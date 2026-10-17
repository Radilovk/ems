.class final Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;
.super Landroid/graphics/drawable/Drawable;
.source "DoubleImpulse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/DoubleImpulse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BigRing"
.end annotation


# instance fields
.field final arc:Landroid/graphics/Paint;

.field cx:F

.field cy:F

.field final d:F

.field flash:F

.field final head:Landroid/graphics/Paint;

.field final oval:Landroid/graphics/RectF;

.field progress:F

.field r:F

.field final track:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(F)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 883
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 877
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->track:Landroid/graphics/Paint;

    .line 878
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->arc:Landroid/graphics/Paint;

    .line 879
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->head:Landroid/graphics/Paint;

    .line 880
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->oval:Landroid/graphics/RectF;

    .line 884
    iput p1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->d:F

    .line 885
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->track:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 886
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 887
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->arc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 888
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->head:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 889
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    .prologue
    const v9, -0xbc5fb9

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    .line 892
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    cmpg-float v0, v0, v7

    if-lez v0, :cond_1a

    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->progress:F

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_1b

    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_1b

    .line 921
    :cond_1a
    :goto_1a
    return-void

    .line 895
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cx:F

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cy:F

    iget v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cx:F

    iget v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cy:F

    iget v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    add-float/2addr v5, v6

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 896
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->track:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->d:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 897
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->track:Landroid/graphics/Paint;

    const/high16 v1, 0x26000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 898
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cx:F

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cy:F

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->track:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 899
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->track:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->d:F

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 900
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->track:Landroid/graphics/Paint;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cx:F

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cy:F

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->track:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 902
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_9f

    .line 903
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->arc:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v8

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 904
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->arc:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 905
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->arc:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->flash:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 906
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cx:F

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cy:F

    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->arc:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1a

    .line 909
    :cond_9f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->arc:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->d:F

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 910
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->arc:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 911
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->arc:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 912
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->progress:F

    mul-float v3, v0, v1

    .line 913
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->oval:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->arc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 914
    add-float v0, v2, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 915
    iget v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cx:F

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    float-to-double v4, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    add-float/2addr v2, v3

    .line 916
    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->cy:F

    iget v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->r:F

    float-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    add-float/2addr v0, v3

    .line 917
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->head:Landroid/graphics/Paint;

    const v3, 0x66ffffff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 918
    const/high16 v1, 0x40e00000    # 7.0f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->d:F

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->head:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 919
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->head:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 920
    const/high16 v1, 0x40600000    # 3.5f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->d:F

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$BigRing;->head:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1a
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 930
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 924
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 927
    return-void
.end method
