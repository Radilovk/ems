.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.super Ljava/lang/Object;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
    .line 82
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 83
    const/4 v0, 0x0

    .line 90
    :goto_7
    return v0

    .line 85
    :cond_8
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p3

    if-gez v0, :cond_14

    .line 86
    const v0, -0x6b5c48

    goto :goto_7

    .line 88
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

    .line 89
    const-wide/16 v2, 0x0

    cmpl-double v0, p0, v2

    if-lez v0, :cond_4b

    const/4 v0, 0x1

    :goto_33
    if-ne v0, p2, :cond_4d

    const/4 v0, 0x1

    .line 90
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

    .line 89
    :cond_4b
    const/4 v0, 0x0

    goto :goto_33

    :cond_4d
    const/4 v0, 0x0

    goto :goto_36

    .line 90
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

.method public static fatCol(D)I
    .registers 4

    .prologue
    const/4 v1, 0x4

    .line 70
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
    .line 100
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

    .line 48
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    const v0, -0x948d80

    .line 59
    :goto_a
    return v0

    .line 51
    :cond_b
    aget v0, p0, v2

    float-to-double v0, v0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_15

    .line 52
    aget v0, p1, v2

    goto :goto_a

    .line 54
    :cond_15
    const/4 v0, 0x1

    :goto_16
    array-length v1, p0

    if-ge v0, v1, :cond_40

    .line 55
    aget v1, p0, v0

    float-to-double v2, v1

    cmpg-double v1, p2, v2

    if-gtz v1, :cond_3d

    .line 56
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

    .line 54
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 59
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

    .line 64
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

    .line 95
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
    .line 626
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

.method public static swellCol(D)I
    .registers 4

    .prologue
    const/4 v1, 0x3

    .line 76
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
