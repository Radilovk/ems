.class public Lcom/isaigu/gymapp/widget/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareFloat(FF)I
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    const v3, 0x47c35000    # 100000.0f

    .line 66
    mul-float v2, p0, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 67
    .local v0, "ta":I
    mul-float v2, p1, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 68
    .local v1, "tb":I
    if-le v0, v1, :cond_0

    .line 69
    const/4 v2, 0x1

    .line 73
    :goto_0
    return v2

    .line 70
    :cond_0
    if-ge v0, v1, :cond_1

    .line 71
    const/4 v2, -0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 52
    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 54
    :goto_0
    return v1

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 54
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method public static drawNinePath(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
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
    .locals 12
    .param p0, "size"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v9, p1

    .line 22
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 23
    .local v9, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 25
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 26
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, p0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v11, v2, v3

    .line 27
    .local v11, "scaleHeight":F
    invoke-virtual {v5, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v7, v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    move-object v8, v0

    .line 36
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "scaleHeight":F
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v8

    .line 32
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    .local v10, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v10}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    invoke-virtual {p1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v7, v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    move-object v8, v0

    .line 36
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
