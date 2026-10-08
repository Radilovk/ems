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
    .line 1094
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1097
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    .line 1098
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    return-void
.end method

.method static of(Landroid/view/View;)Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;
    .registers 14

    .prologue
    .line 1103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1104
    if-lez v1, :cond_12

    if-lez v2, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1105
    :cond_12
    const/4 v0, 0x0

    .line 1162
    :goto_13
    return-object v0

    .line 1107
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1108
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

    .line 1109
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1111
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1112
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CircleSeekBar"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_173

    .line 1117
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 1118
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1119
    const/high16 v6, 0x41400000    # 12.0f

    mul-float/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1120
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1121
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 1122
    int-to-float v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    int-to-float v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1126
    :goto_89
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x41300000    # 11.0f

    mul-float/2addr v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1127
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1128
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1129
    new-instance v7, Landroid/graphics/BlurMaskFilter;

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v7, v4, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1130
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 1131
    invoke-virtual {v0, v6, v4}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1132
    new-instance v8, Landroid/graphics/BlurMaskFilter;

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v5, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1133
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 1134
    invoke-virtual {v0, v6, v5}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1135
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1137
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1138
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 1139
    const/16 v11, -0x4d00

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1140
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v7, v11, v12, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1141
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v7, v11, v12, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1142
    const/16 v11, -0x2ab1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1143
    const/16 v11, 0xaa

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1144
    const/4 v11, 0x0

    aget v11, v5, v11

    const/4 v12, 0x0

    aget v12, v4, v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v5, v5, v12

    const/4 v12, 0x1

    aget v12, v4, v12

    sub-int/2addr v5, v12

    int-to-float v5, v5

    invoke-virtual {v9, v6, v11, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1147
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1148
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 1149
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1150
    const/4 v11, 0x0

    aget v11, v4, v11

    neg-int v11, v11

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v12, v4, v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v9, v5, v11, v12, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1151
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1152
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1153
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1154
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1155
    new-instance v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;-><init>()V

    .line 1156
    iput-object v8, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    .line 1157
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->view:Ljava/lang/ref/WeakReference;

    .line 1158
    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1159
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

    .line 1160
    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1161
    neg-int v4, v3

    neg-int v5, v3

    add-int/2addr v1, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->setBounds(IIII)V

    goto/16 :goto_13

    .line 1124
    :cond_173
    invoke-virtual {p0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_89
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    .line 1166
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

    .line 1171
    :cond_13
    :goto_13
    return-void

    .line 1169
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->level:F

    const/high16 v2, 0x436b0000    # 235.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1170
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_13
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 1188
    const/4 v0, -0x3

    return v0
.end method

.method recycle()V
    .registers 3

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    .line 1175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    .line 1176
    if-eqz v0, :cond_a

    .line 1177
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1179
    :cond_a
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 1182
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 1185
    return-void
.end method
