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

.field clip:Landroid/graphics/Rect;

.field level:F

.field final m:Landroid/graphics/Matrix;

.field offX:F

.field offY:F

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
    .line 1072
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1075
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    .line 1076
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    return-void
.end method

.method static of(Landroid/view/View;Landroid/view/View;)Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;
    .registers 14

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    .line 1144
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1145
    if-lez v0, :cond_1a

    if-lez v1, :cond_1a

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1146
    :cond_1a
    const/4 v0, 0x0

    .line 1184
    :goto_1b
    return-object v0

    .line 1148
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1149
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

    .line 1150
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1152
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1153
    invoke-virtual {v1, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1154
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1155
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v3, 0x41300000    # 11.0f

    mul-float/2addr v3, v2

    mul-float/2addr v3, v9

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1156
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v2, v4

    mul-float/2addr v2, v9

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1157
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1158
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v1, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1159
    new-array v1, v7, [I

    .line 1160
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1161
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v2, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1162
    new-array v2, v7, [I

    .line 1163
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1164
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1165
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1167
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1168
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 1169
    const/16 v7, -0x4d00

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1170
    invoke-virtual {v0, v4, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1171
    invoke-virtual {v0, v4, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1172
    const/16 v7, -0x2ab1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1173
    const/16 v7, 0xaa

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1174
    aget v7, v2, v11

    aget v8, v1, v11

    sub-int/2addr v7, v8

    int-to-float v7, v7

    aget v2, v2, v10

    aget v8, v1, v10

    sub-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v0, v3, v7, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1175
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1176
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1177
    new-instance v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;-><init>()V

    .line 1178
    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    .line 1179
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->view:Ljava/lang/ref/WeakReference;

    .line 1180
    aget v2, v1, v11

    int-to-float v2, v2

    div-float/2addr v2, v9

    iput v2, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->offX:F

    .line 1181
    aget v1, v1, v10

    int-to-float v1, v1

    div-float/2addr v1, v9

    iput v1, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->offY:F

    .line 1182
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->place(Landroid/view/View;)V

    .line 1183
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v11, v11, v1, v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->setBounds(IIII)V

    goto/16 :goto_1b
.end method

.method static toRoot(Landroid/view/View;Landroid/view/View;Landroid/graphics/Matrix;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1126
    move v2, v1

    .line 1127
    :goto_2
    const/16 v0, 0x40

    if-ge v2, v0, :cond_48

    if-eqz p0, :cond_48

    if-eq p0, p1, :cond_48

    .line 1128
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1129
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1130
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1132
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1133
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_2f

    .line 1140
    :goto_2e
    return v1

    .line 1136
    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1137
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1127
    add-int/lit8 v2, v2, 0x1

    move-object p0, v0

    goto :goto_2

    .line 1140
    :cond_48
    if-ne p0, p1, :cond_4d

    const/4 v0, 0x1

    :goto_4b
    move v1, v0

    goto :goto_2e

    :cond_4d
    move v0, v1

    goto :goto_4b
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    .line 1188
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

    .line 1200
    :cond_13
    :goto_13
    return-void

    .line 1191
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->level:F

    const/high16 v2, 0x436b0000    # 235.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->clip:Landroid/graphics/Rect;

    if-eqz v0, :cond_3b

    .line 1193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1194
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->clip:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1195
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_13

    .line 1198
    :cond_3b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_13
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 1217
    const/4 v0, -0x3

    return v0
.end method

.method place(Landroid/view/View;)V
    .registers 12

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 1086
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    .line 1087
    :goto_13
    if-eqz v3, :cond_17

    if-nez p1, :cond_1a

    .line 1120
    :cond_17
    :goto_17
    return-void

    :cond_18
    move-object v3, v4

    .line 1086
    goto :goto_13

    .line 1090
    :cond_1a
    new-array v0, v5, [I

    .line 1091
    new-array v5, v5, [I

    .line 1092
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1093
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1096
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    invoke-virtual {v6, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1097
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->offX:F

    iget v8, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->offY:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1098
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    invoke-static {v3, p1, v6}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->toRoot(Landroid/view/View;Landroid/view/View;Landroid/graphics/Matrix;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 1099
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    invoke-virtual {v6, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1100
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->m:Landroid/graphics/Matrix;

    aget v7, v0, v2

    aget v8, v5, v2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->offX:F

    add-float/2addr v7, v8

    aget v0, v0, v1

    aget v5, v5, v1

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->offY:F

    add-float/2addr v0, v5

    invoke-virtual {v6, v7, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1104
    :cond_56
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1105
    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-virtual {v3, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_93

    move v0, v1

    .line 1106
    :goto_68
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-long v8, v1

    mul-long/2addr v6, v8

    .line 1107
    if-eqz v0, :cond_8d

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_8d

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-long v8, v2

    mul-long/2addr v0, v8

    const-wide/16 v8, 0x2

    mul-long/2addr v0, v8

    cmp-long v0, v0, v6

    if-gez v0, :cond_95

    .line 1108
    :cond_8d
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->level:F

    .line 1109
    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->clip:Landroid/graphics/Rect;

    goto :goto_17

    :cond_93
    move v0, v2

    .line 1105
    goto :goto_68

    .line 1112
    :cond_95
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_a9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_c3

    .line 1113
    :cond_a9
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1115
    neg-int v1, v0

    neg-int v0, v0

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 1116
    iput-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->clip:Landroid/graphics/Rect;

    goto/16 :goto_17

    .line 1118
    :cond_c3
    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->clip:Landroid/graphics/Rect;

    goto/16 :goto_17
.end method

.method recycle()V
    .registers 3

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    .line 1204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->bmp:Landroid/graphics/Bitmap;

    .line 1205
    if-eqz v0, :cond_a

    .line 1206
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1208
    :cond_a
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 1211
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 1214
    return-void
.end method
