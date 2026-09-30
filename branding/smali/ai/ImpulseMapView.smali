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
.field private static final COL:[I

.field private static final HZ:[I

.field private static final MOVE:I = 0x2

.field private static final NONE:I = 0x0

.field private static final RESIZE:I = 0x1


# instance fields
.field private final axis:Landroid/graphics/Paint;

.field private baseY:F

.field private final d:F

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

    .line 113
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->HZ:[I

    .line 114
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->COL:[I

    return-void

    .line 113
    :array_10
    .array-data 4
        0x1
        0xa
        0x1e
        0x3c
        0x55
        0x78
    .end array-data

    .line 114
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
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->playhead:F

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fig:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    .line 42
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    .line 43
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    .line 52
    iput v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    .line 56
    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->plusBtn:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minusBtn:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    .line 63
    new-instance v0, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView$Lift;-><init>(Lcom/isaigu/gymapp/ai/ImpulseMapView;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lift:Ljava/lang/Runnable;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    .line 70
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 73
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fig:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const v1, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->touchSlop:I

    .line 79
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/ai/ImpulseMapView;)I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/ai/ImpulseMapView;)Lcom/isaigu/gymapp/ai/Workout;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/ai/ImpulseMapView;Z)Z
    .registers 2

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    return p1
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/ai/ImpulseMapView;I)I
    .registers 2

    .prologue
    .line 19
    iput p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    return p1
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/ai/ImpulseMapView;Z)Z
    .registers 2

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/ai/ImpulseMapView;)I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    return v0
.end method

.method static synthetic access$502(Lcom/isaigu/gymapp/ai/ImpulseMapView;I)I
    .registers 2

    .prologue
    .line 19
    iput p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    return p1
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/ai/ImpulseMapView;)Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    return-object v0
.end method

.method private changed()V
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    if-eqz v0, :cond_9

    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    invoke-interface {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;->onChanged()V

    .line 448
    :cond_9
    return-void
.end method

.method public static colorFor(I)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 118
    sget-object v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->HZ:[I

    aget v0, v0, v1

    if-gt p0, v0, :cond_c

    .line 119
    sget-object v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->COL:[I

    aget v0, v0, v1

    .line 127
    :goto_b
    return v0

    .line 121
    :cond_c
    const/4 v0, 0x1

    :goto_d
    sget-object v1, Lcom/isaigu/gymapp/ai/ImpulseMapView;->HZ:[I

    array-length v1, v1

    if-ge v0, v1, :cond_40

    .line 122
    sget-object v1, Lcom/isaigu/gymapp/ai/ImpulseMapView;->HZ:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_3d

    .line 123
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

    .line 124
    sget-object v2, Lcom/isaigu/gymapp/ai/ImpulseMapView;->COL:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    sget-object v3, Lcom/isaigu/gymapp/ai/ImpulseMapView;->COL:[I

    aget v0, v3, v0

    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->mix(IIF)I

    move-result v0

    goto :goto_b

    .line 121
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 127
    :cond_40
    sget-object v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->COL:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/ImpulseMapView;->COL:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_b
.end method

.method private drawRound(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILjava/lang/String;)V
    .registers 9

    .prologue
    .line 293
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 295
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 296
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 297
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v2, 0x40e00000    # 7.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 298
    return-void
.end method

.method private heightFor(Lcom/isaigu/gymapp/ai/Workout$Block;)F
    .registers 8

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 143
    const/high16 v0, 0x41000000    # 8.0f

    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v1

    .line 146
    :goto_b
    return v0

    .line 145
    :cond_c
    iget v0, p1, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    add-int/lit8 v0, v0, -0x64

    int-to-float v0, v0

    const/high16 v1, 0x43960000    # 300.0f

    div-float/2addr v0, v1

    .line 146
    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->maxH:F

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3f266666    # 0.65f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    goto :goto_b
.end method

.method private indexAt(F)I
    .registers 6

    .prologue
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 303
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 304
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

    .line 308
    :goto_25
    return v0

    .line 303
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 308
    :cond_29
    const/4 v0, -0x1

    goto :goto_25
.end method

.method private layoutBlocks()V
    .registers 16

    .prologue
    const/high16 v14, 0x40800000    # 4.0f

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 153
    :goto_11
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    array-length v0, v0

    if-ne v0, v1, :cond_1d

    .line 189
    :goto_1a
    return-void

    :cond_1b
    move v1, v2

    .line 152
    goto :goto_11

    .line 156
    :cond_1d
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    .line 157
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    .line 158
    const/high16 v0, 0x41000000    # 8.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float v9, v0, v3

    .line 159
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v9

    sub-float/2addr v0, v3

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v3, v4

    sub-float v11, v0, v3

    .line 160
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v0, :cond_6c

    const/high16 v0, 0x41f00000    # 30.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v3

    move v3, v0

    .line 162
    :goto_4c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    :goto_54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :goto_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 163
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    .line 164
    goto :goto_59

    .line 160
    :cond_6c
    const/high16 v0, 0x40c00000    # 6.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v3

    move v3, v0

    goto :goto_4c

    .line 162
    :cond_73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_54

    .line 166
    :cond_79
    if-lez v4, :cond_a9

    int-to-float v0, v4

    div-float v0, v11, v0

    :goto_7e
    move v10, v2

    move v8, v0

    .line 167
    :goto_80
    const/4 v0, 0x3

    if-ge v10, v0, :cond_c7

    if-lez v4, :cond_c7

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v5, v2

    move v6, v7

    :goto_8f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 171
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    cmpg-float v13, v13, v3

    if-gez v13, :cond_ac

    .line 172
    add-float/2addr v6, v3

    move v0, v5

    :goto_a7
    move v5, v0

    .line 176
    goto :goto_8f

    .line 166
    :cond_a9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7e

    .line 174
    :cond_ac
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_a7

    .line 177
    :cond_b2
    if-lez v5, :cond_c5

    const v0, 0x3c23d70a    # 0.01f

    sub-float v6, v11, v6

    int-to-float v5, v5

    div-float v5, v6, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 167
    :goto_c0
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v8, v0

    goto :goto_80

    :cond_c5
    move v0, v8

    .line 177
    goto :goto_c0

    .line 179
    :cond_c7
    iput v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->scale:F

    move v4, v9

    .line 181
    :goto_ca
    if-ge v2, v1, :cond_f7

    .line 182
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v5, v2

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    aput v4, v0, v2

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    aget v0, v0, v2

    const/high16 v5, 0x40400000    # 3.0f

    iget v6, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    add-float/2addr v0, v4

    .line 181
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    goto :goto_ca

    .line 186
    :cond_f7
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v0, :cond_12e

    const/high16 v0, 0x42800000    # 64.0f

    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v1

    .line 187
    :goto_100
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getHeight()I

    move-result v1

    int-to-float v2, v1

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v1, :cond_132

    const/high16 v1, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v3

    :goto_10e
    sub-float v1, v2, v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    .line 188
    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    sub-float v0, v2, v0

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v2, :cond_125

    const/high16 v2, 0x42080000    # 34.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float v7, v2, v3

    :cond_125
    sub-float/2addr v0, v7

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->maxH:F

    goto/16 :goto_1a

    .line 186
    :cond_12e
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v14

    goto :goto_100

    .line 187
    :cond_132
    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v1, v14

    goto :goto_10e
.end method

.method static mix(IIF)I
    .registers 11

    .prologue
    .line 131
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 132
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 133
    and-int/lit16 v2, p0, 0xff

    .line 134
    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 135
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 136
    and-int/lit16 v5, p1, 0xff

    .line 137
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


# virtual methods
.method public getSelected()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_5

    .line 290
    :cond_4
    :goto_4
    return-void

    .line 203
    :cond_5
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->layoutBlocks()V

    .line 204
    const/4 v2, 0x0

    .line 205
    const/4 v0, 0x0

    move v1, v0

    move v6, v2

    :goto_c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2ed

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 207
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->heightFor(Lcom/isaigu/gymapp/ai/Workout$Block;)F

    move-result v5

    .line 208
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    if-eqz v2, :cond_275

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-ne v1, v2, :cond_275

    const/high16 v2, 0x41000000    # 8.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    .line 209
    :goto_31
    new-instance v7, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    aget v3, v3, v1

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v2

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    aget v8, v8, v1

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    aget v9, v9, v1

    add-float/2addr v8, v9

    iget v9, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->baseY:F

    sub-float v2, v9, v2

    invoke-direct {v7, v3, v4, v8, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 210
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v2

    if-eqz v2, :cond_278

    const v2, -0xa5a095

    .line 211
    :goto_54
    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-ne v1, v3, :cond_280

    const/4 v3, 0x1

    .line 212
    :goto_59
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v4

    if-eqz v4, :cond_283

    const/16 v4, 0xc8

    :goto_68
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 214
    const/high16 v4, 0x41000000    # 8.0f

    iget v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v8

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    aget v8, v8, v1

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 215
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v4, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 216
    if-eqz v3, :cond_97

    .line 217
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    const/high16 v9, 0x40200000    # 2.5f

    iget v10, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v4, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 221
    :cond_97
    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v4, :cond_29c

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    aget v4, v4, v1

    const/high16 v8, 0x41d00000    # 26.0f

    iget v9, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v8, v9

    cmpl-float v4, v4, v8

    if-lez v4, :cond_29c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v4

    if-nez v4, :cond_29c

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u00d7"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    const/high16 v9, 0x41400000    # 12.0f

    iget v10, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 224
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    const/high16 v10, 0x40e00000    # 7.0f

    iget v11, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 225
    const/high16 v4, 0x42280000    # 42.0f

    iget v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v8

    cmpl-float v4, v5, v4

    if-lez v4, :cond_12b

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Hz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    const/high16 v8, 0x41200000    # 10.0f

    iget v9, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v8, v9

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    iget v8, v7, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x41600000    # 14.0f

    iget v10, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 235
    :cond_12b
    :goto_12b
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v4

    if-eqz v4, :cond_442

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v4, :cond_442

    .line 236
    const/high16 v4, 0x42600000    # 56.0f

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x41b00000    # 22.0f

    iget v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v8

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    aget v8, v8, v1

    const/high16 v9, 0x40800000    # 4.0f

    iget v10, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 237
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v4, v9

    sub-float/2addr v8, v9

    iget v9, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v4

    const/high16 v10, 0x40800000    # 4.0f

    iget v11, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v4, v11

    add-float/2addr v4, v10

    iget v10, v7, Landroid/graphics/RectF;->top:F

    const/high16 v11, 0x40800000    # 4.0f

    iget v12, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-direct {v5, v8, v9, v4, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 238
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fig:Landroid/graphics/Paint;

    if-eqz v3, :cond_17d

    const/4 v2, -0x1

    :cond_17d
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fig:Landroid/graphics/Paint;

    invoke-static {p1, v0, v5, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->drawStill(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Paint;)Z

    move-result v0

    if-nez v0, :cond_442

    .line 240
    const/4 v6, 0x1

    move v2, v6

    .line 243
    :goto_18c
    if-eqz v3, :cond_26f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v0, :cond_26f

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v3, v7, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x40e00000    # 7.0f

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, v7, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x40800000    # 4.0f

    iget v6, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v7, Landroid/graphics/RectF;->right:F

    const/high16 v6, 0x40e00000    # 7.0f

    iget v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, v7, Landroid/graphics/RectF;->bottom:F

    const/high16 v8, 0x40800000    # 4.0f

    iget v9, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    const/16 v3, 0xe6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 248
    new-instance v0, Landroid/graphics/RectF;

    iget v3, v7, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x40200000    # 2.5f

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    iget v6, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, v7, Landroid/graphics/RectF;->right:F

    const/high16 v6, 0x40200000    # 2.5f

    iget v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    .line 249
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    const/high16 v8, 0x41400000    # 12.0f

    iget v9, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x40400000    # 3.0f

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->fill:Landroid/graphics/Paint;

    .line 248
    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 251
    const/high16 v0, 0x41900000    # 18.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v0, v3

    .line 252
    const/high16 v3, 0x42200000    # 40.0f

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42200000    # 40.0f

    iget v6, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 253
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->plusBtn:Landroid/graphics/RectF;

    const/high16 v5, 0x42180000    # 38.0f

    iget v6, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v6

    sub-float v5, v3, v5

    const/high16 v6, 0x41700000    # 15.0f

    iget v7, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    const/high16 v7, 0x41000000    # 8.0f

    iget v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v7, v8

    sub-float v7, v3, v7

    const/high16 v8, 0x41700000    # 15.0f

    iget v9, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 254
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minusBtn:Landroid/graphics/RectF;

    const/high16 v5, 0x41000000    # 8.0f

    iget v6, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    const/high16 v6, 0x41700000    # 15.0f

    iget v7, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    const/high16 v7, 0x42180000    # 38.0f

    iget v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v7, v8

    add-float/2addr v3, v7

    const/high16 v7, 0x41700000    # 15.0f

    iget v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v7, v8

    add-float/2addr v0, v7

    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->plusBtn:Landroid/graphics/RectF;

    const v3, -0xbc5fb9

    const-string v4, "+"

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->drawRound(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILjava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minusBtn:Landroid/graphics/RectF;

    const v3, -0x10acb0

    const-string v4, "\u2212"

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->drawRound(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILjava/lang/String;)V

    .line 205
    :cond_26f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v6, v2

    goto/16 :goto_c

    .line 208
    :cond_275
    const/4 v2, 0x0

    goto/16 :goto_31

    .line 210
    :cond_278
    iget v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->colorFor(I)I

    move-result v2

    goto/16 :goto_54

    .line 211
    :cond_280
    const/4 v3, 0x0

    goto/16 :goto_59

    .line 213
    :cond_283
    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v9, 0x43160000    # 150.0f

    const v10, 0x3e4ccccd    # 0.2f

    iget v11, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto/16 :goto_68

    .line 230
    :cond_29c
    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v4, :cond_12b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v4

    if-eqz v4, :cond_12b

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    aget v4, v4, v1

    const/high16 v5, 0x42080000    # 34.0f

    iget v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v8

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12b

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const v8, -0x55000001

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    iget v8, v7, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x40800000    # 4.0f

    iget v10, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_12b

    .line 259
    :cond_2ed
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v0, :cond_337

    .line 261
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->totalSeconds()I

    move-result v8

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const v1, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
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

    .line 264
    const/4 v0, 0x1

    move v7, v0

    :goto_328
    mul-int/lit8 v0, v7, 0x3c

    if-ge v0, v8, :cond_337

    .line 265
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    mul-int/lit8 v1, v7, 0x3c

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/Workout;->blockAt(D)I

    move-result v0

    .line 266
    if-gez v0, :cond_387

    .line 279
    :cond_337
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->playhead:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_37e

    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->playhead:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/Workout;->blockAt(D)I

    move-result v0

    .line 281
    if-gez v0, :cond_416

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    array-length v0, v0

    if-lez v0, :cond_413

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

    .line 283
    :goto_361
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 285
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->stroke:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 287
    :cond_37e
    if-eqz v6, :cond_4

    .line 288
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->postInvalidateDelayed(J)V

    goto/16 :goto_4

    .line 269
    :cond_387
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    aget v1, v1, v0

    mul-int/lit8 v2, v7, 0x3c

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

    .line 270
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

    .line 271
    const/16 v0, 0x4b0

    if-le v8, v0, :cond_411

    const/4 v0, 0x5

    :goto_3ce
    rem-int v0, v7, v0

    if-nez v0, :cond_40c

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const v3, -0x66000001

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
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

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->axis:Landroid/graphics/Paint;

    const v1, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    :cond_40c
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_328

    .line 271
    :cond_411
    const/4 v0, 0x1

    goto :goto_3ce

    .line 281
    :cond_413
    const/4 v1, 0x0

    goto/16 :goto_361

    .line 282
    :cond_416
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

    goto/16 :goto_361

    :cond_442
    move v2, v6

    goto/16 :goto_18c
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 194
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .prologue
    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 313
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_10

    :cond_e
    move v0, v2

    .line 415
    :goto_f
    return v0

    .line 316
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_254

    move v0, v1

    .line 415
    goto :goto_f

    .line 320
    :pswitch_21
    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downX:F

    .line 321
    iput v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downY:F

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downAt:J

    .line 323
    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    .line 324
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    .line 325
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->indexAt(F)I

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I

    .line 326
    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-ltz v2, :cond_8d

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8d

    .line 327
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v6, v9

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->handle:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 328
    invoke-virtual {v2, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 329
    iput v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    .line 330
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 331
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->startSeconds:I

    .line 332
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 335
    :cond_8d
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    if-nez v0, :cond_9f

    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I

    if-ltz v0, :cond_9f

    .line 336
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lift:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9f
    move v0, v1

    .line 338
    goto/16 :goto_f

    .line 340
    :pswitch_a2
    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downX:F

    sub-float v4, v0, v4

    .line 341
    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    if-ne v5, v1, :cond_13e

    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 343
    iget v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->startSeconds:I

    int-to-float v2, v2

    const v3, 0x3c23d70a    # 0.01f

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->scale:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float v3, v4, v3

    add-float/2addr v2, v3

    .line 344
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v3

    if-eqz v3, :cond_118

    .line 345
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

    .line 349
    :goto_de
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->width:[F

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    const/high16 v4, 0x41f00000    # 30.0f

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->d:F

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->scale:F

    mul-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v2, v3

    .line 350
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    add-int/lit8 v0, v0, 0x1

    :goto_f9
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->left:[F

    array-length v2, v2

    if-ge v0, v2, :cond_135

    .line 351
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

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_f9

    .line 347
    :cond_118
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

    goto :goto_de

    .line 353
    :cond_135
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 354
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->changed()V

    move v0, v1

    .line 355
    goto/16 :goto_f

    .line 357
    :cond_13e
    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    if-nez v5, :cond_164

    iget-boolean v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    if-nez v5, :cond_164

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->touchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_15f

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->touchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_164

    .line 358
    :cond_15f
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lift:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 360
    :cond_164
    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_18c

    .line 361
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->indexAt(F)I

    move-result v0

    .line 362
    if-ltz v0, :cond_186

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-eq v0, v3, :cond_186

    .line 363
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    invoke-virtual {v3, v4, v0}, Lcom/isaigu/gymapp/ai/Workout;->move(II)V

    .line 364
    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    .line 365
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 366
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->layoutBlocks()V

    .line 367
    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 368
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->changed()V

    .line 370
    :cond_186
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    move v0, v1

    .line 371
    goto/16 :goto_f

    :cond_18c
    move v0, v1

    .line 373
    goto/16 :goto_f

    .line 376
    :pswitch_18f
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lift:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 377
    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    if-eqz v4, :cond_1a4

    .line 378
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    .line 379
    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    .line 380
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 381
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    move v0, v1

    .line 382
    goto/16 :goto_f

    .line 384
    :cond_1a4
    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    if-nez v4, :cond_206

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->touchSlop:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_206

    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downY:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->touchSlop:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_206

    .line 385
    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-ltz v4, :cond_210

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->plusBtn:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_210

    .line 386
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

    .line 387
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    .line 388
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 389
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->changed()V

    .line 398
    :goto_1f8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    if-eqz v0, :cond_203

    .line 399
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    invoke-interface {v0, v3}, Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;->onSelect(I)V

    .line 401
    :cond_203
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->performClick()Z

    .line 403
    :cond_206
    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    .line 404
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 405
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    move v0, v1

    .line 406
    goto/16 :goto_f

    .line 390
    :cond_210
    iget v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    if-ltz v4, :cond_23d

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->minusBtn:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_23d

    .line 391
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 392
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    .line 393
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 394
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->changed()V

    goto :goto_1f8

    .line 396
    :cond_23d
    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->downIndex:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    goto :goto_1f8

    .line 408
    :pswitch_242
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lift:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 409
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->lifted:Z

    .line 410
    iput v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->gesture:I

    .line 411
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 412
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    move v0, v1

    .line 413
    goto/16 :goto_f

    .line 318
    nop

    :pswitch_data_254
    .packed-switch 0x0
        :pswitch_21
        :pswitch_18f
        :pswitch_a2
        :pswitch_242
    .end packed-switch
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 441
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public select(I)V
    .registers 3

    .prologue
    .line 102
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

    .line 103
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 104
    return-void

    .line 102
    :cond_16
    const/4 p1, -0x1

    goto :goto_10
.end method

.method public setListener(Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->listener:Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;

    .line 95
    return-void
.end method

.method public setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V
    .registers 5

    .prologue
    .line 83
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->map:Lcom/isaigu/gymapp/ai/Workout;

    .line 84
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->editable:Z

    .line 85
    if-eqz p1, :cond_10

    iget v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_13

    .line 86
    :cond_10
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->selected:I

    .line 88
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->frozen:Z

    .line 89
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->requestLayout()V

    .line 90
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 91
    return-void
.end method

.method public setPlayhead(F)V
    .registers 2

    .prologue
    .line 107
    iput p1, p0, Lcom/isaigu/gymapp/ai/ImpulseMapView;->playhead:F

    .line 108
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 109
    return-void
.end method
