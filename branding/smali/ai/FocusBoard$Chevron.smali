.class final Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;
.super Landroid/graphics/drawable/Drawable;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Chevron"
.end annotation


# instance fields
.field private final path:Landroid/graphics/Path;

.field private final pen:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(I)V
    .registers 4

    .prologue
    .line 3175
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3172
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->pen:Landroid/graphics/Paint;

    .line 3173
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->path:Landroid/graphics/Path;

    .line 3176
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->pen:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3177
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->pen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3178
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->pen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 3179
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->pen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 3180
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const v7, 0x3ec28f5c    # 0.38f

    .line 3184
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3185
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 3186
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 3187
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->pen:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x3e0f5c29    # 0.14f

    mul-float/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3188
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 3189
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->path:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float v6, v2, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3190
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->path:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    const v6, 0x3f28f5c3    # 0.66f

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3191
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->path:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v2, v7

    add-float/2addr v0, v2

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3192
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->pen:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3193
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 3207
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 3197
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->pen:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3198
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 3202
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chevron;->pen:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 3203
    return-void
.end method
