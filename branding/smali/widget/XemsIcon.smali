.class public final Lcom/isaigu/gymapp/widget/XemsIcon;
.super Landroid/graphics/drawable/Drawable;
.source "XemsIcon.java"


# static fields
.field public static final BOLT:I = 0x1

.field public static final CARD:I = 0xd

.field public static final CHART:I = 0xc

.field public static final DUMBBELL:I = 0x10

.field public static final GEAR:I = 0x3

.field public static final GUIDE:I = 0x4

.field public static final HISTORY:I = 0xe

.field public static final MINUS:I = 0xa

.field public static final NEXT:I = 0x11

.field public static final PADS:I = 0x13

.field public static final PAUSE:I = 0x8

.field public static final PERSON:I = 0x2

.field public static final PLAN:I = 0x5

.field public static final PLAY:I = 0x7

.field public static final PLUS:I = 0x9

.field public static final SCALE:I = 0x12

.field public static final SEARCH:I = 0xf

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

    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    .line 52
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->type:I

    .line 53
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 56
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/XemsIcon;->setColor(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    .prologue
    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v2, 0x41400000    # 12.0f

    .line 75
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsIcon;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    .line 77
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_21

    .line 256
    :goto_20
    return-void

    .line 80
    :cond_21
    const/high16 v5, 0x41c00000    # 24.0f

    div-float v5, v1, v5

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v1, v8

    sub-float/2addr v7, v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    sub-float/2addr v0, v1

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->type:I

    packed-switch v0, :pswitch_data_532

    .line 255
    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_20

    .line 87
    :pswitch_4f
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v3, 0x40d00000    # 6.5f

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x418c0000    # 17.5f

    const/high16 v3, 0x41ac0000    # 21.5f

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40d00000    # 6.5f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x41100000    # 9.0f

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const v1, 0x3f99999a    # 1.2f

    const v3, 0x3f99999a    # 1.2f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 93
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x418c0000    # 17.5f

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const v1, 0x3f99999a    # 1.2f

    const v3, 0x3f99999a    # 1.2f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 95
    const/high16 v1, 0x41100000    # 9.0f

    const/high16 v3, 0x41700000    # 15.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4b

    .line 98
    :pswitch_bb
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41580000    # 13.5f

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41580000    # 13.5f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41300000    # 11.0f

    const/high16 v2, 0x41580000    # 13.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41ac0000    # 21.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41980000    # 19.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41500000    # 13.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 109
    :pswitch_102
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v9, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40900000    # 4.5f

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x419c0000    # 19.5f

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 114
    :pswitch_123
    const/high16 v0, 0x40400000    # 3.0f

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 115
    const/high16 v0, 0x40e00000    # 7.0f

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 116
    const/4 v0, 0x0

    :goto_132
    const/16 v1, 0x8

    if-ge v0, v1, :cond_4b

    .line 117
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    int-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double v8, v4, v6

    .line 118
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v1, v4

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v1, v3

    add-float v4, v2, v1

    .line 119
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v1, v6

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v1, v3

    add-float v5, v2, v1

    .line 120
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v1, v6

    const v3, 0x411ccccd    # 9.8f

    mul-float/2addr v1, v3

    add-float v6, v2, v1

    .line 121
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v1, v8

    const v3, 0x411ccccd    # 9.8f

    mul-float/2addr v1, v3

    add-float v7, v2, v1

    .line 122
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_132

    .line 126
    :pswitch_174
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-virtual {v0, v1, v4, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v3, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v3, 0x41080000    # 8.5f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41780000    # 15.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41780000    # 15.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 136
    :pswitch_1b4
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v4, 0x41a40000    # 20.5f

    const/high16 v5, 0x41a40000    # 20.5f

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v3, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 138
    const/high16 v4, 0x40600000    # 3.5f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x41a40000    # 20.5f

    const/high16 v7, 0x41200000    # 10.0f

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 139
    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v7, 0x40e00000    # 7.0f

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v9

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 140
    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x40e00000    # 7.0f

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    const/high16 v0, 0x41080000    # 8.5f

    const/high16 v1, 0x41680000    # 14.5f

    const v3, 0x3f8ccccd    # 1.1f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    const/high16 v0, 0x41680000    # 14.5f

    const v1, 0x3f8ccccd    # 1.1f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 143
    const/high16 v0, 0x41780000    # 15.5f

    const/high16 v1, 0x41680000    # 14.5f

    const v2, 0x3f8ccccd    # 1.1f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 146
    :pswitch_216
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x40200000    # 2.5f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 150
    :pswitch_230
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 151
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x40f00000    # 7.5f

    const/high16 v3, 0x40900000    # 4.5f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 152
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x419c0000    # 19.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x40f00000    # 7.5f

    const/high16 v2, 0x419c0000    # 19.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 160
    :pswitch_26a
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 165
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x41840000    # 16.5f

    const/high16 v2, 0x419c0000    # 19.5f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const v1, 0x3f99999a    # 1.2f

    const v2, 0x3f99999a    # 1.2f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 172
    :pswitch_2b6
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, 0x3fc00000    # 1.5f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, 0x3fc00000    # 1.5f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 178
    :pswitch_2e4
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    const v1, 0x40266666    # 2.6f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    const/high16 v5, 0x41980000    # 19.0f

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 180
    const/high16 v7, 0x41980000    # 19.0f

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v6, v2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 183
    :pswitch_302
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    const v1, 0x40266666    # 2.6f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    const/high16 v7, 0x41980000    # 19.0f

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v6, v2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 187
    :pswitch_317
    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v7, 0x40e00000    # 7.0f

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 189
    const/high16 v5, 0x41880000    # 17.0f

    const/high16 v7, 0x41880000    # 17.0f

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 190
    const/high16 v0, 0x41700000    # 15.0f

    const/high16 v1, 0x40e00000    # 7.0f

    const v3, 0x400ccccd    # 2.2f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 191
    const/high16 v0, 0x41100000    # 9.0f

    const v1, 0x400ccccd    # 2.2f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 192
    const/high16 v0, 0x41500000    # 13.0f

    const/high16 v1, 0x41880000    # 17.0f

    const v2, 0x400ccccd    # 2.2f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 195
    :pswitch_357
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v6

    move v7, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x40900000    # 4.5f

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41180000    # 9.5f

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41500000    # 13.0f

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x419c0000    # 19.5f

    const/high16 v2, 0x40d00000    # 6.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 202
    const/high16 v0, 0x419c0000    # 19.5f

    const/high16 v1, 0x40d00000    # 6.5f

    const v2, 0x3fcccccd    # 1.6f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 205
    :pswitch_39d
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v2, 0x41a40000    # 20.5f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 207
    const/high16 v0, 0x41080000    # 8.5f

    const/high16 v1, 0x41280000    # 10.5f

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 208
    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x41780000    # 15.5f

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v4, 0x41780000    # 15.5f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 209
    const/high16 v1, 0x41580000    # 13.5f

    const/high16 v2, 0x41180000    # 9.5f

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x41180000    # 9.5f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 210
    const/high16 v1, 0x41580000    # 13.5f

    const/high16 v2, 0x41500000    # 13.0f

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x41500000    # 13.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 211
    const/high16 v1, 0x41580000    # 13.5f

    const v2, 0x41826666    # 16.3f

    const/high16 v3, 0x41840000    # 16.5f

    const v4, 0x41826666    # 16.3f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 214
    :pswitch_3fa
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v4, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 215
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x43910000    # 290.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const v1, 0x404ccccd    # 3.2f

    const v3, 0x40d9999a    # 6.8f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const v1, 0x40933333    # 4.6f

    const v3, 0x4129999a    # 10.6f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const v1, 0x41066666    # 8.4f

    const v3, 0x41166666    # 9.4f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 221
    const/high16 v5, 0x41480000    # 12.5f

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v9

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 222
    const/high16 v3, 0x41480000    # 12.5f

    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v5, 0x41680000    # 14.5f

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 225
    :pswitch_451
    const/high16 v0, 0x41280000    # 10.5f

    const/high16 v1, 0x41280000    # 10.5f

    const/high16 v2, 0x40c00000    # 6.0f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 226
    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v5, 0x41700000    # 15.0f

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    move v7, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 229
    :pswitch_469
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v2, 0x40600000    # 3.5f

    const/high16 v3, 0x41a40000    # 20.5f

    const/high16 v5, 0x41a40000    # 20.5f

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40d00000    # 6.5f

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 232
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const v1, 0x3f99999a    # 1.2f

    const v2, 0x3f99999a    # 1.2f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 233
    const/high16 v1, 0x41080000    # 8.5f

    const/high16 v2, 0x41780000    # 15.5f

    const/high16 v3, 0x41080000    # 8.5f

    const/high16 v4, 0x41880000    # 17.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 234
    const/high16 v1, 0x41780000    # 15.5f

    const/high16 v2, 0x41780000    # 15.5f

    const/high16 v3, 0x41780000    # 15.5f

    const/high16 v4, 0x41880000    # 17.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 237
    :pswitch_4b3
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v3, 0x41500000    # 13.0f

    const/high16 v5, 0x41180000    # 9.5f

    const/high16 v6, 0x41a40000    # 20.5f

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 238
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const v1, 0x400ccccd    # 2.2f

    const v3, 0x400ccccd    # 2.2f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x41680000    # 14.5f

    const/high16 v3, 0x41500000    # 13.0f

    const/high16 v5, 0x41ac0000    # 21.5f

    const/high16 v6, 0x41a40000    # 20.5f

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const v1, 0x400ccccd    # 2.2f

    const v3, 0x400ccccd    # 2.2f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 241
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 243
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41280000    # 10.5f

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41580000    # 13.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 85
    nop

    :pswitch_data_532
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_102
        :pswitch_123
        :pswitch_174
        :pswitch_1b4
        :pswitch_216
        :pswitch_230
        :pswitch_2b6
        :pswitch_2e4
        :pswitch_302
        :pswitch_317
        :pswitch_357
        :pswitch_39d
        :pswitch_3fa
        :pswitch_451
        :pswitch_4f
        :pswitch_26a
        :pswitch_469
        :pswitch_4b3
    .end packed-switch
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 272
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 261
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 262
    return-void
.end method

.method public setColor(I)V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsIcon;->invalidateSelf()V

    .line 71
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 267
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 268
    return-void
.end method

.method public setType(I)V
    .registers 3

    .prologue
    .line 61
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->type:I

    if-eq p1, v0, :cond_9

    .line 62
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->type:I

    .line 63
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsIcon;->invalidateSelf()V

    .line 65
    :cond_9
    return-void
.end method
