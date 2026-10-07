.class final Lcom/isaigu/gymapp/wearable/MasterKeys$Key;
.super Landroid/graphics/drawable/Drawable;
.source "MasterKeys.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/MasterKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field final color:I

.field final d:F

.field final p:Landroid/graphics/Paint;

.field final plus:Z

.field pressed:Z

.field releasedAt:J


# direct methods
.method constructor <init>(FZ)V
    .registers 5

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    .line 72
    iput p1, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->d:F

    .line 73
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->plus:Z

    .line 74
    if-eqz p2, :cond_17

    const v0, -0x1ac6cb

    :goto_14
    iput v0, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->color:I

    .line 75
    return-void

    .line 74
    :cond_17
    const v0, -0xbc5fb9

    goto :goto_14
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    .prologue
    const/16 v3, 0xff

    .line 105
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->d:F

    mul-float/2addr v1, v4

    sub-float v4, v0, v1

    .line 109
    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_2b

    .line 133
    :cond_2a
    :goto_2a
    return-void

    .line 112
    :cond_2b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->pressed:Z

    if-nez v0, :cond_3c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->releasedAt:J

    sub-long/2addr v0, v8

    const-wide/16 v8, 0xb4

    cmp-long v0, v0, v8

    if-gez v0, :cond_d0

    :cond_3c
    const/4 v0, 0x1

    .line 113
    :goto_3d
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->color:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    if-eqz v0, :cond_d3

    move v1, v3

    :goto_50
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 117
    if-nez v0, :cond_7e

    .line 118
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x3fc00000    # 1.5f

    iget v7, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->d:F

    mul-float/2addr v5, v7

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    const/16 v5, 0x8c

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    const/high16 v1, 0x3f400000    # 0.75f

    iget v5, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->d:F

    mul-float/2addr v1, v5

    sub-float v1, v4, v1

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    :cond_7e
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 125
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x40200000    # 2.5f

    iget v7, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->d:F

    mul-float/2addr v5, v7

    const v7, 0x3e0f5c29    # 0.14f

    mul-float/2addr v7, v4

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    if-eqz v0, :cond_d7

    const/4 v1, -0x1

    :goto_a3
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    if-eqz v0, :cond_da

    :goto_aa
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    const v0, 0x3ed70a3d    # 0.42f

    mul-float v7, v4, v0

    .line 129
    sub-float v1, v6, v7

    add-float v3, v6, v7

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 130
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->plus:Z

    if-eqz v0, :cond_2a

    .line 131
    sub-float v3, v2, v7

    add-float v4, v2, v7

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    move v2, v3

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2a

    .line 112
    :cond_d0
    const/4 v0, 0x0

    goto/16 :goto_3d

    .line 115
    :cond_d3
    const/16 v1, 0x30

    goto/16 :goto_50

    .line 126
    :cond_d7
    iget v1, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->color:I

    goto :goto_a3

    .line 127
    :cond_da
    const/16 v3, 0xe0

    goto :goto_aa
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 142
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    .line 83
    array-length v4, p1

    move v3, v2

    move v0, v2

    :goto_5
    if-ge v3, v4, :cond_12

    aget v5, p1, v3

    .line 84
    const v6, 0x10100a7

    if-ne v5, v6, :cond_f

    move v0, v1

    .line 83
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 88
    :cond_12
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->pressed:Z

    if-ne v0, v3, :cond_18

    move v1, v2

    .line 97
    :goto_17
    return v1

    .line 91
    :cond_18
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->pressed:Z

    .line 92
    if-nez v0, :cond_2d

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->releasedAt:J

    .line 94
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->releasedAt:J

    const-wide/16 v4, 0xb4

    add-long/2addr v2, v4

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    invoke-virtual {p0, p0, v2, v3}, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 96
    :cond_2d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->invalidateSelf()V

    goto :goto_17
.end method

.method public run()V
    .registers 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/MasterKeys$Key;->invalidateSelf()V

    .line 102
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .prologue
    .line 136
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .prologue
    .line 139
    return-void
.end method
