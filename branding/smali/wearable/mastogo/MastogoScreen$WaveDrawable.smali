.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MastogoScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WaveDrawable"
.end annotation


# static fields
.field static final DIGITS:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+/"


# instance fields
.field final bars:Ljava/lang/String;

.field final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(II)V
    .registers 5

    .prologue
    .line 2030
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2028
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->paint:Landroid/graphics/Paint;

    .line 2031
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->wave(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->bars:Ljava/lang/String;

    .line 2032
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2033
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    const/high16 v10, 0x42100000    # 36.0f

    .line 2037
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 2038
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v8, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v9, v0

    .line 2039
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x43200000    # 160.0f

    div-float v2, v8, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2040
    const/4 v0, 0x0

    move v6, v0

    :goto_21
    add-int/lit8 v0, v6, 0x2

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->bars:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 2041
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    const-string v1, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+/"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->bars:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    mul-float/2addr v1, v8

    const/high16 v2, 0x42800000    # 64.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 2042
    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    const-string v2, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+/"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->bars:Ljava/lang/String;

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    div-float/2addr v2, v10

    add-float/2addr v2, v0

    .line 2043
    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    const-string v3, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+/"

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->bars:Ljava/lang/String;

    add-int/lit8 v5, v6, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v3, v9

    div-float/2addr v3, v10

    add-float v4, v0, v3

    .line 2044
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2040
    add-int/lit8 v0, v6, 0x3

    move v6, v0

    goto :goto_21

    .line 2046
    :cond_7b
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 2060
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2051
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2056
    return-void
.end method
