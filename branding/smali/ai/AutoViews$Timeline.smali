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
.field private static final N:I = 0x1e0


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

    const/16 v1, 0x1e0

    const/4 v2, 0x1

    .line 774
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 755
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    .line 756
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    .line 757
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    .line 758
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    .line 759
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    .line 760
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hv:[F

    .line 761
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->cv:[F

    .line 762
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    .line 764
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    .line 765
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    .line 766
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    .line 767
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    .line 768
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    .line 771
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrCapY:F

    .line 775
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 776
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 777
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 778
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 779
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 780
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 781
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 782
    return-void
.end method

.method private static at(Ljava/util/List;DI)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;DI)I"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 797
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 798
    :goto_6
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    aget v0, v0, v4

    float-to-double v2, v0

    cmpg-double v0, v2, p1

    if-gtz v0, :cond_21

    .line 799
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 801
    :cond_21
    return v1
.end method

.method private static value(Ljava/util/List;IDI)F
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;IDI)F"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    .line 806
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 807
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1d

    array-length v1, v0

    const/4 v4, 0x7

    if-lt v1, v4, :cond_1d

    const/4 v1, 0x6

    aget v1, v0, v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_20

    .line 808
    :cond_1d
    aget v0, v0, p4

    .line 813
    :goto_1f
    return v0

    .line 810
    :cond_20
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 811
    aget v4, v1, v8

    aget v5, v0, v8

    sub-float/2addr v4, v5

    float-to-double v4, v4

    .line 812
    cmpl-double v6, v4, v2

    if-lez v6, :cond_43

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aget v8, v0, v8

    float-to-double v8, v8

    sub-double v8, p2, v8

    div-double v4, v8, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 813
    :cond_43
    aget v4, v0, p4

    float-to-double v4, v4

    aget v1, v1, p4

    aget v0, v0, p4

    sub-float v0, v1, v0

    float-to-double v0, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    double-to-float v0, v0

    goto :goto_1f
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->getWidth()I

    move-result v9

    .line 871
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->getHeight()I

    move-result v8

    .line 872
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v10

    .line 873
    int-to-float v0, v8

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    sub-float v11, v0, v1

    .line 874
    int-to-float v0, v9

    const/high16 v1, 0x43f00000    # 480.0f

    div-float v12, v0, v1

    .line 875
    const/16 v0, 0x1e0

    new-array v5, v0, [I

    .line 876
    const/16 v0, 0x1e0

    new-array v6, v0, [F

    .line 877
    const/4 v0, 0x0

    :goto_25
    const/16 v1, 0x1e0

    if-ge v0, v1, :cond_3e

    .line 878
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->cv:[F

    aget v1, v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoViews;->heat(D)I

    move-result v1

    aput v1, v5, v0

    .line 879
    int-to-float v1, v0

    const v2, 0x43ef8000    # 479.0f

    div-float/2addr v1, v2

    aput v1, v6, v0

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 881
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

    .line 882
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 883
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 884
    const/4 v0, 0x0

    :goto_5a
    const/16 v1, 0x1e0

    if-ge v0, v1, :cond_7c

    .line 885
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

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 887
    :cond_7c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    int-to-float v1, v9

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 888
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 889
    int-to-float v0, v9

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->nowS:F

    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v13, v0, v1

    .line 890
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 891
    const/4 v0, 0x0

    const/4 v1, 0x0

    int-to-float v2, v8

    invoke-virtual {p1, v0, v1, v13, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 892
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 893
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 894
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 895
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 896
    const/4 v0, 0x0

    int-to-float v1, v9

    int-to-float v2, v8

    invoke-virtual {p1, v13, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 897
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-eqz v0, :cond_161

    const/16 v0, 0x5a

    :goto_c0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 898
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->area:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 899
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 901
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 902
    const/4 v1, 0x0

    int-to-float v3, v9

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v11

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 904
    const/4 v1, -0x1

    .line 905
    const/high16 v6, -0x40800000    # -1.0f

    .line 906
    const/4 v0, 0x0

    move v8, v0

    :goto_e9
    const/16 v0, 0x1e0

    if-ge v8, v0, :cond_168

    .line 907
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    aget v0, v0, v8

    if-eq v0, v1, :cond_24a

    .line 908
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    aget v7, v0, v8

    .line 909
    int-to-float v0, v8

    mul-float v1, v0, v12

    .line 910
    if-lez v8, :cond_119

    .line 911
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v3, 0x88

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 912
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v0

    sub-float v2, v10, v0

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->sep:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 914
    :cond_119
    if-ltz v7, :cond_165

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_165

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    aget-object v0, v0, v7

    .line 916
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

    .line 917
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v1

    int-to-float v3, v9

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_246

    .line 918
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 919
    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 920
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->txt:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v1

    move v1, v7

    .line 906
    :goto_15c
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v6, v0

    goto :goto_e9

    .line 897
    :cond_161
    const/16 v0, 0x6e

    goto/16 :goto_c0

    .line 914
    :cond_165
    const-string v0, ""

    goto :goto_124

    .line 925
    :cond_168
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21a

    .line 926
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 927
    const/4 v0, 0x0

    .line 928
    const/4 v1, 0x0

    :goto_176
    const/16 v2, 0x1e0

    if-ge v1, v2, :cond_1c1

    .line 929
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_187

    .line 930
    const/4 v0, 0x0

    .line 928
    :goto_184
    add-int/lit8 v1, v1, 0x1

    goto :goto_176

    .line 933
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

    .line 934
    if-eqz v0, :cond_1b3

    .line 935
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    int-to-float v4, v1

    mul-float/2addr v4, v12

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v12, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_184

    .line 937
    :cond_1b3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    int-to-float v3, v1

    mul-float/2addr v3, v12

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v12, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 938
    const/4 v0, 0x1

    goto :goto_184

    .line 941
    :cond_1c1
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const v1, -0xb293

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 942
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 943
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 944
    sub-float v0, v11, v10

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrCapY:F

    mul-float/2addr v0, v1

    sub-float v2, v11, v0

    .line 945
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const v1, -0xb293

    const/16 v3, 0x99

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 946
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

    .line 947
    const/4 v1, 0x0

    int-to-float v3, v9

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 948
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLine:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 950
    :cond_21a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 951
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

    .line 952
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v0

    sub-float v0, v10, v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoViews;->dp(Landroid/view/View;F)F

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->now:Landroid/graphics/Paint;

    invoke-virtual {p1, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 953
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
    .line 822
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->names:[Ljava/lang/String;

    .line 823
    if-eqz p2, :cond_57

    move-object/from16 v0, p2

    move-wide/from16 v1, p5

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->anchor(DD)D

    move-result-wide v6

    move-wide/from16 v18, v6

    .line 824
    :goto_14
    if-eqz p2, :cond_5a

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    sub-double v8, v8, v18

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    add-double v6, v6, p5

    .line 825
    :goto_24
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v6, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    .line 826
    move-wide/from16 v0, p5

    double-to-float v6, v0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->nowS:F

    .line 828
    if-eqz p2, :cond_5d

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->maxLoad:D

    .line 829
    :goto_3c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v8, v6

    :goto_41
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 830
    const/4 v7, 0x2

    aget v6, v6, v7

    float-to-double v6, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v8, v6

    .line 831
    goto :goto_41

    :cond_57
    move-wide/from16 v18, p5

    .line 823
    goto :goto_14

    :cond_5a
    move-wide/from16 v6, p5

    .line 824
    goto :goto_24

    .line 828
    :cond_5d
    const-wide/16 v6, 0x0

    goto :goto_3c

    .line 832
    :cond_60
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff4000000000000L    # 1.25

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    .line 833
    const/16 v16, 0x0

    .line 834
    const/4 v15, 0x0

    .line 835
    const/4 v6, 0x0

    move/from16 v17, v6

    :goto_72
    const/16 v6, 0x1e0

    move/from16 v0, v17

    if-ge v0, v6, :cond_149

    .line 836
    move/from16 v0, v17

    int-to-double v6, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->totalS:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x407e000000000000L    # 480.0

    div-double v10, v6, v8

    .line 837
    const/4 v13, 0x0

    .line 838
    const/4 v7, 0x0

    .line 840
    cmpg-double v6, v10, p5

    if-gtz v6, :cond_df

    .line 841
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_14d

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    const/4 v8, 0x0

    aget v6, v6, v8

    float-to-double v8, v6

    cmpg-double v6, v8, v10

    if-gtz v6, :cond_14d

    .line 842
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v10, v11, v1}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->at(Ljava/util/List;DI)I

    move-result v6

    move-wide v8, v10

    move v12, v6

    move-object/from16 v14, p1

    move/from16 v16, v6

    .line 852
    :goto_b3
    if-nez v14, :cond_101

    .line 853
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hv:[F

    const/4 v7, 0x0

    aput v7, v6, v17

    .line 854
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->cv:[F

    const/4 v7, 0x0

    aput v7, v6, v17

    .line 855
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    if-lez v17, :cond_ff

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    add-int/lit8 v8, v17, -0x1

    aget v6, v6, v8

    :goto_d1
    aput v6, v7, v17

    .line 856
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    const/4 v7, 0x0

    aput v7, v6, v17

    .line 835
    :goto_da
    add-int/lit8 v6, v17, 0x1

    move/from16 v17, v6

    goto :goto_72

    .line 846
    :cond_df
    if-eqz p2, :cond_14d

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_14d

    .line 847
    sub-double v6, v10, p5

    add-double v6, v6, v18

    .line 848
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-static {v8, v6, v7, v15}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->at(Ljava/util/List;DI)I

    move-result v13

    .line 849
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    move-wide v8, v6

    move v12, v13

    move v15, v13

    .line 850
    goto :goto_b3

    .line 855
    :cond_ff
    const/4 v6, 0x0

    goto :goto_d1

    .line 859
    :cond_101
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 860
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hv:[F

    const/4 v13, 0x2

    invoke-static {v14, v12, v8, v9, v13}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->value(Ljava/util/List;IDI)F

    move-result v13

    float-to-double v0, v13

    move-wide/from16 v22, v0

    div-double v22, v22, v20

    move-wide/from16 v0, v22

    double-to-float v13, v0

    aput v13, v7, v17

    .line 861
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->cv:[F

    const/4 v13, 0x3

    invoke-static {v14, v12, v8, v9, v13}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->value(Ljava/util/List;IDI)F

    move-result v8

    aput v8, v7, v17

    .line 862
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->phase:[I

    array-length v7, v6

    const/4 v9, 0x4

    if-le v7, v9, :cond_145

    const/4 v7, 0x4

    aget v7, v6, v7

    float-to-int v7, v7

    :goto_131
    aput v7, v8, v17

    .line 863
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrv:[F

    cmpg-double v8, v10, p5

    if-gtz v8, :cond_147

    array-length v8, v6

    const/4 v9, 0x5

    if-le v8, v9, :cond_147

    const/4 v8, 0x5

    aget v6, v6, v8

    :goto_142
    aput v6, v7, v17

    goto :goto_da

    .line 862
    :cond_145
    const/4 v7, 0x0

    goto :goto_131

    .line 863
    :cond_147
    const/4 v6, 0x0

    goto :goto_142

    .line 865
    :cond_149
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->invalidate()V

    .line 866
    return-void

    :cond_14d
    move-wide v8, v10

    move v12, v7

    move-object v14, v13

    goto/16 :goto_b3
.end method

.method public setHrScale(II)V
    .registers 6

    .prologue
    .line 786
    if-gt p2, p1, :cond_6

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    .line 793
    :goto_5
    return-void

    .line 790
    :cond_6
    int-to-float v0, p1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrLo:F

    .line 791
    add-int/lit8 v0, p2, 0x8

    int-to-float v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoViews$Timeline;->hrHi:F

    .line 792
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
