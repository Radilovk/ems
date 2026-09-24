.class public final Lcom/isaigu/gymapp/widget/XemsIcon;
.super Landroid/graphics/drawable/Drawable;
.source "XemsIcon.java"


# static fields
.field public static final BOLT:I = 0x1

.field public static final GEAR:I = 0x3

.field public static final GUIDE:I = 0x4

.field public static final MINUS:I = 0xa

.field public static final PAUSE:I = 0x8

.field public static final PERSON:I = 0x2

.field public static final PLAN:I = 0x5

.field public static final PLAY:I = 0x7

.field public static final PLUS:I = 0x9

.field public static final SLIDERS:I = 0xb

.field public static final STOP:I = 0x6


# instance fields
.field private final fill:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final r:Landroid/graphics/RectF;

.field private final stroke:Landroid/graphics/Paint;

.field private type:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    .line 36
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->type:I

    .line 37
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 39
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 40
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/XemsIcon;->setColor(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v10, 0x40e00000    # 7.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x41400000    # 12.0f

    .line 59
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsIcon;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    .line 61
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_21

    .line 159
    :goto_20
    return-void

    .line 64
    :cond_21
    const/high16 v3, 0x41c00000    # 24.0f

    div-float v3, v1, v3

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 67
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->type:I

    packed-switch v0, :pswitch_data_28e

    .line 158
    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_20

    .line 71
    :pswitch_4f
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41580000    # 13.5f

    const/high16 v3, 0x40200000    # 2.5f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 73
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41580000    # 13.5f

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41300000    # 11.0f

    const/high16 v3, 0x41580000    # 13.5f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41ac0000    # 21.5f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 78
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 79
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4b

    .line 82
    :pswitch_8f
    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v1, 0x40800000    # 4.0f

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40900000    # 4.5f

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x419c0000    # 19.5f

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4b

    .line 87
    :pswitch_b3
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v10, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    const/4 v0, 0x0

    move v6, v0

    :goto_bf
    const/16 v0, 0x8

    if-ge v6, v0, :cond_4b

    .line 90
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    int-to-double v2, v6

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double v4, v0, v2

    .line 91
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v10

    add-float v1, v7, v0

    .line 92
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v0, v10

    add-float v2, v7, v0

    .line 93
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v0, v8

    const v3, 0x411ccccd    # 9.8f

    mul-float/2addr v0, v3

    add-float v3, v7, v0

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    const v4, 0x411ccccd    # 9.8f

    mul-float/2addr v0, v4

    add-float v4, v7, v0

    .line 95
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_bf

    .line 99
    :pswitch_fe
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v3, 0x41a80000    # 21.0f

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v0, v6, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41080000    # 8.5f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41780000    # 15.5f

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41780000    # 15.5f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 109
    :pswitch_138
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v3, 0x41a40000    # 20.5f

    const/high16 v4, 0x41a40000    # 20.5f

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 111
    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v3, 0x41a40000    # 20.5f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 112
    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v3, 0x41000000    # 8.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v3, 0x41800000    # 16.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 114
    const/high16 v0, 0x41080000    # 8.5f

    const/high16 v1, 0x41680000    # 14.5f

    const v2, 0x3f8ccccd    # 1.1f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 115
    const/high16 v0, 0x41680000    # 14.5f

    const v1, 0x3f8ccccd    # 1.1f

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 116
    const/high16 v0, 0x41780000    # 15.5f

    const/high16 v1, 0x41680000    # 14.5f

    const v2, 0x3f8ccccd    # 1.1f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 119
    :pswitch_191
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x40200000    # 2.5f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 123
    :pswitch_1ab
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x40f00000    # 7.5f

    const/high16 v2, 0x40900000    # 4.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x419c0000    # 19.5f

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x40f00000    # 7.5f

    const/high16 v2, 0x419c0000    # 19.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 133
    :pswitch_1e5
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, 0x3fc00000    # 1.5f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, 0x3fc00000    # 1.5f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 139
    :pswitch_211
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    const v1, 0x40266666    # 2.6f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    const/high16 v4, 0x41980000    # 19.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    move v2, v8

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    const/high16 v3, 0x41980000    # 19.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    move v2, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 144
    :pswitch_231
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    const v1, 0x40266666    # 2.6f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    const/high16 v3, 0x41980000    # 19.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    move v2, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 148
    :pswitch_246
    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v3, 0x41a00000    # 20.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v10

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 149
    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v3, 0x41a00000    # 20.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 150
    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x41880000    # 17.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 151
    const/high16 v0, 0x41700000    # 15.0f

    const v1, 0x400ccccd    # 2.2f

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 152
    const/high16 v0, 0x41100000    # 9.0f

    const v1, 0x400ccccd    # 2.2f

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 153
    const/high16 v0, 0x41500000    # 13.0f

    const/high16 v1, 0x41880000    # 17.0f

    const v2, 0x400ccccd    # 2.2f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 69
    :pswitch_data_28e
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_8f
        :pswitch_b3
        :pswitch_fe
        :pswitch_138
        :pswitch_191
        :pswitch_1ab
        :pswitch_1e5
        :pswitch_211
        :pswitch_231
        :pswitch_246
    .end packed-switch
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 175
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    return-void
.end method

.method public setColor(I)V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsIcon;->invalidateSelf()V

    .line 55
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 171
    return-void
.end method

.method public setType(I)V
    .registers 3

    .prologue
    .line 45
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->type:I

    if-eq p1, v0, :cond_9

    .line 46
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->type:I

    .line 47
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsIcon;->invalidateSelf()V

    .line 49
    :cond_9
    return-void
.end method
