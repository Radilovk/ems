.class final Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;
.super Landroid/graphics/drawable/Drawable;
.source "DoubleImpulse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/DoubleImpulse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Halo"
.end annotation


# static fields
.field static final SCALE:F = 0.5f


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field level:F

.field final m:Landroid/graphics/Matrix;

.field final p:Landroid/graphics/Paint;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 1042
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1045
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    .line 1046
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    return-void
.end method

.method static of(Landroid/view/View;Landroid/view/View;)Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;
    .registers 15

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    .line 1050
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1051
    if-lez v0, :cond_1a

    if-lez v1, :cond_1a

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1052
    :cond_1a
    const/4 v0, 0x0

    .line 1092
    :goto_1b
    return-object v0

    .line 1054
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1055
    int-to-float v0, v0

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v1, v1

    mul-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1056
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1058
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1059
    invoke-virtual {v1, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1060
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1061
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v3, 0x41300000    # 11.0f

    mul-float/2addr v3, v2

    mul-float/2addr v3, v9

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1062
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v2, v4

    mul-float/2addr v2, v9

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1063
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1064
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v1, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1065
    new-array v1, v12, [I

    .line 1066
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1067
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v2, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1068
    new-array v2, v12, [I

    .line 1069
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1070
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1071
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1073
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1074
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 1075
    const/16 v7, -0x4d00

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1076
    invoke-virtual {v0, v4, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1077
    invoke-virtual {v0, v4, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1078
    const/16 v7, -0x2ab1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1079
    const/16 v7, 0xaa

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1080
    aget v7, v2, v11

    aget v8, v1, v11

    sub-int/2addr v7, v8

    int-to-float v7, v7

    aget v2, v2, v10

    aget v8, v1, v10

    sub-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v0, v3, v7, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1081
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1082
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1083
    new-array v2, v12, [I

    .line 1084
    new-array v3, v12, [I

    .line 1085
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1086
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1087
    new-instance v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;-><init>()V

    .line 1088
    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    .line 1089
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1090
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    aget v5, v2, v11

    aget v6, v3, v11

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aget v6, v1, v11

    int-to-float v6, v6

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    aget v2, v2, v10

    aget v3, v3, v10

    sub-int/2addr v2, v3

    int-to-float v2, v2

    aget v1, v1, v10

    int-to-float v1, v1

    div-float/2addr v1, v9

    add-float/2addr v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1091
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v11, v11, v1, v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->setBounds(IIII)V

    goto/16 :goto_1b
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    .line 1096
    iget v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->level:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1101
    :cond_13
    :goto_13
    return-void

    .line 1099
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->level:F

    const/high16 v2, 0x436b0000    # 235.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1100
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_13
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 1118
    const/4 v0, -0x3

    return v0
.end method

.method recycle()V
    .registers 3

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    .line 1105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    .line 1106
    if-eqz v0, :cond_a

    .line 1107
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1109
    :cond_a
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 1112
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 1115
    return-void
.end method
