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
    .line 678
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->getWidth()I

    move-result v9

    .line 679
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->getHeight()I

    move-result v8

    .line 680
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v10

    .line 681
    int-to-float v0, v8

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    sub-float v11, v0, v1

    .line 682
    int-to-float v0, v9

    const/high16 v1, 0x43b40000    # 360.0f

    div-float v12, v0, v1

    .line 683
    const/16 v0, 0x168

    new-array v5, v0, [I

    .line 684
    const/16 v0, 0x168

    new-array v6, v0, [F

    .line 685
    const/4 v0, 0x0

    :goto_25
    const/16 v1, 0x168

    if-ge v0, v1, :cond_3e

    .line 686
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->cv:[F

    aget v1, v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->heat(D)I

    move-result v1

    aput v1, v5, v0

    .line 687
    int-to-float v1, v0

    const v2, 0x43b38000    # 359.0f

    div-float/2addr v1, v2

    aput v1, v6, v0

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 689
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

    .line 690
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 691
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 692
    const/4 v0, 0x0

    :goto_5a
    const/16 v1, 0x168

    if-ge v0, v1, :cond_7c

    .line 693
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

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 695
    :cond_7c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    int-to-float v1, v9

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 696
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 697
    int-to-float v0, v9

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->nowS:F

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v13, v0, v1

    .line 698
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 699
    const/4 v0, 0x0

    const/4 v1, 0x0

    int-to-float v2, v8

    invoke-virtual {p1, v0, v1, v13, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 700
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 701
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 702
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 703
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 704
    const/4 v0, 0x0

    int-to-float v1, v9

    int-to-float v2, v8

    invoke-virtual {p1, v13, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 705
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_161

    const/16 v0, 0x5a

    :goto_c0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 706
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 707
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 709
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 710
    const/4 v1, 0x0

    int-to-float v3, v9

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v11

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 712
    const/4 v1, -0x1

    .line 713
    const/high16 v6, -0x40800000    # -1.0f

    .line 714
    const/4 v0, 0x0

    move v8, v0

    :goto_e9
    const/16 v0, 0x168

    if-ge v8, v0, :cond_168

    .line 715
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    aget v0, v0, v8

    if-eq v0, v1, :cond_24a

    .line 716
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    aget v7, v0, v8

    .line 717
    int-to-float v0, v8

    mul-float v1, v0, v12

    .line 718
    if-lez v8, :cond_119

    .line 719
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v3, 0x88

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 720
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v0

    sub-float v2, v10, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 722
    :cond_119
    if-ltz v7, :cond_165

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_165

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    aget-object v0, v0, v7

    .line 724
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

    .line 725
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v1

    int-to-float v3, v9

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_246

    .line 726
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 727
    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 728
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v1

    move v1, v7

    .line 714
    :goto_15c
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v6, v0

    goto :goto_e9

    .line 705
    :cond_161
    const/16 v0, 0x6e

    goto/16 :goto_c0

    .line 722
    :cond_165
    const-string v0, ""

    goto :goto_124

    .line 733
    :cond_168
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21a

    .line 734
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 735
    const/4 v0, 0x0

    .line 736
    const/4 v1, 0x0

    :goto_176
    const/16 v2, 0x168

    if-ge v1, v2, :cond_1c1

    .line 737
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_187

    .line 738
    const/4 v0, 0x0

    .line 736
    :goto_184
    add-int/lit8 v1, v1, 0x1

    goto :goto_176

    .line 741
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

    .line 742
    if-eqz v0, :cond_1b3

    .line 743
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    int-to-float v4, v1

    mul-float/2addr v4, v12

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v12, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_184

    .line 745
    :cond_1b3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    int-to-float v3, v1

    mul-float/2addr v3, v12

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v12, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 746
    const/4 v0, 0x1

    goto :goto_184

    .line 749
    :cond_1c1
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const v1, -0xb293

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 750
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 751
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 752
    sub-float v0, v11, v10

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrCapY:F

    mul-float/2addr v0, v1

    sub-float v2, v11, v0

    .line 753
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const v1, -0xb293

    const/16 v3, 0x99

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 754
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

    .line 755
    const/4 v1, 0x0

    int-to-float v3, v9

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 756
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 758
    :cond_21a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 759
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

    .line 760
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v0

    sub-float v0, v10, v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    invoke-virtual {p1, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 761
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
    .registers 37
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
    if-eqz p2, :cond_55

    move-object/from16 v0, p2

    move-wide/from16 v1, p5

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->anchor(DD)D

    move-result-wide v6

    move-wide v14, v6

    .line 598
    :goto_13
    if-eqz p2, :cond_58

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    sub-double/2addr v8, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    add-double v6, v6, p5

    .line 599
    :goto_22
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    .line 600
    move-wide/from16 v0, p5

    double-to-float v6, v0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->nowS:F

    .line 602
    if-eqz p2, :cond_5b

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    .line 603
    :goto_3a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v8, v6

    :goto_3f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 604
    const/4 v7, 0x2

    aget v6, v6, v7

    float-to-double v6, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v8, v6

    .line 605
    goto :goto_3f

    :cond_55
    move-wide/from16 v14, p5

    .line 597
    goto :goto_13

    :cond_58
    move-wide/from16 v6, p5

    .line 598
    goto :goto_22

    .line 602
    :cond_5b
    const-wide/16 v6, 0x0

    goto :goto_3a

    .line 606
    :cond_5e
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    .line 607
    const/16 v6, 0x168

    new-array v0, v6, [F

    move-object/from16 v18, v0

    .line 608
    const/16 v6, 0x168

    new-array v0, v6, [F

    move-object/from16 v19, v0

    .line 609
    const/16 v6, 0x168

    new-array v0, v6, [Z

    move-object/from16 v20, v0

    .line 610
    const/4 v8, 0x0

    .line 611
    const/4 v9, 0x0

    .line 612
    const/4 v6, 0x0

    move v12, v6

    :goto_7a
    const/16 v6, 0x168

    if-ge v12, v6, :cond_1b0

    .line 613
    int-to-double v6, v12

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    float-to-double v10, v10

    mul-double/2addr v6, v10

    const-wide v10, 0x4076800000000000L    # 360.0

    div-double v22, v6, v10

    .line 614
    const/4 v7, 0x0

    .line 615
    const-wide/16 v10, 0x0

    .line 616
    cmpg-double v6, v22, p5

    if-gtz v6, :cond_135

    .line 617
    :goto_96
    add-int/lit8 v6, v8, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_b6

    add-int/lit8 v6, v8, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    const/4 v13, 0x0

    aget v6, v6, v13

    float-to-double v0, v6

    move-wide/from16 v24, v0

    cmpg-double v6, v24, v22

    if-gtz v6, :cond_b6

    .line 618
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_96

    .line 620
    :cond_b6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e3

    .line 621
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 622
    add-int/lit8 v7, v8, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_132

    add-int/lit8 v7, v8, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/4 v10, 0x0

    aget v7, v7, v10

    float-to-double v10, v7

    :goto_da
    const/4 v7, 0x0

    aget v7, v6, v7

    float-to-double v0, v7

    move-wide/from16 v24, v0

    sub-double v10, v10, v24

    move-object v7, v6

    .line 634
    :cond_e3
    :goto_e3
    if-eqz v7, :cond_1a1

    const/4 v6, 0x2

    aget v6, v7, v6

    float-to-double v0, v6

    move-wide/from16 v24, v0

    div-double v24, v24, v16

    move-wide/from16 v0, v24

    double-to-float v6, v0

    :goto_f0
    aput v6, v18, v12

    .line 635
    if-eqz v7, :cond_1a4

    const/4 v6, 0x3

    aget v6, v7, v6

    :goto_f7
    aput v6, v19, v12

    .line 636
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    if-eqz v7, :cond_1a7

    array-length v6, v7

    const/16 v21, 0x4

    move/from16 v0, v21

    if-le v6, v0, :cond_1a7

    const/4 v6, 0x4

    aget v6, v7, v6

    float-to-int v6, v6

    :goto_10a
    aput v6, v13, v12

    .line 637
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    cmpg-double v6, v22, p5

    if-gtz v6, :cond_1aa

    if-eqz v7, :cond_1aa

    array-length v6, v7

    const/16 v21, 0x5

    move/from16 v0, v21

    if-le v6, v0, :cond_1aa

    const/4 v6, 0x5

    aget v6, v7, v6

    :goto_120
    aput v6, v13, v12

    .line 638
    if-eqz v7, :cond_1ad

    invoke-static {v7, v10, v11}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->critical([FD)Z

    move-result v6

    if-eqz v6, :cond_1ad

    const/4 v6, 0x1

    :goto_12b
    aput-boolean v6, v20, v12

    .line 612
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto/16 :goto_7a

    :cond_132
    move-wide/from16 v10, p5

    .line 622
    goto :goto_da

    .line 624
    :cond_135
    if-eqz p2, :cond_e3

    .line 625
    sub-double v24, v22, p5

    add-double v24, v24, v14

    .line 626
    :goto_13b
    add-int/lit8 v6, v9, 0x1

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_161

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    add-int/lit8 v13, v9, 0x1

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    const/4 v13, 0x0

    aget v6, v6, v13

    float-to-double v0, v6

    move-wide/from16 v26, v0

    cmpg-double v6, v26, v24

    if-gtz v6, :cond_161

    .line 627
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_13b

    .line 629
    :cond_161
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e3

    .line 630
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 631
    add-int/lit8 v7, v9, 0x1

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_19c

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    add-int/lit8 v10, v9, 0x1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/4 v10, 0x0

    aget v7, v7, v10

    float-to-double v10, v7

    :goto_191
    const/4 v7, 0x0

    aget v7, v6, v7

    float-to-double v0, v7

    move-wide/from16 v24, v0

    sub-double v10, v10, v24

    move-object v7, v6

    goto/16 :goto_e3

    :cond_19c
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    goto :goto_191

    .line 634
    :cond_1a1
    const/4 v6, 0x0

    goto/16 :goto_f0

    .line 635
    :cond_1a4
    const/4 v6, 0x0

    goto/16 :goto_f7

    .line 636
    :cond_1a7
    const/4 v6, 0x0

    goto/16 :goto_10a

    .line 637
    :cond_1aa
    const/4 v6, 0x0

    goto/16 :goto_120

    .line 638
    :cond_1ad
    const/4 v6, 0x0

    goto/16 :goto_12b

    .line 641
    :cond_1b0
    const-wide v6, 0x3fe3333333333333L    # 0.6

    const-wide v8, 0x40cc200000000000L    # 14400.0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    float-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 642
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v16, v0

    .line 643
    const/16 v6, 0x168

    new-array v0, v6, [F

    move-object/from16 v17, v0

    .line 644
    const/16 v6, 0x168

    new-array v0, v6, [F

    move-object/from16 v21, v0

    .line 645
    const/4 v6, 0x0

    move v7, v6

    :goto_1dc
    const/16 v6, 0x168

    if-ge v7, v6, :cond_25e

    .line 646
    aget-boolean v6, v20, v7

    if-eqz v6, :cond_1ee

    .line 647
    const/4 v6, 0x0

    aput v6, v17, v7

    .line 648
    const/4 v6, 0x0

    aput v6, v21, v7

    .line 645
    :goto_1ea
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1dc

    .line 651
    :cond_1ee
    const-wide/16 v12, 0x0

    .line 652
    const-wide/16 v10, 0x0

    .line 653
    const-wide/16 v8, 0x0

    .line 654
    const/4 v6, 0x0

    sub-int v22, v7, v16

    move/from16 v0, v22

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_1fd
    const/16 v22, 0x167

    add-int v23, v7, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    if-gt v6, v0, :cond_245

    .line 655
    aget-boolean v22, v20, v6

    if-eqz v22, :cond_210

    .line 654
    :goto_20d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1fd

    .line 658
    :cond_210
    const-wide/high16 v22, -0x4020000000000000L    # -0.5

    sub-int v24, v7, v6

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    sub-int v24, v7, v6

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    mul-double v24, v14, v14

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->exp(D)D

    move-result-wide v22

    .line 659
    add-double v12, v12, v22

    .line 660
    aget v24, v18, v6

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v22

    add-double v10, v10, v24

    .line 661
    aget v24, v19, v6

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v8, v8, v22

    goto :goto_20d

    .line 663
    :cond_245
    const-wide/16 v22, 0x0

    cmpl-double v6, v12, v22

    if-lez v6, :cond_25a

    div-double/2addr v10, v12

    double-to-float v6, v10

    :goto_24d
    aput v6, v17, v7

    .line 664
    const-wide/16 v10, 0x0

    cmpl-double v6, v12, v10

    if-lez v6, :cond_25c

    div-double/2addr v8, v12

    double-to-float v6, v8

    :goto_257
    aput v6, v21, v7

    goto :goto_1ea

    .line 663
    :cond_25a
    const/4 v6, 0x0

    goto :goto_24d

    .line 664
    :cond_25c
    const/4 v6, 0x0

    goto :goto_257

    .line 667
    :cond_25e
    const/4 v6, 0x0

    move v7, v6

    :goto_260
    const/16 v6, 0x168

    if-ge v7, v6, :cond_2a0

    .line 668
    const/4 v6, 0x0

    add-int/lit8 v8, v7, -0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    aget v6, v17, v6

    .line 669
    const/16 v8, 0x167

    add-int/lit8 v9, v7, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aget v8, v17, v8

    .line 670
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hv:[F

    aget-boolean v10, v20, v7

    if-eqz v10, :cond_292

    add-float/2addr v6, v8

    const v8, 0x3df5c28f    # 0.12f

    mul-float/2addr v6, v8

    :goto_284
    aput v6, v9, v7

    .line 671
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->cv:[F

    aget v8, v21, v7

    aput v8, v6, v7

    .line 667
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_260

    .line 670
    :cond_292
    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v6, v10

    const/high16 v10, 0x3f000000    # 0.5f

    aget v11, v17, v7

    mul-float/2addr v10, v11

    add-float/2addr v6, v10

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v8, v10

    add-float/2addr v6, v8

    goto :goto_284

    .line 673
    :cond_2a0
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->invalidate()V

    .line 674
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
