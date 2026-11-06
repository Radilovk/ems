.class public final Lcom/isaigu/gymapp/wearable/face/FaceRing;
.super Landroid/view/View;
.source "FaceRing.java"


# instance fields
.field private accent:I

.field private beatMs:J

.field private beatStartLeft:J

.field private final box:Landroid/graphics/RectF;

.field private final d:F

.field private ink:I

.field private lastOn:Z

.field private muted:I

.field private names:[Ljava/lang/String;

.field private offWord:Ljava/lang/String;

.field private onWord:Ljava/lang/String;

.field private final p:Landroid/graphics/Paint;

.field private paused:Z

.field private pausedWord:Ljava/lang/String;

.field private phases:[J

.field private rose:I

.field private st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

.field private track:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->box:Landroid/graphics/RectF;

    .line 19
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->phases:[J

    .line 20
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    .line 21
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->names:[Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->onWord:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->offWord:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->pausedWord:Ljava/lang/String;

    .line 24
    const v0, -0xc82f15

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->accent:I

    const v0, -0x906f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->rose:I

    const v0, -0x190c01

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->ink:I

    const v0, -0x6c503a

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->muted:I

    const v0, 0x22ffffff

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->track:I

    .line 26
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->beatMs:J

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->d:F

    .line 33
    return-void
.end method

.method static pad2(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 139
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 28

    .prologue
    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 67
    const/high16 v4, 0x40000000    # 2.0f

    div-float v13, v2, v4

    .line 68
    const/high16 v2, 0x40000000    # 2.0f

    div-float v14, v3, v2

    .line 69
    const/high16 v2, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->d:F

    mul-float v15, v2, v3

    .line 70
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v12, v2

    sub-float v16, v2, v15

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->box:Landroid/graphics/RectF;

    sub-float v3, v13, v16

    sub-float v4, v14, v16

    add-float v5, v13, v16

    add-float v6, v14, v16

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 72
    const-wide/16 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->phases:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->phases:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->phases:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 73
    const/high16 v17, 0x40800000    # 4.0f

    .line 74
    const/high16 v10, -0x3d4c0000    # -90.0f

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    iget-wide v4, v4, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->elapsedMs:J

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 79
    const-wide/16 v8, 0x0

    .line 80
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v22, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->accent:I

    aput v3, v22, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->rose:I

    aput v3, v22, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->accent:I

    aput v3, v22, v2

    .line 81
    const/4 v2, 0x0

    move v11, v2

    :goto_9d
    const/4 v2, 0x3

    if-ge v11, v2, :cond_152

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->phases:[J

    aget-wide v2, v2, v11

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_b4

    move-wide v2, v8

    move v4, v10

    .line 81
    :goto_ae
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move-wide v8, v2

    move v10, v4

    goto :goto_9d

    .line 85
    :cond_b4
    const/high16 v2, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->phases:[J

    aget-wide v4, v3, v11

    long-to-float v3, v4

    mul-float/2addr v2, v3

    move-wide/from16 v0, v18

    long-to-float v3, v0

    div-float/2addr v2, v3

    sub-float v5, v2, v17

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->track:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->box:Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v17, v2

    add-float v4, v10, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 88
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->phases:[J

    aget-wide v6, v4, v11

    sub-long v24, v20, v8

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 89
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_136

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    aget v3, v22, v11

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->phase:I

    if-ne v11, v2, :cond_14f

    const/16 v2, 0xff

    :goto_114
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->box:Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v17, v2

    add-float v4, v10, v2

    long-to-float v2, v6

    mul-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->phases:[J

    aget-wide v6, v5, v11

    long-to-float v5, v6

    div-float v5, v2, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 94
    :cond_136
    const/high16 v2, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->phases:[J

    aget-wide v4, v3, v11

    long-to-float v3, v4

    mul-float/2addr v2, v3

    move-wide/from16 v0, v18

    long-to-float v3, v0

    div-float/2addr v2, v3

    add-float v4, v10, v2

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->phases:[J

    aget-wide v2, v2, v11

    add-long/2addr v2, v8

    goto/16 :goto_ae

    .line 91
    :cond_14f
    const/16 v2, 0x96

    goto :goto_114

    .line 98
    :cond_152
    const v2, 0x3fcccccd    # 1.6f

    mul-float/2addr v2, v15

    sub-float v2, v16, v2

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->box:Landroid/graphics/RectF;

    sub-float v4, v13, v2

    sub-float v5, v14, v2

    add-float v6, v13, v2

    add-float/2addr v2, v14

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->d:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->track:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->box:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    if-eqz v2, :cond_357

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->rose:I

    move v8, v2

    .line 104
    :goto_19e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->paused:Z

    if-nez v2, :cond_1e7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    iget-wide v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e7

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->box:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    iget-wide v6, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    long-to-float v6, v6

    const-wide/16 v10, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->beatMs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    long-to-float v7, v10

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v5, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 109
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 112
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    iget-wide v4, v4, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->totalMs:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    iget-wide v6, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->elapsedMs:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v6, 0xea60

    div-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    const-wide/16 v6, 0x3c

    rem-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->pad2(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->ink:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v12

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v3, v12

    sub-float v3, v14, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    const v3, 0x3d8b4396    # 0.068f

    mul-float/2addr v3, v12

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->muted:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->names:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    iget v5, v5, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->phase:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget-object v2, v2, v3

    const v3, 0x3dae147b    # 0.085f

    mul-float/2addr v3, v12

    add-float/2addr v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 121
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->paused:Z

    if-eqz v2, :cond_35e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->pausedWord:Ljava/lang/String;

    .line 122
    :goto_2b2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    const v4, 0x3d83126f    # 0.064f

    mul-float/2addr v4, v12

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const v4, 0x3db851ec    # 0.09f

    mul-float/2addr v4, v12

    add-float/2addr v3, v4

    .line 125
    const v4, 0x3de147ae    # 0.11f

    mul-float/2addr v4, v12

    .line 126
    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v12

    add-float/2addr v5, v14

    .line 127
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->box:Landroid/graphics/RectF;

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v3, v7

    sub-float v7, v13, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v4, v9

    sub-float v9, v5, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v3, v10

    add-float/2addr v3, v13

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v4, v10

    add-float/2addr v10, v5

    invoke-virtual {v6, v7, v9, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 128
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->paused:Z

    if-eqz v3, :cond_307

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->muted:I

    .line 129
    :cond_307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->box:Landroid/graphics/RectF;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v4, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 135
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 136
    return-void

    .line 103
    :cond_357
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->accent:I

    move v8, v2

    goto/16 :goto_19e

    .line 121
    :cond_35e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    if-eqz v2, :cond_395

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->onWord:Ljava/lang/String;

    :goto_36f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    iget-wide v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    const-wide/16 v10, 0x3e7

    add-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b2

    :cond_395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->offWord:Ljava/lang/String;

    goto :goto_36f
.end method

.method public set([JLcom/isaigu/gymapp/wearable/face/FaceTimeline$State;Z)V
    .registers 8

    .prologue
    .line 51
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->phases:[J

    .line 52
    iget-boolean v0, p2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->lastOn:Z

    if-ne v0, v1, :cond_10

    iget-wide v0, p2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->beatStartLeft:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 53
    :cond_10
    const-wide/16 v0, 0x1

    iget-wide v2, p2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->beatStartLeft:J

    .line 54
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->beatStartLeft:J

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->beatMs:J

    .line 56
    :cond_1e
    iget-boolean v0, p2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->lastOn:Z

    .line 57
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->st:Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    .line 58
    iput-boolean p3, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->paused:Z

    .line 59
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceRing;->invalidate()V

    .line 60
    return-void
.end method

.method public setColors(IIIII)V
    .registers 6

    .prologue
    .line 36
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->accent:I

    .line 37
    iput p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->rose:I

    .line 38
    iput p3, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->ink:I

    .line 39
    iput p4, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->muted:I

    .line 40
    iput p5, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->track:I

    .line 41
    return-void
.end method

.method public setWords([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 44
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->names:[Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->onWord:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->offWord:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/face/FaceRing;->pausedWord:Ljava/lang/String;

    .line 48
    return-void
.end method
