.class public final Lcom/isaigu/gymapp/ai/AutoViews$Vital;
.super Landroid/view/View;
.source "AutoViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vital"
.end annotation


# static fields
.field private static final HEART_RED:I = -0xc4b9


# instance fields
.field private color:I

.field private final glow:Landroid/graphics/Paint;

.field private final heart:Landroid/graphics/Paint;

.field private hr:I

.field private final num:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 766
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 759
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->glow:Landroid/graphics/Paint;

    .line 760
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    .line 761
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->num:Landroid/graphics/Paint;

    .line 767
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    const v1, 0x400ccccd    # 2.2f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 768
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 769
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->num:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 770
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->num:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 771
    return-void
.end method

.method private static heartPath(FFF)Landroid/graphics/Path;
    .registers 15

    .prologue
    const v11, 0x3e0f5c29    # 0.14f

    const v10, 0x3d4ccccd    # 0.05f

    const v9, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f000000    # 0.5f

    const v7, 0x3eae147b    # 0.34f

    .line 820
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 821
    mul-float v1, v8, p2

    add-float/2addr v1, p0

    mul-float v2, v9, p2

    add-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 822
    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, p2

    add-float/2addr v1, p0

    const v2, 0x3f1eb852    # 0.62f

    mul-float/2addr v2, p2

    add-float/2addr v2, p1

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v3, p2

    sub-float v3, p0, v3

    mul-float v4, v7, p2

    add-float/2addr v4, p1

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, p2

    add-float/2addr v5, p0

    const v6, 0x3e23d70a    # 0.16f

    mul-float/2addr v6, p2

    add-float/2addr v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 823
    mul-float v1, v7, p2

    add-float/2addr v1, p0

    mul-float v2, v10, p2

    add-float/2addr v2, p1

    const v3, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v3, p2

    add-float/2addr v3, p0

    mul-float v4, v11, p2

    add-float/2addr v4, p1

    mul-float v5, v8, p2

    add-float/2addr v5, p0

    const v6, 0x3e8a3d71    # 0.27f

    mul-float/2addr v6, p2

    add-float/2addr v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 824
    const v1, 0x3f07ae14    # 0.53f

    mul-float/2addr v1, p2

    add-float/2addr v1, p0

    mul-float v2, v11, p2

    add-float/2addr v2, p1

    const v3, 0x3f28f5c3    # 0.66f

    mul-float/2addr v3, p2

    add-float/2addr v3, p0

    mul-float v4, v10, p2

    add-float/2addr v4, p1

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, p2

    add-float/2addr v5, p0

    const v6, 0x3e23d70a    # 0.16f

    mul-float/2addr v6, p2

    add-float/2addr v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 825
    const v1, 0x3f828f5c    # 1.02f

    mul-float/2addr v1, p2

    add-float/2addr v1, p0

    mul-float v2, v7, p2

    add-float/2addr v2, p1

    mul-float v3, v9, p2

    add-float/2addr v3, p0

    const v4, 0x3f1eb852    # 0.62f

    mul-float/2addr v4, p2

    add-float/2addr v4, p1

    mul-float v5, v8, p2

    add-float/2addr v5, p0

    mul-float v6, v9, p2

    add-float/2addr v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 826
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 827
    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->getWidth()I

    move-result v9

    .line 785
    int-to-float v0, v9

    const v1, 0x3f1eb852    # 0.62f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 786
    const/high16 v0, 0x3f800000    # 1.0f

    .line 787
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-lez v1, :cond_47

    .line 788
    const-wide/32 v0, 0xea60

    const/16 v2, 0x1e

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    rem-long/2addr v2, v0

    long-to-float v2, v2

    long-to-float v0, v0

    div-float v0, v2, v0

    .line 790
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3df5c28f    # 0.12f

    neg-float v0, v0

    const/high16 v3, 0x41100000    # 9.0f

    mul-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 791
    const-wide/16 v2, 0x28

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->postInvalidateDelayed(J)V

    .line 793
    :cond_47
    mul-float v7, v10, v0

    .line 794
    int-to-float v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 795
    const v2, 0x3f0ccccd    # 0.55f

    mul-float/2addr v2, v10

    .line 796
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-lez v3, :cond_9d

    .line 798
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    const v3, 0x3df5c28f    # 0.12f

    div-float v5, v0, v3

    .line 799
    const/high16 v0, 0x3f400000    # 0.75f

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v5

    add-float/2addr v0, v3

    mul-float v3, v10, v0

    .line 800
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->glow:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v6, 0x0

    const/high16 v11, 0x43160000    # 150.0f

    const/high16 v12, 0x42a00000    # 80.0f

    mul-float/2addr v5, v12

    add-float/2addr v5, v11

    float-to-int v5, v5

    const/16 v11, 0xff

    const/16 v12, 0x28

    const/16 v13, 0x32

    .line 801
    invoke-static {v5, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v11, 0xff

    const/16 v12, 0x28

    const/16 v13, 0x32

    invoke-static {v6, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 800
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 803
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->glow:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 805
    :cond_9d
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-lez v0, :cond_121

    const v0, -0xc4b9

    :goto_a6
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 806
    const/4 v4, 0x7

    int-to-float v0, v9

    sub-float/2addr v0, v7

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v7, v0

    sub-float v6, v2, v0

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->draw(Landroid/graphics/Canvas;IFFFLandroid/graphics/Paint;)V

    .line 807
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-lez v0, :cond_f0

    .line 808
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 809
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 810
    int-to-float v0, v9

    sub-float/2addr v0, v7

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v7, v1

    sub-float v1, v2, v1

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heartPath(FFF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 811
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 812
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->heart:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 814
    :cond_f0
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->num:Landroid/graphics/Paint;

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-lez v0, :cond_124

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->color:I

    :goto_f8
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 815
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->num:Landroid/graphics/Paint;

    const v1, 0x3f1eb852    # 0.62f

    mul-float/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 816
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-lez v0, :cond_127

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_10e
    int-to-float v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v10

    const v3, 0x3f1eb852    # 0.62f

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->num:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 817
    return-void

    .line 805
    :cond_121
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_a6

    .line 814
    :cond_124
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_f8

    .line 816
    :cond_127
    const-string v0, "\u2014"

    goto :goto_10e
.end method

.method public set(II)V
    .registers 4

    .prologue
    .line 775
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->color:I

    if-eq p2, v0, :cond_f

    .line 776
    :cond_8
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->hr:I

    .line 777
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->color:I

    .line 778
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Vital;->invalidate()V

    .line 780
    :cond_f
    return-void
.end method
