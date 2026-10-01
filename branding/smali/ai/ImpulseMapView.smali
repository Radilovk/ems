.class public final Lcom/isaigu/gymapp/ai/ImpulseMapView;
.super Landroid/view/View;
.source "ImpulseMapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;,
        Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;
    }
.end annotation


# static fields
.field static final AXIS_DP:F = 20.0f

.field private static final COL:[I

.field static final DEPTH_DP:F = 26.0f

.field private static final HZ:[I

.field static final MIN_REST_DP:F = 92.0f

.field static final MIN_W_DP:F = 104.0f

.field private static final MOVE:I = 0x2

.field private static final NONE:I = 0x0

.field private static final RESIZE:I = 0x1

.field static final REST_DP:F = 38.0f

.field static final TOOLS_DP:F = 34.0f

.field static final VALUES_DP:F = 86.0f


# instance fields
.field private final axis:Landroid/graphics/Paint;

.field private baseY:F

.field private final d:F

.field private detailed:Z

.field private downAt:J

.field private downIndex:I

.field private downX:F

.field private downY:F

.field private editable:Z

.field private final fig:Landroid/graphics/Paint;

.field private final fill:Landroid/graphics/Paint;

.field private frozen:Z

.field private gesture:I

.field private final handle:Landroid/graphics/RectF;

.field private final ink:Landroid/graphics/Paint;

.field private left:[F

.field private final lift:Ljava/lang/Runnable;

.field private lifted:Z

.field private listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

.field private map:Lcom/isaigu/gymapp/ai/Workout;

.field private maxH:F

.field private final minusBtn:Landroid/graphics/RectF;

.field private playhead:F

.field private final plusBtn:Landroid/graphics/RectF;

.field private scale:F

.field private selected:I

.field private final shape:Landroid/graphics/Path;

.field private startSeconds:I

.field private final stroke:Landroid/graphics/Paint;

.field private final text:Landroid/graphics/Paint;

.field private final touchSlop:I

.field private width:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 181
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->HZ:[I

    .line 182
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->COL:[I

    return-void

    .line 181
    :array_10
    .array-data 4
        0x1
        0xa
        0x1e
        0x3c
        0x55
        0x78
    .end array-data

    .line 182
    :array_20
    .array-data 4
        -0xc28401
        -0xdd1c01
        -0xd11a63
        -0x3dc3
        -0xc42c
        -0xb2b3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    .line 37
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->playhead:F

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fig:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->shape:Landroid/graphics/Path;

    .line 49
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    .line 50
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    .line 59
    iput v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    .line 63
    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->plusBtn:Landroid/graphics/RectF;

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minusBtn:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    .line 70
    new-instance v0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;-><init>(Lcom/isaigu/gymapp/ai/ImpulseMapView;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lift:Ljava/lang/Runnable;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fig:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const v1, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->touchSlop:I

    .line 86
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink:Landroid/graphics/Paint;

    const v1, 0x3fcccccd    # 1.6f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v4

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v4

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 92
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/ai/ImpulseMapView;)I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/ai/ImpulseMapView;)Lcom/isaigu/gymapp/ai/Workout;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/ai/ImpulseMapView;Z)Z
    .registers 2

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    return p1
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/ai/ImpulseMapView;I)I
    .registers 2

    .prologue
    .line 22
    iput p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    return p1
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/ai/ImpulseMapView;Z)Z
    .registers 2

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/ai/ImpulseMapView;)I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    return v0
.end method

.method static synthetic access$502(Lcom/isaigu/gymapp/ai/ImpulseMapView;I)I
    .registers 2

    .prologue
    .line 22
    iput p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    return p1
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/ai/ImpulseMapView;)Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    return-object v0
.end method

.method private changed()V
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    if-eqz v0, :cond_9

    .line 572
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    invoke-interface {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;->onChanged()V

    .line 574
    :cond_9
    return-void
.end method

.method public static colorFor(I)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 186
    sget-object v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->HZ:[I

    aget v0, v0, v1

    if-gt p0, v0, :cond_c

    .line 187
    sget-object v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->COL:[I

    aget v0, v0, v1

    .line 195
    :goto_b
    return v0

    .line 189
    :cond_c
    const/4 v0, 0x1

    :goto_d
    sget-object v1, Lcom/isaigu/gymapp/ai/ImpulseMapView;->HZ:[I

    array-length v1, v1

    if-ge v0, v1, :cond_40

    .line 190
    sget-object v1, Lcom/isaigu/gymapp/ai/ImpulseMapView;->HZ:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_3d

    .line 191
    sget-object v1, Lcom/isaigu/gymapp/ai/ImpulseMapView;->HZ:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    sub-int v1, p0, v1

    int-to-float v1, v1

    sget-object v2, Lcom/isaigu/gymapp/ai/ImpulseMapView;->HZ:[I

    aget v2, v2, v0

    sget-object v3, Lcom/isaigu/gymapp/ai/ImpulseMapView;->HZ:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 192
    sget-object v2, Lcom/isaigu/gymapp/ai/ImpulseMapView;->COL:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    sget-object v3, Lcom/isaigu/gymapp/ai/ImpulseMapView;->COL:[I

    aget v0, v3, v0

    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->mix(IIF)I

    move-result v0

    goto :goto_b

    .line 189
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 195
    :cond_40
    sget-object v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->COL:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/ImpulseMapView;->COL:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_b
.end method

.method private drawInside(Landroid/graphics/Canvas;ILcom/isaigu/gymapp/ai/Workout$Block;Landroid/graphics/RectF;FFZI)Z
    .registers 25

    .prologue
    .line 356
    const/4 v11, 0x0

    .line 357
    invoke-static {}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink()I

    move-result v10

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    const/high16 v1, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float v12, v1, v2

    .line 361
    const/high16 v1, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float v5, v1, v2

    .line 362
    const/high16 v1, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float v13, v1, v2

    .line 363
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    if-eqz p7, :cond_9b

    const/high16 v1, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v3

    :goto_38
    sub-float v4, v2, v1

    .line 364
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float v2, p5, p6

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    add-float v6, v1, v2

    .line 367
    invoke-virtual/range {p3 .. p3}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 368
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget v7, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " \u0441\u0435\u043a"

    const-string v8, " s"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 369
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v3, 0x0

    const/4 v7, 0x1

    aput v7, v1, v3

    move-object v7, v1

    move-object v8, v2

    .line 377
    :goto_77
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    const/high16 v2, 0x41380000    # 11.5f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 378
    const/4 v2, 0x0

    .line 379
    array-length v3, v8

    const/4 v1, 0x0

    :goto_88
    if-ge v1, v3, :cond_180

    aget-object v9, v8, v1

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 363
    :cond_9b
    const/4 v1, 0x0

    goto :goto_38

    .line 371
    :cond_9d
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget v7, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " Hz"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " \u0441\u0435\u043a"

    const-string v8, " s"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v2, 0x2

    .line 372
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v1, :cond_14d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget v7, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/isaigu/gymapp/ai/Workout$Block;->off2()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \u00b7 "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget v7, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " Hz"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_114
    aput-object v1, v3, v2

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget v7, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " \u00b5s"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 374
    const/4 v1, 0x4

    new-array v2, v1, [I

    const/4 v1, 0x0

    const/4 v7, 0x0

    aput v7, v2, v1

    const/4 v1, 0x1

    const/4 v7, 0x1

    aput v7, v2, v1

    const/4 v7, 0x2

    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v1, :cond_17e

    const/4 v1, 0x3

    :goto_143
    aput v1, v2, v7

    const/4 v1, 0x3

    const/4 v7, 0x4

    aput v7, v2, v1

    move-object v7, v2

    move-object v8, v3

    goto/16 :goto_77

    .line 372
    :cond_14d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget v7, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v7, 0x1

    move-object/from16 v0, p3

    iget v8, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \u0441\u0435\u043a"

    const-string v8, " s"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_114

    .line 374
    :cond_17e
    const/4 v1, 0x2

    goto :goto_143

    .line 382
    :cond_180
    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, p5

    add-float/2addr v1, v3

    const/high16 v3, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v3, v9

    add-float/2addr v1, v3

    add-float v3, v5, v13

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v6, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 383
    array-length v1, v8

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v12

    add-float/2addr v1, v5

    .line 384
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float v4, v2, v1

    .line 385
    const/4 v1, 0x0

    move v9, v1

    :goto_1b2
    array-length v1, v8

    if-ge v9, v1, :cond_1dd

    .line 386
    aget v2, v7, v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->draw(Landroid/graphics/Canvas;IFFFLandroid/graphics/Paint;)V

    .line 387
    aget-object v1, v8, v9

    add-float v2, v3, v5

    add-float/2addr v2, v13

    add-float v6, v4, v5

    const/high16 v14, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v14, v15

    sub-float/2addr v6, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v6, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 388
    add-float/2addr v4, v12

    .line 385
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_1b2

    .line 390
    :cond_1dd
    invoke-virtual/range {p3 .. p3}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_255

    .line 391
    const/high16 v1, 0x42600000    # 56.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    aget v3, v3, p2

    const/high16 v4, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 392
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    add-float/2addr v1, v5

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    const/high16 v6, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fig:Landroid/graphics/Paint;

    if-eqz p7, :cond_23e

    move/from16 p8, v10

    :cond_23e
    move/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fig:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->drawStill(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Paint;)Z

    move-result v1

    if-nez v1, :cond_255

    .line 395
    const/4 v1, 0x1

    move v11, v1

    .line 398
    :cond_255
    if-eqz p7, :cond_3e7

    .line 400
    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x42180000    # 38.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    const/high16 v6, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p4

    iget v6, v0, Landroid/graphics/RectF;->top:F

    const/high16 v7, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 403
    const/high16 v2, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    const/16 v4, 0xe6

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 406
    new-instance v3, Landroid/graphics/RectF;

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x40200000    # 2.5f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sub-float v5, v1, v2

    move-object/from16 v0, p4

    iget v6, v0, Landroid/graphics/RectF;->right:F

    const/high16 v7, 0x40200000    # 2.5f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    add-float/2addr v1, v2

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 408
    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x41880000    # 17.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    sub-float v3, v1, v2

    .line 409
    const/high16 v1, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float v7, v1, v2

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink:Landroid/graphics/Paint;

    const v2, 0x40266666    # 2.6f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 411
    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    add-float v4, v4, p5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float v10, v1, v2

    .line 412
    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v4

    sub-float v12, v1, v2

    .line 413
    sub-float v2, v10, v7

    add-float v4, v10, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 414
    sub-float v2, v12, v7

    add-float v4, v12, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 415
    sub-float v6, v3, v7

    add-float v8, v3, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v12

    move v7, v12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink:Landroid/graphics/Paint;

    const v2, 0x3fcccccd    # 1.6f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minusBtn:Landroid/graphics/RectF;

    const/high16 v2, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v4

    sub-float v2, v10, v2

    const/high16 v4, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    sub-float v4, v3, v4

    const/high16 v5, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v10

    const/high16 v6, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v3

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->plusBtn:Landroid/graphics/RectF;

    const/high16 v2, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v4

    sub-float v2, v12, v2

    const/high16 v4, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    sub-float v4, v3, v4

    const/high16 v5, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v12

    const/high16 v6, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 420
    :cond_3e7
    return v11
.end method

.method private figures()Z
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_20

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 114
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 115
    const/4 v0, 0x1

    .line 119
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private heightFor(Lcom/isaigu/gymapp/ai/Workout$Block;Z)F
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 210
    if-eqz p2, :cond_1d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v0, :cond_1d

    const/high16 v0, 0x42080000    # 34.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v2

    .line 211
    :goto_c
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 212
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->detailed:Z

    if-eqz v1, :cond_1f

    const/high16 v1, 0x42180000    # 38.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 215
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    .line 210
    goto :goto_c

    .line 212
    :cond_1f
    const/high16 v0, 0x41000000    # 8.0f

    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v1

    goto :goto_1c

    .line 214
    :cond_25
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p1, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    add-int/lit8 v3, v3, -0x64

    int-to-float v3, v3

    const/high16 v4, 0x43960000    # 300.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 215
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->detailed:Z

    if-eqz v2, :cond_46

    const/high16 v2, 0x42ac0000    # 86.0f

    const/high16 v3, 0x41d00000    # 26.0f

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_1c

    :cond_46
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->maxH:F

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3f266666    # 0.65f

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_1c
.end method

.method private indexAt(F)I
    .registers 6

    .prologue
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 426
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 427
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    aget v1, v1, v0

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_26

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_26

    .line 431
    :goto_25
    return v0

    .line 426
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 431
    :cond_29
    const/4 v0, -0x1

    goto :goto_25
.end method

.method private static ink()I
    .registers 1

    .prologue
    .line 228
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    const v0, -0xeeeeef

    goto :goto_5
.end method

.method private layoutBlocks()V
    .registers 15

    .prologue
    const/high16 v13, 0x40800000    # 4.0f

    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 239
    :goto_10
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    array-length v0, v0

    if-ne v0, v1, :cond_1c

    .line 274
    :goto_19
    return-void

    :cond_1a
    move v1, v2

    .line 238
    goto :goto_10

    .line 242
    :cond_1c
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    .line 243
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    .line 244
    const/high16 v0, 0x41000000    # 8.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float v7, v0, v3

    .line 245
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v7

    sub-float/2addr v0, v3

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v3, v4

    sub-float v9, v0, v3

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    :goto_49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 248
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    .line 249
    goto :goto_4e

    .line 247
    :cond_61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_49

    .line 251
    :cond_67
    if-lez v3, :cond_a0

    int-to-float v0, v3

    div-float v0, v9, v0

    :goto_6c
    move v8, v2

    move v6, v0

    .line 252
    :goto_6e
    const/4 v0, 0x3

    if-ge v8, v0, :cond_be

    if-lez v3, :cond_be

    .line 253
    const/4 v0, 0x0

    .line 255
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v2

    move v5, v0

    :goto_7e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 256
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v6

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minWidth(Lcom/isaigu/gymapp/ai/Workout$Block;)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_a3

    .line 257
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minWidth(Lcom/isaigu/gymapp/ai/Workout$Block;)F

    move-result v0

    add-float/2addr v5, v0

    move v0, v4

    :goto_9e
    move v4, v0

    .line 261
    goto :goto_7e

    .line 251
    :cond_a0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6c

    .line 259
    :cond_a3
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_9e

    .line 262
    :cond_a9
    if-lez v4, :cond_bc

    const v0, 0x3c23d70a    # 0.01f

    sub-float v5, v9, v5

    int-to-float v4, v4

    div-float v4, v5, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 252
    :goto_b7
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v6, v0

    goto :goto_6e

    :cond_bc
    move v0, v6

    .line 262
    goto :goto_b7

    .line 264
    :cond_be
    iput v6, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->scale:F

    move v3, v7

    .line 266
    :goto_c1
    if-ge v2, v1, :cond_fc

    .line 267
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minWidth(Lcom/isaigu/gymapp/ai/Workout$Block;)F

    move-result v5

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v4, v2

    .line 268
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    aput v3, v0, v2

    .line 269
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    aget v0, v0, v2

    const/high16 v4, 0x40400000    # 3.0f

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 266
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_c1

    .line 271
    :cond_fc
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->detailed:Z

    if-eqz v0, :cond_127

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->topRoom()F

    move-result v0

    .line 272
    :goto_104
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getHeight()I

    move-result v1

    int-to-float v2, v1

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->detailed:Z

    if-eqz v1, :cond_12b

    const/high16 v1, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v3

    :goto_112
    sub-float v1, v2, v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    .line 273
    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    sub-float v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->maxH:F

    goto/16 :goto_19

    .line 271
    :cond_127
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v13

    goto :goto_104

    .line 272
    :cond_12b
    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v13

    goto :goto_112
.end method

.method private lean(IFF)F
    .registers 7

    .prologue
    .line 220
    if-gtz p1, :cond_4

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_3
    return v0

    :cond_4
    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, p2

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v0, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v2, v0, v2

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->detailed:Z

    if-eqz v0, :cond_25

    const/16 v0, 0x18

    :goto_1b
    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_3

    :cond_25
    const/4 v0, 0x6

    goto :goto_1b
.end method

.method private minWidth(Lcom/isaigu/gymapp/ai/Workout$Block;)F
    .registers 4

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->detailed:Z

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_10

    const/high16 v0, 0x42b80000    # 92.0f

    :goto_c
    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v1

    :goto_f
    return v0

    :cond_10
    const/high16 v0, 0x42d00000    # 104.0f

    goto :goto_c

    :cond_13
    const/high16 v0, 0x40c00000    # 6.0f

    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v1

    goto :goto_f
.end method

.method static mix(IIF)I
    .registers 11

    .prologue
    .line 199
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 200
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 201
    and-int/lit16 v2, p0, 0xff

    .line 202
    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 203
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 204
    and-int/lit16 v5, p1, 0xff

    .line 205
    const/high16 v6, -0x1000000

    int-to-float v7, v0

    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v7

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v6

    int-to-float v3, v1

    sub-int v1, v4, v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, v3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-float v1, v2

    sub-int v2, v5, v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static restColor()I
    .registers 1

    .prologue
    .line 232
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_8

    const v0, -0xa5a095

    :goto_7
    return v0

    :cond_8
    const v0, -0x36312a

    goto :goto_7
.end method

.method private topRoom()F
    .registers 3

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->figures()Z

    move-result v0

    if-eqz v0, :cond_c

    const/high16 v0, 0x42780000    # 62.0f

    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v1

    :goto_b
    return v0

    :cond_c
    const/high16 v0, 0x41200000    # 10.0f

    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v1

    goto :goto_b
.end method


# virtual methods
.method public getSelected()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 285
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_5

    .line 351
    :cond_4
    :goto_4
    return-void

    .line 288
    :cond_5
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->layoutBlocks()V

    .line 289
    const/4 v0, 0x0

    .line 290
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->plusBtn:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 291
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minusBtn:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 292
    const/4 v2, 0x0

    move v9, v0

    :goto_15
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_13f

    .line 293
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 294
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-ne v2, v0, :cond_f3

    const/4 v0, 0x1

    :goto_2e
    invoke-direct {p0, v3, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->heightFor(Lcom/isaigu/gymapp/ai/Workout$Block;Z)F

    move-result v1

    .line 295
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    if-eqz v0, :cond_f6

    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-ne v2, v0, :cond_f6

    const/high16 v0, 0x41000000    # 8.0f

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v4

    .line 296
    :goto_3f
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    aget v5, v5, v2

    iget v6, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    sub-float v1, v6, v1

    sub-float/2addr v1, v0

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    aget v6, v6, v2

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    aget v7, v7, v2

    add-float/2addr v6, v7

    iget v7, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    sub-float v0, v7, v0

    invoke-direct {v4, v5, v1, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 297
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-static {}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->restColor()I

    move-result v8

    .line 298
    :goto_64
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-ne v2, v0, :cond_101

    const/4 v0, 0x1

    .line 300
    :goto_69
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_104

    const/4 v5, 0x0

    .line 301
    :goto_70
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_114

    const/4 v6, 0x0

    .line 302
    :goto_77
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->shape:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 303
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->shape:Landroid/graphics/Path;

    iget v7, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v7, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 304
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->shape:Landroid/graphics/Path;

    iget v7, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v5

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 305
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->shape:Landroid/graphics/Path;

    iget v7, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v6

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 306
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->shape:Landroid/graphics/Path;

    iget v7, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 307
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->shape:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 308
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v1, 0xdc

    :goto_b6
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 310
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->shape:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 311
    if-eqz v0, :cond_dc

    .line 312
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    invoke-static {}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->ink()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    const/high16 v7, 0x40200000    # 2.5f

    iget v10, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v7, v10

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 314
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->shape:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 316
    :cond_dc
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->detailed:Z

    if-eqz v1, :cond_294

    .line 317
    if-eqz v0, :cond_13d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v0, :cond_13d

    const/4 v7, 0x1

    :goto_e7
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->drawInside(Landroid/graphics/Canvas;ILcom/isaigu/gymapp/ai/Workout$Block;Landroid/graphics/RectF;FFZI)Z

    move-result v0

    or-int/2addr v0, v9

    .line 292
    :goto_ee
    add-int/lit8 v2, v2, 0x1

    move v9, v0

    goto/16 :goto_15

    .line 294
    :cond_f3
    const/4 v0, 0x0

    goto/16 :goto_2e

    .line 295
    :cond_f6
    const/4 v0, 0x0

    goto/16 :goto_3f

    .line 297
    :cond_f9
    iget v0, v3, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->colorFor(I)I

    move-result v8

    goto/16 :goto_64

    .line 298
    :cond_101
    const/4 v0, 0x0

    goto/16 :goto_69

    .line 300
    :cond_104
    iget v1, v3, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {p0, v1, v5, v6}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lean(IFF)F

    move-result v5

    goto/16 :goto_70

    .line 301
    :cond_114
    iget v1, v3, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lean(IFF)F

    move-result v6

    goto/16 :goto_77

    .line 309
    :cond_124
    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v10, 0x43160000    # 150.0f

    const v11, 0x3e4ccccd    # 0.2f

    iget v12, v3, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    int-to-float v12, v12

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto/16 :goto_b6

    .line 317
    :cond_13d
    const/4 v7, 0x0

    goto :goto_e7

    .line 320
    :cond_13f
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->detailed:Z

    if-eqz v0, :cond_189

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v7

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const v1, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    const/high16 v0, 0x41000000    # 8.0f

    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41000000    # 8.0f

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 325
    const/4 v0, 0x1

    move v6, v0

    :goto_17a
    mul-int/lit8 v0, v6, 0x3c

    if-ge v0, v7, :cond_189

    .line 326
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    mul-int/lit8 v1, v6, 0x3c

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/Workout;->blockAt(D)I

    move-result v0

    .line 327
    if-gez v0, :cond_1d9

    .line 340
    :cond_189
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->playhead:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1d0

    .line 341
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->playhead:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/Workout;->blockAt(D)I

    move-result v0

    .line 342
    if-gez v0, :cond_268

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    array-length v0, v0

    if-lez v0, :cond_265

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    add-float/2addr v1, v0

    .line 344
    :goto_1b3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 346
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 348
    :cond_1d0
    if-eqz v9, :cond_4

    .line 349
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->postInvalidateDelayed(J)V

    goto/16 :goto_4

    .line 330
    :cond_1d9
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    aget v1, v1, v0

    mul-int/lit8 v2, v6, 0x3c

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/ai/Workout;->startOf(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    aget v3, v3, v0

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    add-float/2addr v1, v0

    .line 331
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    const/high16 v3, 0x40c00000    # 6.0f

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v3, v4

    add-float v4, v0, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 332
    const/16 v0, 0x4b0

    if-le v7, v0, :cond_263

    const/4 v0, 0x5

    :goto_220
    rem-int v0, v6, v0

    if-nez v0, :cond_25e

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const v3, -0x66000001

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    const/high16 v3, 0x41880000    # 17.0f

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 336
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const v1, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    :cond_25e
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_17a

    .line 332
    :cond_263
    const/4 v0, 0x1

    goto :goto_220

    .line 342
    :cond_265
    const/4 v1, 0x0

    goto/16 :goto_1b3

    .line 343
    :cond_268
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    aget v1, v1, v0

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->playhead:F

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/ai/Workout;->startOf(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    aget v3, v3, v0

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    add-float/2addr v1, v0

    goto/16 :goto_1b3

    :cond_294
    move v0, v9

    goto/16 :goto_ee
.end method

.method protected onMeasure(II)V
    .registers 9

    .prologue
    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 130
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->detailed:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_5d

    .line 131
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v1

    .line 132
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 133
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minWidth(Lcom/isaigu/gymapp/ai/Workout$Block;)F

    move-result v0

    const/high16 v4, 0x40400000    # 3.0f

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    move v1, v0

    .line 134
    goto :goto_1a

    .line 135
    :cond_33
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 137
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->topRoom()F

    move-result v2

    const/high16 v3, 0x42e00000    # 112.0f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v0, :cond_5b

    const/high16 v0, 0x42280000    # 42.0f

    :goto_49
    add-float/2addr v0, v3

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v0, v3

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 138
    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMeasuredDimension(II)V

    .line 142
    :goto_5a
    return-void

    .line 137
    :cond_5b
    const/4 v0, 0x0

    goto :goto_49

    .line 141
    :cond_5d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMeasuredDimension(II)V

    goto :goto_5a
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 279
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .prologue
    const/high16 v8, 0x41400000    # 12.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 436
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_e

    :cond_c
    move v0, v2

    .line 541
    :goto_d
    return v0

    .line 439
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_26a

    move v0, v1

    .line 541
    goto :goto_d

    .line 443
    :pswitch_1f
    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downX:F

    .line 444
    iput v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downY:F

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downAt:J

    .line 446
    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    .line 447
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    .line 448
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->indexAt(F)I

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I

    .line 449
    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-ltz v2, :cond_9f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_9f

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->plusBtn:Landroid/graphics/RectF;

    .line 450
    invoke-virtual {v2, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_9f

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minusBtn:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_9f

    .line 451
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/high16 v6, 0x41000000    # 8.0f

    iget v7, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    const/high16 v8, 0x40800000    # 4.0f

    iget v9, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 452
    invoke-virtual {v2, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 453
    iput v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    .line 454
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 455
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->startSeconds:I

    .line 456
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 459
    :cond_9f
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    if-nez v0, :cond_b1

    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I

    if-ltz v0, :cond_b1

    .line 460
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lift:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b1
    move v0, v1

    .line 462
    goto/16 :goto_d

    .line 464
    :pswitch_b4
    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downX:F

    sub-float v4, v0, v4

    .line 465
    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    if-ne v5, v1, :cond_14f

    .line 466
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 467
    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->startSeconds:I

    int-to-float v2, v2

    const v3, 0x3c23d70a    # 0.01f

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->scale:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float v3, v4, v3

    add-float/2addr v2, v3

    .line 468
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v3

    if-eqz v3, :cond_129

    .line 469
    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    const/16 v3, 0xa

    const/16 v4, 0xb4

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 473
    :goto_f0
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minWidth(Lcom/isaigu/gymapp/ai/Workout$Block;)F

    move-result v4

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->scale:F

    mul-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v2, v3

    .line 474
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    add-int/lit8 v0, v0, 0x1

    :goto_10a
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    array-length v2, v2

    if-ge v0, v2, :cond_146

    .line 475
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_10a

    .line 471
    :cond_129
    iget v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    iget v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x3

    const/16 v4, 0x28

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/ai/Workout;->clamp(III)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    goto :goto_f0

    .line 477
    :cond_146
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 478
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->changed()V

    move v0, v1

    .line 479
    goto/16 :goto_d

    .line 481
    :cond_14f
    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    if-nez v5, :cond_175

    iget-boolean v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    if-nez v5, :cond_175

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->touchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_170

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->touchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_175

    .line 482
    :cond_170
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lift:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 484
    :cond_175
    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_19d

    .line 485
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->indexAt(F)I

    move-result v0

    .line 486
    if-ltz v0, :cond_197

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-eq v0, v3, :cond_197

    .line 487
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    invoke-virtual {v3, v4, v0}, Lcom/isaigu/gymapp/ai/Workout;->move(II)V

    .line 488
    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    .line 489
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 490
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->layoutBlocks()V

    .line 491
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 492
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->changed()V

    .line 494
    :cond_197
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    move v0, v1

    .line 495
    goto/16 :goto_d

    :cond_19d
    move v0, v1

    .line 497
    goto/16 :goto_d

    .line 500
    :pswitch_1a0
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lift:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 501
    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    if-eqz v4, :cond_1b5

    .line 502
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    .line 503
    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    .line 504
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 505
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    move v0, v1

    .line 506
    goto/16 :goto_d

    .line 508
    :cond_1b5
    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    if-nez v4, :cond_21a

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->touchSlop:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_21a

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downY:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->touchSlop:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_21a

    .line 509
    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-ltz v4, :cond_224

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->plusBtn:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_224

    .line 510
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    add-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->copy()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 511
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    .line 512
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 513
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->requestLayout()V

    .line 514
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->changed()V

    .line 524
    :goto_20c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    if-eqz v0, :cond_217

    .line 525
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    invoke-interface {v0, v3}, Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;->onSelect(I)V

    .line 527
    :cond_217
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->performClick()Z

    .line 529
    :cond_21a
    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    .line 530
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 531
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    move v0, v1

    .line 532
    goto/16 :goto_d

    .line 515
    :cond_224
    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-ltz v4, :cond_254

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minusBtn:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_254

    .line 516
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 517
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    .line 518
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 519
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->requestLayout()V

    .line 520
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->changed()V

    goto :goto_20c

    .line 522
    :cond_254
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    goto :goto_20c

    .line 534
    :pswitch_259
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lift:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 535
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    .line 536
    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    .line 537
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 538
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    move v0, v1

    .line 539
    goto/16 :goto_d

    .line 441
    :pswitch_data_26a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1a0
        :pswitch_b4
        :pswitch_259
    .end packed-switch
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 567
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public select(I)V
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_16

    if-ltz p1, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_16

    :goto_10
    iput p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    .line 171
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 172
    return-void

    .line 170
    :cond_16
    const/4 p1, -0x1

    goto :goto_10
.end method

.method public setListener(Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    .line 163
    return-void
.end method

.method public setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V
    .registers 3

    .prologue
    .line 145
    invoke-virtual {p0, p1, p2, p2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;ZZ)V

    .line 146
    return-void
.end method

.method public setMap(Lcom/isaigu/gymapp/ai/Workout;ZZ)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 150
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 151
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    .line 152
    if-nez p3, :cond_9

    if-eqz p2, :cond_24

    :cond_9
    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->detailed:Z

    .line 153
    if-eqz p1, :cond_18

    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    iget-object v2, p1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1b

    .line 154
    :cond_18
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    .line 156
    :cond_1b
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 157
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->requestLayout()V

    .line 158
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 159
    return-void

    :cond_24
    move v0, v1

    .line 152
    goto :goto_a
.end method

.method public setPlayhead(F)V
    .registers 2

    .prologue
    .line 175
    iput p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->playhead:F

    .line 176
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 177
    return-void
.end method
