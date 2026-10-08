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

.field view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 1074
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1077
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    .line 1078
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    return-void
.end method

.method static of(Landroid/view/View;)Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;
    .registers 13

    .prologue
    .line 1083
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1084
    if-lez v1, :cond_12

    if-lez v2, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1085
    :cond_12
    const/4 v0, 0x0

    .line 1123
    :goto_13
    return-object v0

    .line 1087
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1088
    const/4 v0, 0x1

    int-to-float v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v4, 0x1

    int-to-float v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1089
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1091
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1092
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1093
    invoke-virtual {p0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1094
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x41300000    # 11.0f

    mul-float/2addr v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1095
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1096
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1097
    new-instance v7, Landroid/graphics/BlurMaskFilter;

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v7, v4, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1098
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 1099
    invoke-virtual {v0, v6, v4}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1100
    new-instance v8, Landroid/graphics/BlurMaskFilter;

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v5, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1101
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 1102
    invoke-virtual {v0, v6, v5}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1103
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1104
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1106
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1107
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 1108
    const/16 v10, -0x4d00

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1109
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v10, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1110
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v10, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1111
    const/16 v10, -0x2ab1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1112
    const/16 v10, 0xaa

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1113
    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v11, 0x0

    aget v11, v4, v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x1

    aget v5, v5, v11

    const/4 v11, 0x1

    aget v11, v4, v11

    sub-int/2addr v5, v11

    int-to-float v5, v5

    invoke-virtual {v0, v6, v10, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1114
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1115
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1116
    new-instance v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;-><init>()V

    .line 1117
    iput-object v8, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    .line 1118
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->view:Ljava/lang/ref/WeakReference;

    .line 1119
    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1120
    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    const/4 v6, 0x0

    aget v6, v4, v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    div-float/2addr v6, v7

    const/4 v7, 0x1

    aget v4, v4, v7

    int-to-float v4, v4

    const/high16 v7, 0x3f000000    # 0.5f

    div-float/2addr v4, v7

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1121
    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1122
    neg-int v4, v3

    neg-int v5, v3

    add-int/2addr v1, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->setBounds(IIII)V

    goto/16 :goto_13
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    .line 1127
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

    .line 1132
    :cond_13
    :goto_13
    return-void

    .line 1130
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->level:F

    const/high16 v2, 0x436b0000    # 235.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1131
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_13
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 1149
    const/4 v0, -0x3

    return v0
.end method

.method recycle()V
    .registers 3

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    .line 1136
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    .line 1137
    if-eqz v0, :cond_a

    .line 1138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1140
    :cond_a
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 1143
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 1146
    return-void
.end method
