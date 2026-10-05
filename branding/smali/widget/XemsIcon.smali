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

    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    .line 50
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->type:I

    .line 51
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 53
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 54
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/XemsIcon;->setColor(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    .prologue
    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v8, 0x3fc00000    # 1.5f

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v2, 0x41400000    # 12.0f

    .line 73
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsIcon;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    .line 75
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_21

    .line 238
    :goto_20
    return-void

    .line 78
    :cond_21
    const/high16 v4, 0x41c00000    # 24.0f

    div-float v4, v1, v4

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v1, v7

    sub-float/2addr v5, v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v1, v7

    sub-float/2addr v0, v1

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->type:I

    packed-switch v0, :pswitch_data_4ac

    .line 237
    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_20

    .line 85
    :pswitch_4f
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v4, 0x40d00000    # 6.5f

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x418c0000    # 17.5f

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v4, 0x41ac0000    # 21.5f

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40d00000    # 6.5f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x41100000    # 9.0f

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const v1, 0x3f99999a    # 1.2f

    const v3, 0x3f99999a    # 1.2f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x418c0000    # 17.5f

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const v1, 0x3f99999a    # 1.2f

    const v3, 0x3f99999a    # 1.2f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 93
    const/high16 v1, 0x41100000    # 9.0f

    const/high16 v3, 0x41700000    # 15.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4b

    .line 96
    :pswitch_b7
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41580000    # 13.5f

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 98
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41580000    # 13.5f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41300000    # 11.0f

    const/high16 v2, 0x41580000    # 13.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41ac0000    # 21.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41980000    # 19.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41500000    # 13.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 107
    :pswitch_fe
    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v1, 0x40800000    # 4.0f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40900000    # 4.5f

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x419c0000    # 19.5f

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 112
    :pswitch_123
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v9, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 113
    const/high16 v0, 0x40e00000    # 7.0f

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 114
    const/4 v0, 0x0

    :goto_130
    const/16 v1, 0x8

    if-ge v0, v1, :cond_4b

    .line 115
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    int-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double v8, v4, v6

    .line 116
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v1, v4

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v1, v3

    add-float v4, v2, v1

    .line 117
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v1, v6

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v1, v3

    add-float v5, v2, v1

    .line 118
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v1, v6

    const v3, 0x411ccccd    # 9.8f

    mul-float/2addr v1, v3

    add-float v6, v2, v1

    .line 119
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v1, v8

    const v3, 0x411ccccd    # 9.8f

    mul-float/2addr v1, v3

    add-float v7, v2, v1

    .line 120
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_130

    .line 124
    :pswitch_172
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-virtual {v0, v9, v1, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v3, 0x41080000    # 8.5f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41780000    # 15.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41780000    # 15.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 134
    :pswitch_1ae
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v4, 0x41a40000    # 20.5f

    const/high16 v5, 0x41a40000    # 20.5f

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 136
    const/high16 v4, 0x40600000    # 3.5f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x41a40000    # 20.5f

    const/high16 v7, 0x41200000    # 10.0f

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 137
    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x40e00000    # 7.0f

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 138
    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x40e00000    # 7.0f

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 139
    const/high16 v0, 0x41080000    # 8.5f

    const/high16 v1, 0x41680000    # 14.5f

    const v3, 0x3f8ccccd    # 1.1f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    const/high16 v0, 0x41680000    # 14.5f

    const v1, 0x3f8ccccd    # 1.1f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    const/high16 v0, 0x41780000    # 15.5f

    const/high16 v1, 0x41680000    # 14.5f

    const v2, 0x3f8ccccd    # 1.1f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 144
    :pswitch_20c
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x40200000    # 2.5f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 148
    :pswitch_226
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x40f00000    # 7.5f

    const/high16 v3, 0x40900000    # 4.5f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x419c0000    # 19.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 151
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x40f00000    # 7.5f

    const/high16 v2, 0x419c0000    # 19.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 152
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 158
    :pswitch_25e
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 165
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 166
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x41840000    # 16.5f

    const/high16 v2, 0x419c0000    # 19.5f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const v1, 0x3f99999a    # 1.2f

    const v2, 0x3f99999a    # 1.2f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 170
    :pswitch_2a8
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 176
    :pswitch_2ce
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    const v1, 0x40266666    # 2.6f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 177
    const/high16 v5, 0x41980000    # 19.0f

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 178
    const/high16 v7, 0x41980000    # 19.0f

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v6, v2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 181
    :pswitch_2ec
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    const v1, 0x40266666    # 2.6f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    const/high16 v7, 0x41980000    # 19.0f

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v6, v2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 185
    :pswitch_301
    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v7, 0x40e00000    # 7.0f

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    const/high16 v1, 0x40800000    # 4.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 187
    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x41880000    # 17.0f

    const/high16 v7, 0x41880000    # 17.0f

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    const/high16 v0, 0x41700000    # 15.0f

    const/high16 v1, 0x40e00000    # 7.0f

    const v3, 0x400ccccd    # 2.2f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    const/high16 v0, 0x41100000    # 9.0f

    const v1, 0x400ccccd    # 2.2f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 190
    const/high16 v0, 0x41500000    # 13.0f

    const/high16 v1, 0x41880000    # 17.0f

    const v2, 0x400ccccd    # 2.2f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 193
    :pswitch_347
    const/high16 v5, 0x40800000    # 4.0f

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v4, p1

    move v7, v6

    move v8, v6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x40900000    # 4.5f

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41180000    # 9.5f

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41500000    # 13.0f

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const/high16 v1, 0x419c0000    # 19.5f

    const/high16 v2, 0x40d00000    # 6.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 200
    const/high16 v0, 0x419c0000    # 19.5f

    const/high16 v1, 0x40d00000    # 6.5f

    const v2, 0x3fcccccd    # 1.6f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 203
    :pswitch_38f
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v2, 0x41a40000    # 20.5f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 205
    const/high16 v0, 0x41080000    # 8.5f

    const/high16 v1, 0x41280000    # 10.5f

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 206
    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x41780000    # 15.5f

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v4, 0x41780000    # 15.5f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 207
    const/high16 v1, 0x41580000    # 13.5f

    const/high16 v2, 0x41180000    # 9.5f

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x41180000    # 9.5f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 208
    const/high16 v1, 0x41580000    # 13.5f

    const/high16 v2, 0x41500000    # 13.0f

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x41500000    # 13.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 209
    const/high16 v1, 0x41580000    # 13.5f

    const v2, 0x41826666    # 16.3f

    const/high16 v3, 0x41840000    # 16.5f

    const v4, 0x41826666    # 16.3f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 212
    :pswitch_3e8
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v1, v3, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 213
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x43910000    # 290.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const v1, 0x404ccccd    # 3.2f

    const v3, 0x40d9999a    # 6.8f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const v1, 0x40933333    # 4.6f

    const v3, 0x4129999a    # 10.6f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    const v1, 0x41066666    # 8.4f

    const v3, 0x41166666    # 9.4f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 219
    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v5, 0x41480000    # 12.5f

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 220
    const/high16 v3, 0x41480000    # 12.5f

    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v5, 0x41680000    # 14.5f

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 223
    :pswitch_444
    const/high16 v0, 0x41280000    # 10.5f

    const/high16 v1, 0x41280000    # 10.5f

    const/high16 v2, 0x40c00000    # 6.0f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 224
    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v5, 0x41700000    # 15.0f

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v3, p1

    move v7, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 227
    :pswitch_45c
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v2, 0x40600000    # 3.5f

    const/high16 v3, 0x41a40000    # 20.5f

    const/high16 v4, 0x41a40000    # 20.5f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x40800000    # 4.0f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x40d00000    # 6.5f

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->r:Landroid/graphics/RectF;

    const v1, 0x3f99999a    # 1.2f

    const v2, 0x3f99999a    # 1.2f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 231
    const/high16 v1, 0x41080000    # 8.5f

    const/high16 v2, 0x41780000    # 15.5f

    const/high16 v3, 0x41080000    # 8.5f

    const/high16 v4, 0x41880000    # 17.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 232
    const/high16 v1, 0x41780000    # 15.5f

    const/high16 v2, 0x41780000    # 15.5f

    const/high16 v3, 0x41780000    # 15.5f

    const/high16 v4, 0x41880000    # 17.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4b

    .line 83
    :pswitch_data_4ac
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_fe
        :pswitch_123
        :pswitch_172
        :pswitch_1ae
        :pswitch_20c
        :pswitch_226
        :pswitch_2a8
        :pswitch_2ce
        :pswitch_2ec
        :pswitch_301
        :pswitch_347
        :pswitch_38f
        :pswitch_3e8
        :pswitch_444
        :pswitch_4f
        :pswitch_25e
        :pswitch_45c
    .end packed-switch
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 254
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 243
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 244
    return-void
.end method

.method public setColor(I)V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsIcon;->invalidateSelf()V

    .line 69
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 250
    return-void
.end method

.method public setType(I)V
    .registers 3

    .prologue
    .line 59
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->type:I

    if-eq p1, v0, :cond_9

    .line 60
    iput p1, p0, Lcom/isaigu/gymapp/widget/XemsIcon;->type:I

    .line 61
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsIcon;->invalidateSelf()V

    .line 63
    :cond_9
    return-void
.end method
