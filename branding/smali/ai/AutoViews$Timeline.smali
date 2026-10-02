.class public final Lcom/isaigu/gymapp/ai/AutoViews$Timeline;
.super Landroid/view/View;
.source "AutoViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timeline"
.end annotation


# static fields
.field private static final N:I = 0x168

.field private static final SMOOTH_S:D = 40.0


# instance fields
.field private final area:Landroid/graphics/Paint;

.field private final cv:[F

.field private hrCapY:F

.field private hrHi:F

.field private final hrLine:Landroid/graphics/Paint;

.field private hrLo:F

.field private final hrPath:Landroid/graphics/Path;

.field private final hrv:[F

.field private final hv:[F

.field private names:[Ljava/lang/String;

.field private final now:Landroid/graphics/Paint;

.field private nowS:F

.field private final path:Landroid/graphics/Path;

.field private final phase:[I

.field private final sep:Landroid/graphics/Paint;

.field private totalS:F

.field private final txt:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/16 v1, 0x168

    const/4 v2, 0x1

    .line 562
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 543
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    .line 544
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    .line 545
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    .line 546
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    .line 547
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    .line 548
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hv:[F

    .line 549
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->cv:[F

    .line 550
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    .line 552
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    .line 553
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    .line 554
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    .line 555
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    .line 556
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    .line 559
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrCapY:F

    .line 563
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 564
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 565
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 566
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 567
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 568
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 569
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 570
    return-void
.end method

.method static critical([FD)Z
    .registers 8

    .prologue
    const/4 v3, 0x6

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 585
    array-length v2, p0

    if-le v2, v3, :cond_1e

    aget v0, p0, v3

    .line 586
    :cond_9
    :goto_9
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1c

    cmpl-float v0, v0, v1

    if-nez v0, :cond_27

    const-wide v0, 0x4046800000000000L    # 45.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_27

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    .line 585
    :cond_1e
    const/4 v2, 0x2

    aget v2, p0, v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_9

    move v0, v1

    goto :goto_9

    .line 586
    :cond_27
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->getWidth()I

    move-result v9

    .line 678
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->getHeight()I

    move-result v8

    .line 679
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v10

    .line 680
    int-to-float v0, v8

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    sub-float v11, v0, v1

    .line 681
    int-to-float v0, v9

    const/high16 v1, 0x43b40000    # 360.0f

    div-float v12, v0, v1

    .line 682
    const/16 v0, 0x168

    new-array v5, v0, [I

    .line 683
    const/16 v0, 0x168

    new-array v6, v0, [F

    .line 684
    const/4 v0, 0x0

    :goto_25
    const/16 v1, 0x168

    if-ge v0, v1, :cond_3e

    .line 685
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->cv:[F

    aget v1, v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->heat(D)I

    move-result v1

    aput v1, v5, v0

    .line 686
    int-to-float v1, v0

    const v2, 0x43b38000    # 359.0f

    div-float/2addr v1, v2

    aput v1, v6, v0

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 688
    :cond_3e
    iget-object v13, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v9

    const/4 v4, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 689
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 690
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 691
    const/4 v0, 0x0

    :goto_5a
    const/16 v1, 0x168

    if-ge v0, v1, :cond_7c

    .line 692
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    int-to-float v2, v0

    mul-float/2addr v2, v12

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v12, v3

    add-float/2addr v2, v3

    sub-float v3, v11, v10

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hv:[F

    aget v5, v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float v3, v11, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 694
    :cond_7c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    int-to-float v1, v9

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 695
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 696
    int-to-float v0, v9

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->nowS:F

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v13, v0, v1

    .line 697
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 698
    const/4 v0, 0x0

    const/4 v1, 0x0

    int-to-float v2, v8

    invoke-virtual {p1, v0, v1, v13, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 699
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 700
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 701
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 702
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 703
    const/4 v0, 0x0

    int-to-float v1, v9

    int-to-float v2, v8

    invoke-virtual {p1, v13, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 704
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_161

    const/16 v0, 0x5a

    :goto_c0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 705
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 706
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 708
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 709
    const/4 v1, 0x0

    int-to-float v3, v9

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v11

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 711
    const/4 v1, -0x1

    .line 712
    const/high16 v6, -0x40800000    # -1.0f

    .line 713
    const/4 v0, 0x0

    move v8, v0

    :goto_e9
    const/16 v0, 0x168

    if-ge v8, v0, :cond_168

    .line 714
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    aget v0, v0, v8

    if-eq v0, v1, :cond_24a

    .line 715
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    aget v7, v0, v8

    .line 716
    int-to-float v0, v8

    mul-float v1, v0, v12

    .line 717
    if-lez v8, :cond_119

    .line 718
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v3, 0x88

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 719
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v0

    sub-float v2, v10, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 721
    :cond_119
    if-ltz v7, :cond_165

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_165

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    aget-object v0, v0, v7

    .line 723
    :goto_124
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v2

    add-float/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 724
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v1

    int-to-float v3, v9

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_246

    .line 725
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 726
    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 727
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v1

    move v1, v7

    .line 713
    :goto_15c
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v6, v0

    goto :goto_e9

    .line 704
    :cond_161
    const/16 v0, 0x6e

    goto/16 :goto_c0

    .line 721
    :cond_165
    const-string v0, ""

    goto :goto_124

    .line 732
    :cond_168
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21a

    .line 733
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 734
    const/4 v0, 0x0

    .line 735
    const/4 v1, 0x0

    :goto_176
    const/16 v2, 0x168

    if-ge v1, v2, :cond_1c1

    .line 736
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_187

    .line 737
    const/4 v0, 0x0

    .line 735
    :goto_184
    add-int/lit8 v1, v1, 0x1

    goto :goto_176

    .line 740
    :cond_187
    sub-float v2, v11, v10

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    aget v5, v5, v1

    iget v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLo:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    iget v7, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLo:F

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float v2, v11, v2

    .line 741
    if-eqz v0, :cond_1b3

    .line 742
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    int-to-float v4, v1

    mul-float/2addr v4, v12

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v12, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_184

    .line 744
    :cond_1b3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    int-to-float v3, v1

    mul-float/2addr v3, v12

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v12, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 745
    const/4 v0, 0x1

    goto :goto_184

    .line 748
    :cond_1c1
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const v1, -0xb293

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 749
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 750
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 751
    sub-float v0, v11, v10

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrCapY:F

    mul-float/2addr v0, v1

    sub-float v2, v11, v0

    .line 752
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const v1, -0xb293

    const/16 v3, 0x99

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 753
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 754
    const/4 v1, 0x0

    int-to-float v3, v9

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 755
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 757
    :cond_21a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 758
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v0

    sub-float v2, v10, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v13

    move v3, v13

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 759
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v0

    sub-float v0, v10, v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    invoke-virtual {p1, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 760
    return-void

    :cond_246
    move v0, v6

    move v1, v7

    goto/16 :goto_15c

    :cond_24a
    move v0, v6

    goto/16 :goto_15c
.end method

.method public set(Ljava/util/List;Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;DD[Ljava/lang/String;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;",
            "Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;",
            "DD[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 596
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    .line 597
    if-eqz p2, :cond_4f

    invoke-virtual/range {p2 .. p4}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->sessionAt(D)D

    move-result-wide v2

    move-wide v10, v2

    .line 598
    :goto_d
    if-eqz p2, :cond_52

    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    sub-double/2addr v4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    add-double v2, v2, p5

    .line 599
    :goto_1c
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    .line 600
    move-wide/from16 v0, p5

    double-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->nowS:F

    .line 601
    if-eqz p2, :cond_55

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    .line 602
    :goto_34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v4, v2

    :goto_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 603
    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-wide v4, v2

    .line 604
    goto :goto_39

    :cond_4f
    move-wide/from16 v10, p5

    .line 597
    goto :goto_d

    :cond_52
    move-wide/from16 v2, p5

    .line 598
    goto :goto_1c

    .line 601
    :cond_55
    const-wide/16 v2, 0x0

    goto :goto_34

    .line 605
    :cond_58
    const-wide v2, 0x3fa999999999999aL    # 0.05

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 606
    const/16 v2, 0x168

    new-array v14, v2, [F

    .line 607
    const/16 v2, 0x168

    new-array v15, v2, [F

    .line 608
    const/16 v2, 0x168

    new-array v0, v2, [Z

    move-object/from16 v16, v0

    .line 609
    const/4 v4, 0x0

    .line 610
    const/4 v5, 0x0

    .line 611
    const/4 v2, 0x0

    move v8, v2

    :goto_73
    const/16 v2, 0x168

    if-ge v8, v2, :cond_1a9

    .line 612
    int-to-double v2, v8

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    float-to-double v6, v6

    mul-double/2addr v2, v6

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double v18, v2, v6

    .line 613
    const/4 v3, 0x0

    .line 614
    const-wide/16 v6, 0x0

    .line 615
    cmpg-double v2, v18, p5

    if-gtz v2, :cond_12e

    .line 616
    :goto_8f
    add-int/lit8 v2, v4, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_af

    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v9, 0x0

    aget v2, v2, v9

    float-to-double v0, v2

    move-wide/from16 v20, v0

    cmpg-double v2, v20, v18

    if-gtz v2, :cond_af

    .line 617
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_8f

    .line 619
    :cond_af
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_dc

    .line 620
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 621
    add-int/lit8 v3, v4, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_12b

    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v6, 0x0

    aget v3, v3, v6

    float-to-double v6, v3

    :goto_d3
    const/4 v3, 0x0

    aget v3, v2, v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    sub-double v6, v6, v20

    move-object v3, v2

    .line 633
    :cond_dc
    :goto_dc
    if-eqz v3, :cond_19a

    const/4 v2, 0x2

    aget v2, v3, v2

    float-to-double v0, v2

    move-wide/from16 v20, v0

    div-double v20, v20, v12

    move-wide/from16 v0, v20

    double-to-float v2, v0

    :goto_e9
    aput v2, v14, v8

    .line 634
    if-eqz v3, :cond_19d

    const/4 v2, 0x3

    aget v2, v3, v2

    :goto_f0
    aput v2, v15, v8

    .line 635
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    if-eqz v3, :cond_1a0

    array-length v2, v3

    const/16 v17, 0x4

    move/from16 v0, v17

    if-le v2, v0, :cond_1a0

    const/4 v2, 0x4

    aget v2, v3, v2

    float-to-int v2, v2

    :goto_103
    aput v2, v9, v8

    .line 636
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    cmpg-double v2, v18, p5

    if-gtz v2, :cond_1a3

    if-eqz v3, :cond_1a3

    array-length v2, v3

    const/16 v17, 0x5

    move/from16 v0, v17

    if-le v2, v0, :cond_1a3

    const/4 v2, 0x5

    aget v2, v3, v2

    :goto_119
    aput v2, v9, v8

    .line 637
    if-eqz v3, :cond_1a6

    invoke-static {v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->critical([FD)Z

    move-result v2

    if-eqz v2, :cond_1a6

    const/4 v2, 0x1

    :goto_124
    aput-boolean v2, v16, v8

    .line 611
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_73

    :cond_12b
    move-wide/from16 v6, p5

    .line 621
    goto :goto_d3

    .line 623
    :cond_12e
    if-eqz p2, :cond_dc

    .line 624
    sub-double v20, v18, p5

    add-double v20, v20, v10

    .line 625
    :goto_134
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_15a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    add-int/lit8 v9, v5, 0x1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v9, 0x0

    aget v2, v2, v9

    float-to-double v0, v2

    move-wide/from16 v22, v0

    cmpg-double v2, v22, v20

    if-gtz v2, :cond_15a

    .line 626
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_134

    .line 628
    :cond_15a
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_dc

    .line 629
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 630
    add-int/lit8 v3, v5, 0x1

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_195

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    add-int/lit8 v6, v5, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v6, 0x0

    aget v3, v3, v6

    float-to-double v6, v3

    :goto_18a
    const/4 v3, 0x0

    aget v3, v2, v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    sub-double v6, v6, v20

    move-object v3, v2

    goto/16 :goto_dc

    :cond_195
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    goto :goto_18a

    .line 633
    :cond_19a
    const/4 v2, 0x0

    goto/16 :goto_e9

    .line 634
    :cond_19d
    const/4 v2, 0x0

    goto/16 :goto_f0

    .line 635
    :cond_1a0
    const/4 v2, 0x0

    goto/16 :goto_103

    .line 636
    :cond_1a3
    const/4 v2, 0x0

    goto/16 :goto_119

    .line 637
    :cond_1a6
    const/4 v2, 0x0

    goto/16 :goto_124

    .line 640
    :cond_1a9
    const-wide v2, 0x3fe3333333333333L    # 0.6

    const-wide v4, 0x40cc200000000000L    # 14400.0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 641
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v12, v2

    .line 642
    const/16 v2, 0x168

    new-array v13, v2, [F

    .line 643
    const/16 v2, 0x168

    new-array v0, v2, [F

    move-object/from16 v17, v0

    .line 644
    const/4 v2, 0x0

    move v3, v2

    :goto_1d1
    const/16 v2, 0x168

    if-ge v3, v2, :cond_253

    .line 645
    aget-boolean v2, v16, v3

    if-eqz v2, :cond_1e3

    .line 646
    const/4 v2, 0x0

    aput v2, v13, v3

    .line 647
    const/4 v2, 0x0

    aput v2, v17, v3

    .line 644
    :goto_1df
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1d1

    .line 650
    :cond_1e3
    const-wide/16 v8, 0x0

    .line 651
    const-wide/16 v6, 0x0

    .line 652
    const-wide/16 v4, 0x0

    .line 653
    const/4 v2, 0x0

    sub-int v18, v3, v12

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1f2
    const/16 v18, 0x167

    add-int v19, v3, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    if-gt v2, v0, :cond_23a

    .line 654
    aget-boolean v18, v16, v2

    if-eqz v18, :cond_205

    .line 653
    :goto_202
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f2

    .line 657
    :cond_205
    const-wide/high16 v18, -0x4020000000000000L    # -0.5

    sub-int v20, v3, v2

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    sub-int v20, v3, v2

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    mul-double v20, v10, v10

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->exp(D)D

    move-result-wide v18

    .line 658
    add-double v8, v8, v18

    .line 659
    aget v20, v14, v2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v18

    add-double v6, v6, v20

    .line 660
    aget v20, v15, v2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v4, v4, v18

    goto :goto_202

    .line 662
    :cond_23a
    const-wide/16 v18, 0x0

    cmpl-double v2, v8, v18

    if-lez v2, :cond_24f

    div-double/2addr v6, v8

    double-to-float v2, v6

    :goto_242
    aput v2, v13, v3

    .line 663
    const-wide/16 v6, 0x0

    cmpl-double v2, v8, v6

    if-lez v2, :cond_251

    div-double/2addr v4, v8

    double-to-float v2, v4

    :goto_24c
    aput v2, v17, v3

    goto :goto_1df

    .line 662
    :cond_24f
    const/4 v2, 0x0

    goto :goto_242

    .line 663
    :cond_251
    const/4 v2, 0x0

    goto :goto_24c

    .line 666
    :cond_253
    const/4 v2, 0x0

    move v3, v2

    :goto_255
    const/16 v2, 0x168

    if-ge v3, v2, :cond_295

    .line 667
    const/4 v2, 0x0

    add-int/lit8 v4, v3, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget v2, v13, v2

    .line 668
    const/16 v4, 0x167

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v4, v13, v4

    .line 669
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hv:[F

    aget-boolean v6, v16, v3

    if-eqz v6, :cond_287

    add-float/2addr v2, v4

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v4

    :goto_279
    aput v2, v5, v3

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->cv:[F

    aget v4, v17, v3

    aput v4, v2, v3

    .line 666
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_255

    .line 669
    :cond_287
    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f000000    # 0.5f

    aget v7, v13, v3

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    goto :goto_279

    .line 672
    :cond_295
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->invalidate()V

    .line 673
    return-void
.end method

.method public setHrScale(II)V
    .registers 6

    .prologue
    .line 574
    if-gt p2, p1, :cond_6

    .line 575
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    .line 581
    :goto_5
    return-void

    .line 578
    :cond_6
    int-to-float v0, p1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLo:F

    .line 579
    add-int/lit8 v0, p2, 0x8

    int-to-float v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    .line 580
    int-to-float v0, p2

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLo:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLo:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrCapY:F

    goto :goto_5
.end method
