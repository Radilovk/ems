.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.super Ljava/lang/Object;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BuildGrid;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Path2Target;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Composition;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow1;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MiniNorm;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormGrow;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$NormBar;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$ChangeGrow;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Change;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MeterGrow;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reach;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Trend;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Sweep;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Gauge;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Grow;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Radar;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Reveal;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleViews$OnSegment;
    }
.end annotation


# static fields
.field public static final LAYER_FAT:I = 0x1

.field public static final LAYER_MUSCLE:I = 0x0

.field public static final LAYER_READY:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deltaCol(DZDD)I
    .registers 15

    .prologue
    .line 118
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 119
    const/4 v0, 0x0

    .line 126
    :goto_7
    return v0

    .line 121
    :cond_8
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_14

    .line 122
    const v0, -0x6b5c48

    goto :goto_7

    .line 124
    :cond_14
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double/2addr v2, p3

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    sub-double v6, p5, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v1, v0

    .line 125
    const-wide/16 v2, 0x0

    cmpl-double v0, p0, v2

    if-lez v0, :cond_4b

    const/4 v0, 0x1

    :goto_33
    if-ne v0, p2, :cond_4d

    const/4 v0, 0x1

    .line 126
    :goto_36
    const v2, -0x6b5c48

    if-eqz v0, :cond_4f

    const v0, -0xdd3aa2

    :goto_3e
    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    goto :goto_7

    .line 125
    :cond_4b
    const/4 v0, 0x0

    goto :goto_33

    :cond_4d
    const/4 v0, 0x0

    goto :goto_36

    .line 126
    :cond_4f
    const v0, -0xa61f5

    goto :goto_3e
.end method

.method static dp(Landroid/view/View;F)F
    .registers 3

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method static drawFit(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFLandroid/view/View;)V
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 52
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 71
    :cond_b
    :goto_b
    return-void

    .line 55
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    .line 56
    invoke-static {p6, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->dp(Landroid/view/View;F)F

    move-result v3

    .line 57
    invoke-virtual {p6}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v5, v3

    sub-float/2addr v0, v1

    .line 58
    cmpl-float v1, p5, v4

    if-lez v1, :cond_24

    .line 59
    invoke-static {v0, p5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 61
    :cond_24
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 62
    cmpl-float v4, v0, v4

    if-lez v4, :cond_67

    cmpl-float v4, v1, v0

    if-lez v4, :cond_67

    .line 63
    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 66
    :goto_39
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    .line 67
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v1, v4, :cond_5e

    div-float v1, v0, v5

    sub-float v1, p3, v1

    .line 68
    :goto_45
    invoke-virtual {p6}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    sub-float v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 69
    sub-float/2addr v0, v1

    add-float/2addr v0, p3

    invoke-virtual {p0, p2, v0, p4, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 70
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_b

    .line 67
    :cond_5e
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v1, v4, :cond_65

    sub-float v1, p3, v0

    goto :goto_45

    :cond_65
    move v1, p3

    goto :goto_45

    :cond_67
    move v0, v1

    goto :goto_39
.end method

.method public static fatCol(D)I
    .registers 4

    .prologue
    const/4 v1, 0x4

    .line 106
    new-array v0, v1, [F

    fill-array-data v0, :array_10

    new-array v1, v1, [I

    fill-array-data v1, :array_1c

    invoke-static {v0, v1, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->lerp([F[ID)I

    move-result v0

    return v0

    :array_10
    .array-data 4
        0x42aa0000    # 85.0f
        0x42e00000    # 112.0f
        0x43070000    # 135.0f
        0x43250000    # 165.0f
    .end array-data

    :array_1c
    .array-data 4
        -0xdd3aa2
        -0x7b33ea
        -0xa61f5
        -0x10bbbc
    .end array-data
.end method

.method public static layerCol(ID)I
    .registers 4

    .prologue
    .line 136
    if-nez p0, :cond_7

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->muscleCol(D)I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->fatCol(D)I

    move-result v0

    goto :goto_6

    :cond_f
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->swellCol(D)I

    move-result v0

    goto :goto_6
.end method

.method static lerp([F[ID)I
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    const v0, -0x948d80

    .line 95
    :goto_a
    return v0

    .line 87
    :cond_b
    aget v0, p0, v2

    float-to-double v0, v0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_15

    .line 88
    aget v0, p1, v2

    goto :goto_a

    .line 90
    :cond_15
    const/4 v0, 0x1

    :goto_16
    array-length v1, p0

    if-ge v0, v1, :cond_40

    .line 91
    aget v1, p0, v0

    float-to-double v2, v1

    cmpg-double v1, p2, v2

    if-gtz v1, :cond_3d

    .line 92
    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    aget v2, p1, v0

    add-int/lit8 v3, v0, -0x1

    aget v3, p0, v3

    float-to-double v4, v3

    sub-double v4, p2, v4

    aget v3, p0, v0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    sub-float v0, v3, v0

    float-to-double v6, v0

    div-double/2addr v4, v6

    double-to-float v0, v4

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    goto :goto_a

    .line 90
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 95
    :cond_40
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    goto :goto_a
.end method

.method public static muscleCol(D)I
    .registers 4

    .prologue
    const/4 v1, 0x5

    .line 100
    new-array v0, v1, [F

    fill-array-data v0, :array_10

    new-array v1, v1, [I

    fill-array-data v1, :array_1e

    invoke-static {v0, v1, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->lerp([F[ID)I

    move-result v0

    return v0

    :array_10
    .array-data 4
        0x42960000    # 75.0f
        0x42b40000    # 90.0f
        0x42c80000    # 100.0f
        0x42e60000    # 115.0f
        0x43020000    # 130.0f
    .end array-data

    :array_1e
    .array-data 4
        -0x68cea
        -0x154cf8
        -0xdd3aa2
        -0xef467f
        -0xf9492c
    .end array-data
.end method

.method public static reachCol(D)I
    .registers 4

    .prologue
    const/4 v1, 0x3

    .line 131
    new-array v0, v1, [F

    fill-array-data v0, :array_10

    new-array v1, v1, [I

    fill-array-data v1, :array_1a

    invoke-static {v0, v1, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->lerp([F[ID)I

    move-result v0

    return v0

    :array_10
    .array-data 4
        0x3f6147ae    # 0.88f
        0x3f70a3d7    # 0.94f
        0x3f7d70a4    # 0.99f
    .end array-data

    :array_1a
    .array-data 4
        -0x68cea
        -0x154cf8
        -0xdd3aa2
    .end array-data
.end method

.method static signed(D)Ljava/lang/String;
    .registers 10

    .prologue
    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_30

    const-string v0, "+"

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_30
    const-string v0, "\u2212"

    goto :goto_d
.end method

.method static sp(Landroid/view/View;F)F
    .registers 7

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 79
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_21

    const v2, 0x3fa66666    # 1.3f

    iget v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 80
    :cond_21
    const v2, 0x3f8f5c29    # 1.12f

    mul-float/2addr v2, p1

    mul-float/2addr v0, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public static swellCol(D)I
    .registers 4

    .prologue
    const/4 v1, 0x3

    .line 112
    new-array v0, v1, [F

    fill-array-data v0, :array_10

    new-array v1, v1, [I

    fill-array-data v1, :array_1a

    invoke-static {v0, v1, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews;->lerp([F[ID)I

    move-result v0

    return v0

    :array_10
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f99999a    # 1.2f
        0x40200000    # 2.5f
    .end array-data

    :array_1a
    .array-data 4
        -0xdd3aa2
        -0xa61f5
        -0x10bbbc
    .end array-data
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
