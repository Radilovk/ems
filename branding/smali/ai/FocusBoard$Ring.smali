.class final Lcom/isaigu/gymapp/ai/FocusBoard$Ring;
.super Landroid/view/View;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ring"
.end annotation


# instance fields
.field private final arc:Landroid/graphics/Paint;

.field private final box:Landroid/graphics/RectF;

.field private final color:I

.field private dragFrom:I

.field private dragValue:F

.field private enabled:Z

.field private final glowP:Landroid/graphics/Paint;

.field private final knob:Landroid/graphics/Paint;

.field private lastT:F

.field private live:Z

.field private final num:Landroid/graphics/Paint;

.field private shown:F

.field private final track:Landroid/graphics/Paint;

.field private final unit:Landroid/graphics/Paint;

.field private value:I

.field private final what:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 2277
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2258
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->track:Landroid/graphics/Paint;

    .line 2259
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    .line 2260
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    .line 2261
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    .line 2262
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    .line 2263
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->knob:Landroid/graphics/Paint;

    .line 2264
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->box:Landroid/graphics/RectF;

    .line 2268
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    .line 2269
    iput-boolean v4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    .line 2272
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragFrom:I

    .line 2278
    iput p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->color:I

    .line 2279
    iput p3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->what:I

    .line 2280
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 2281
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->track:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2282
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->track:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2283
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->track:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2284
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->track:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/16 v3, 0xdd

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2285
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2286
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2287
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2288
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2289
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2290
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    const v2, 0x4019999a    # 2.4f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2291
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2292
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    const/16 v1, 0x30

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2293
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->knob:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2294
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2295
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2296
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2297
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2298
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2299
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->sp(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2300
    if-ne p3, v4, :cond_ea

    const-string v0, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 2 \u2014 \u043f\u043b\u044a\u0437\u043d\u0438 \u043f\u043e \u043a\u0440\u044a\u0433\u0430"

    const-string v1, "Intensity 2 \u2014 slide around"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e6
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2302
    return-void

    .line 2301
    :cond_ea
    const-string v0, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442 1 \u2014 \u043f\u043b\u044a\u0437\u043d\u0438 \u043f\u043e \u043a\u0440\u044a\u0433\u0430"

    const-string v1, "Intensity 1 \u2014 slide around"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e6
.end method

.method private arcPos(FF)F
    .registers 11

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const-wide v6, 0x4070e00000000000L    # 270.0

    const-wide v4, 0x4076800000000000L    # 360.0

    .line 2315
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float v0, p2, v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 2316
    const-wide v2, 0x4060e00000000000L    # 135.0

    sub-double/2addr v0, v2

    rem-double/2addr v0, v4

    add-double/2addr v0, v4

    rem-double/2addr v0, v4

    .line 2317
    cmpl-double v2, v0, v6

    if-lez v2, :cond_41

    .line 2318
    const-wide v2, 0x4073b00000000000L    # 315.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3e

    const/4 v0, 0x0

    .line 2320
    :goto_3d
    return v0

    .line 2318
    :cond_3e
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3d

    .line 2320
    :cond_41
    div-double/2addr v0, v6

    double-to-float v0, v0

    goto :goto_3d
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 22

    .prologue
    .line 2389
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 2390
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 2391
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    sub-float v9, v4, v5

    .line 2392
    const/4 v4, 0x0

    cmpg-float v4, v9, v4

    if-gtz v4, :cond_1e

    .line 2447
    :cond_1d
    :goto_1d
    return-void

    .line 2395
    :cond_1e
    const/high16 v4, 0x40000000    # 2.0f

    div-float v10, v2, v4

    .line 2396
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v3, v2

    const v3, 0x3d23d70a    # 0.04f

    mul-float/2addr v3, v9

    add-float v11, v2, v3

    .line 2397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->box:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v9, v3

    sub-float v3, v10, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v9, v4

    sub-float v4, v11, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v9, v5

    add-float/2addr v5, v10

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v9, v6

    add-float/2addr v6, v11

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->box:Landroid/graphics/RectF;

    const/high16 v4, 0x43070000    # 135.0f

    const/high16 v5, 0x43870000    # 270.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->track:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2399
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragFrom:I

    if-ltz v2, :cond_1d7

    const/4 v2, 0x1

    move v8, v2

    .line 2400
    :goto_63
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_75

    .line 2401
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->value:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    .line 2403
    :cond_75
    if-eqz v8, :cond_1db

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragValue:F

    .line 2404
    :goto_7b
    if-eqz v8, :cond_1ed

    .line 2405
    move-object/from16 v0, p0

    iput v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    .line 2414
    :goto_81
    const/high16 v2, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v5, v2, v3

    .line 2415
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    if-eqz v2, :cond_ef

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v5, v2

    if-lez v2, :cond_ef

    .line 2416
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->live:Z

    if-eqz v2, :cond_21b

    if-nez v8, :cond_21b

    .line 2417
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x640

    rem-long/2addr v2, v6

    long-to-double v2, v2

    const-wide/high16 v6, 0x4099000000000000L    # 1600.0

    div-double/2addr v2, v6

    .line 2418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    const-wide/high16 v12, 0x4054000000000000L    # 80.0

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v16

    sub-double v2, v14, v2

    mul-double/2addr v2, v12

    add-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2419
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->postInvalidateOnAnimation()V

    .line 2423
    :goto_cf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->box:Landroid/graphics/RectF;

    const/high16 v4, 0x43070000    # 135.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->box:Landroid/graphics/RectF;

    const/high16 v4, 0x43070000    # 135.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2426
    :cond_ef
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    if-eqz v2, :cond_14f

    .line 2428
    const/high16 v2, 0x43070000    # 135.0f

    add-float/2addr v2, v5

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 2429
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v9

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v10

    .line 2430
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v3, v11, v2

    .line 2431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arc:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    if-eqz v8, :cond_22b

    const v2, 0x3f866666    # 1.05f

    :goto_11f
    mul-float/2addr v2, v5

    .line 2432
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->knob:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->color:I

    const/16 v7, 0x55

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2433
    const v5, 0x3fd9999a    # 1.7f

    mul-float/2addr v5, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->knob:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2434
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->knob:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->knob:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2437
    :cond_14f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    const v3, 0x3e75c28f    # 0.24f

    mul-float/2addr v3, v9

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    if-eqz v2, :cond_234

    if-eqz v8, :cond_230

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->color:I

    :goto_16a
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2439
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    if-eqz v2, :cond_238

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2440
    :goto_18e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v4

    add-float/2addr v3, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2441
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    if-nez v2, :cond_23c

    .line 2442
    const-string v2, "\u0438\u0437\u043a\u043b."

    const-string v3, "off"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v4

    add-float/2addr v3, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    const v5, 0x3fcccccd    # 1.6f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1d

    .line 2399
    :cond_1d7
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_63

    .line 2403
    :cond_1db
    const/4 v2, 0x0

    const/16 v3, 0x64

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->value:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    goto/16 :goto_7b

    .line 2407
    :cond_1ed
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    sub-float v4, v2, v4

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    .line 2408
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_216

    .line 2409
    move-object/from16 v0, p0

    iput v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    goto/16 :goto_81

    .line 2411
    :cond_216
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->postInvalidateOnAnimation()V

    goto/16 :goto_81

    .line 2421
    :cond_21b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->glowP:Landroid/graphics/Paint;

    if-eqz v8, :cond_228

    const/16 v2, 0x60

    :goto_223
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_cf

    :cond_228
    const/16 v2, 0x30

    goto :goto_223

    .line 2431
    :cond_22b
    const v2, 0x3f4ccccd    # 0.8f

    goto/16 :goto_11f

    .line 2438
    :cond_230
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_16a

    :cond_234
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto/16 :goto_16a

    .line 2439
    :cond_238
    const-string v2, "\u2014"

    goto/16 :goto_18e

    .line 2443
    :cond_23c
    if-eqz v8, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragValue:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v3, 0x64

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragFrom:I

    add-int/lit8 v4, v4, 0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt v2, v3, :cond_1d

    .line 2444
    const-string v2, "+20 \u043d\u0430\u0432\u0435\u0434\u043d\u044a\u0436"

    const-string v3, "+20 at once"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->num:Landroid/graphics/Paint;

    .line 2445
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v4

    add-float/2addr v3, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    const v5, 0x3fcccccd    # 1.6f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->unit:Landroid/graphics/Paint;

    .line 2444
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_dc

    move v0, v1

    .line 2383
    :cond_c
    :goto_c
    return v0

    .line 2327
    :pswitch_d
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    if-nez v2, :cond_1d

    .line 2328
    const-string v1, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u223f."

    const-string v2, "Turn the second impulse on with \u223f."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$100(Ljava/lang/String;)V

    goto :goto_c

    .line 2331
    :cond_1d
    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->what:I

    if-nez v2, :cond_33

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->shouldBlockManualControls()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2332
    const-string v1, "\u041c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0434\u044a\u0440\u0436\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0435\u0433\u0430 \u2014 \u043f\u043e\u043b\u0437\u0432\u0430\u0439 \u2212 / +."

    const-string v2, "Music holds the strength now \u2014 use \u2212 / +."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$100(Ljava/lang/String;)V

    goto :goto_c

    .line 2336
    :cond_33
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->value:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragFrom:I

    .line 2337
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->value:I

    int-to-float v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragValue:F

    .line 2338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arcPos(FF)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->lastT:F

    .line 2339
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 2340
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2342
    :cond_57
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2343
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->invalidate()V

    move v0, v1

    .line 2344
    goto :goto_c

    .line 2346
    :pswitch_5f
    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragFrom:I

    if-ltz v2, :cond_c

    .line 2349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->arcPos(FF)F

    move-result v0

    .line 2350
    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->lastT:F

    sub-float v2, v0, v2

    .line 2351
    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->lastT:F

    .line 2352
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_81

    move v0, v1

    .line 2353
    goto :goto_c

    .line 2355
    :cond_81
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragValue:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2356
    const/4 v3, 0x0

    iget v4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragFrom:I

    int-to-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    add-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragValue:F

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragValue:F

    .line 2357
    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragValue:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 2358
    if-eq v2, v0, :cond_b2

    .line 2359
    rem-int/lit8 v0, v2, 0x5

    if-nez v0, :cond_af

    .line 2360
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2362
    :cond_af
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->invalidate()V

    :cond_b2
    move v0, v1

    .line 2364
    goto/16 :goto_c

    .line 2368
    :pswitch_b5
    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragFrom:I

    if-ltz v2, :cond_c

    .line 2371
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragValue:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2372
    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragFrom:I

    .line 2373
    const/4 v3, -0x1

    iput v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->dragFrom:I

    .line 2374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v1, :cond_d6

    if-eq v0, v2, :cond_d6

    .line 2375
    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->value:I

    .line 2376
    int-to-float v2, v0

    iput v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->shown:F

    .line 2377
    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->what:I

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->setTo(II)V

    .line 2379
    :cond_d6
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->invalidate()V

    move v0, v1

    .line 2380
    goto/16 :goto_c

    .line 2325
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b5
        :pswitch_5f
        :pswitch_b5
    .end packed-switch
.end method

.method set(IZZ)V
    .registers 5

    .prologue
    .line 2305
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->value:I

    if-ne p1, v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    if-ne p2, v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->live:Z

    if-eq p3, v0, :cond_15

    .line 2306
    :cond_c
    iput p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->value:I

    .line 2307
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->enabled:Z

    .line 2308
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->live:Z

    .line 2309
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Ring;->invalidate()V

    .line 2311
    :cond_15
    return-void
.end method
