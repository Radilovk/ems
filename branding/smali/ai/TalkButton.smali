.class public final Lcom/isaigu/gymapp/ai/TalkButton;
.super Landroid/view/View;
.source "TalkButton.java"


# instance fields
.field private final p:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final r:Landroid/graphics/RectF;

.field private send:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->r:Landroid/graphics/RectF;

    .line 21
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->path:Landroid/graphics/Path;

    .line 26
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/ai/TalkButton;->setClickable(Z)V

    .line 27
    const-string v0, "\u0413\u043e\u0432\u043e\u0440\u0438"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/TalkButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method


# virtual methods
.method public isSend()Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->send:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/TalkButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/TalkButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 53
    const/high16 v2, 0x40000000    # 2.0f

    div-float v7, v0, v2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v8, v1, v0

    .line 54
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x41c00000    # 24.0f

    div-float v1, v6, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 55
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v6, v0

    sub-float v3, v0, v2

    .line 56
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    .line 57
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->send:Z

    if-eqz v0, :cond_b5

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_37
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->send:Z

    if-eqz v0, :cond_bd

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_53
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->send:Z

    if-eqz v0, :cond_bf

    .line 66
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->path:Landroid/graphics/Path;

    const v1, 0x3e8a3d71    # 0.27f

    mul-float/2addr v1, v6

    add-float/2addr v1, v7

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 70
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->path:Landroid/graphics/Path;

    const v1, 0x3e570a3d    # 0.21f

    mul-float/2addr v1, v6

    sub-float v1, v7, v1

    const v2, 0x3e6b851f    # 0.23f

    mul-float/2addr v2, v6

    sub-float v2, v8, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->path:Landroid/graphics/Path;

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v6

    sub-float v1, v7, v1

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->path:Landroid/graphics/Path;

    const v1, 0x3e570a3d    # 0.21f

    mul-float/2addr v1, v6

    sub-float v1, v7, v1

    const v2, 0x3e6b851f    # 0.23f

    mul-float/2addr v2, v6

    add-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 91
    :goto_b4
    return-void

    .line 58
    :cond_b5
    const/16 v0, 0x22

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto/16 :goto_37

    :cond_bd
    move v0, v1

    .line 62
    goto :goto_53

    .line 78
    :cond_bf
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    const v0, 0x3e2e147b    # 0.17f

    mul-float/2addr v0, v6

    const v1, 0x3e8a3d71    # 0.27f

    mul-float/2addr v1, v6

    .line 81
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/TalkButton;->r:Landroid/graphics/RectF;

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float v4, v7, v4

    const v5, 0x3e8a3d71    # 0.27f

    mul-float/2addr v5, v6

    sub-float v5, v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v0, v9

    add-float/2addr v9, v7

    const v10, 0x3e8a3d71    # 0.27f

    mul-float/2addr v10, v6

    sub-float v10, v8, v10

    add-float/2addr v1, v10

    const v10, 0x3d23d70a    # 0.04f

    mul-float/2addr v10, v6

    add-float/2addr v1, v10

    invoke-virtual {v3, v4, v5, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/TalkButton;->r:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 86
    const v0, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v6

    .line 87
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/TalkButton;->r:Landroid/graphics/RectF;

    sub-float v2, v7, v0

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v6

    sub-float v3, v8, v3

    add-float/2addr v0, v7

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v6

    add-float/2addr v4, v8

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/TalkButton;->r:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 89
    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v6

    add-float v2, v8, v0

    const v0, 0x3e570a3d    # 0.21f

    mul-float/2addr v0, v6

    add-float v4, v8, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    const v0, 0x3db851ec    # 0.09f

    mul-float/2addr v0, v6

    sub-float v1, v7, v0

    const v0, 0x3e570a3d    # 0.21f

    mul-float/2addr v0, v6

    add-float v2, v8, v0

    const v0, 0x3db851ec    # 0.09f

    mul-float/2addr v0, v6

    add-float v3, v7, v0

    const v0, 0x3e570a3d    # 0.21f

    mul-float/2addr v0, v6

    add-float v4, v8, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/TalkButton;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_b4
.end method

.method public setPressed(Z)V
    .registers 3

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 46
    if-eqz p1, :cond_c

    const v0, 0x3f3851ec    # 0.72f

    :goto_8
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/TalkButton;->setAlpha(F)V

    .line 47
    return-void

    .line 46
    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8
.end method

.method public setSend(Z)V
    .registers 3

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/TalkButton;->send:Z

    if-eq p1, v0, :cond_10

    .line 33
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/TalkButton;->send:Z

    .line 34
    if-eqz p1, :cond_11

    const-string v0, "\u0418\u0437\u043f\u0440\u0430\u0442\u0438"

    :goto_a
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/TalkButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/TalkButton;->invalidate()V

    .line 37
    :cond_10
    return-void

    .line 34
    :cond_11
    const-string v0, "\u0413\u043e\u0432\u043e\u0440\u0438"

    goto :goto_a
.end method
