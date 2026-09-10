.class public Lcom/isaigu/gymapp/widget/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareFloat(FF)I
    .locals 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 66
    const v0, 0x47c35000    # 100000.0f

    mul-float v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 67
    .local v1, "ta":I
    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 68
    .local v0, "tb":I
    if-le v1, v0, :cond_0

    .line 69
    const/4 v2, 0x1

    return v2

    .line 70
    :cond_0
    if-ge v1, v0, :cond_1

    .line 71
    const/4 v2, -0x1

    return v2

    .line 73
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 52
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 54
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 52
    .end local v0    # "scale":F
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static drawNinePath(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/NinePatch;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 48
    .local v0, "patch":Landroid/graphics/NinePatch;
    invoke-virtual {v0, p0, p2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 49
    return-void
.end method

.method public static drawableToBitmap(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "size"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 22
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 23
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 25
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v2

    .line 26
    .local v9, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, p0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v2, v3

    .line 27
    .local v10, "scaleHeight":F
    invoke-virtual {v9, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 28
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, v0

    move-object v7, v9

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    return-object v0

    .line 32
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "scaleHeight":F
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    return-object v0
.end method
