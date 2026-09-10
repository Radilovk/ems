.class final Lorg/apache/poi/ss/formula/functions/StatsLib;
.super Ljava/lang/Object;
.source "StatsLib.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static avedev([D)D
    .locals 10
    .param p0, "v"    # [D

    .prologue
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .local v4, "r":D
    const-wide/16 v2, 0x0

    .line 41
    .local v2, "m":D
    const-wide/16 v6, 0x0

    .line 42
    .local v6, "s":D
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "iSize":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 43
    aget-wide v8, p0, v0

    add-double/2addr v6, v8

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    array-length v8, p0

    int-to-double v8, v8

    div-double v2, v6, v8

    .line 46
    const-wide/16 v6, 0x0

    .line 47
    const/4 v0, 0x0

    array-length v1, p0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 48
    aget-wide v8, p0, v0

    sub-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    :cond_1
    array-length v8, p0

    int-to-double v8, v8

    div-double v4, v6, v8

    .line 51
    return-wide v4
.end method

.method public static devsq([D)D
    .locals 13
    .param p0, "v"    # [D

    .prologue
    const/4 v12, 0x1

    .line 94
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 95
    .local v4, "r":D
    if-eqz p0, :cond_2

    array-length v8, p0

    if-lt v8, v12, :cond_2

    .line 96
    const-wide/16 v2, 0x0

    .line 97
    .local v2, "m":D
    const-wide/16 v6, 0x0

    .line 98
    .local v6, "s":D
    array-length v1, p0

    .line 99
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 100
    aget-wide v8, p0, v0

    add-double/2addr v6, v8

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    int-to-double v8, v1

    div-double v2, v6, v8

    .line 103
    const-wide/16 v6, 0x0

    .line 104
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 105
    aget-wide v8, p0, v0

    sub-double/2addr v8, v2

    aget-wide v10, p0, v0

    sub-double/2addr v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_1
    if-ne v1, v12, :cond_3

    const-wide/16 v4, 0x0

    .line 112
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "m":D
    .end local v6    # "s":D
    :cond_2
    :goto_2
    return-wide v4

    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v2    # "m":D
    .restart local v6    # "s":D
    :cond_3
    move-wide v4, v6

    .line 108
    goto :goto_2
.end method

.method public static kthLargest([DI)D
    .locals 4
    .param p0, "v"    # [D
    .param p1, "k"    # I

    .prologue
    .line 124
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 125
    .local v2, "r":D
    add-int/lit8 v0, p1, -0x1

    .line 126
    .local v0, "index":I
    if-eqz p0, :cond_0

    array-length v1, p0

    if-le v1, v0, :cond_0

    if-ltz v0, :cond_0

    .line 127
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    .line 128
    array-length v1, p0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, p0, v1

    .line 130
    :cond_0
    return-wide v2
.end method

.method public static kthSmallest([DI)D
    .locals 4
    .param p0, "v"    # [D
    .param p1, "k"    # I

    .prologue
    .line 144
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 145
    .local v2, "r":D
    add-int/lit8 v0, p1, -0x1

    .line 146
    .local v0, "index":I
    if-eqz p0, :cond_0

    array-length v1, p0

    if-le v1, v0, :cond_0

    if-ltz v0, :cond_0

    .line 147
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    .line 148
    aget-wide v2, p0, v0

    .line 150
    :cond_0
    return-wide v2
.end method

.method public static median([D)D
    .locals 8
    .param p0, "v"    # [D

    .prologue
    .line 79
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 81
    .local v2, "r":D
    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v4, 0x1

    if-lt v1, v4, :cond_0

    .line 82
    array-length v0, p0

    .line 83
    .local v0, "n":I
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    .line 84
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    div-int/lit8 v1, v0, 0x2

    aget-wide v4, p0, v1

    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, -0x1

    aget-wide v6, p0, v1

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v2, v4, v6

    .line 89
    .end local v0    # "n":I
    :cond_0
    :goto_0
    return-wide v2

    .line 84
    .restart local v0    # "n":I
    :cond_1
    div-int/lit8 v1, v0, 0x2

    aget-wide v2, p0, v1

    goto :goto_0
.end method

.method public static stdev([D)D
    .locals 6
    .param p0, "v"    # [D

    .prologue
    .line 55
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 56
    .local v0, "r":D
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 57
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/StatsLib;->devsq([D)D

    move-result-wide v2

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 59
    :cond_0
    return-wide v0
.end method

.method public static var([D)D
    .locals 6
    .param p0, "v"    # [D

    .prologue
    .line 63
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 64
    .local v0, "r":D
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 65
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/StatsLib;->devsq([D)D

    move-result-wide v2

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 67
    :cond_0
    return-wide v0
.end method

.method public static varp([D)D
    .locals 6
    .param p0, "v"    # [D

    .prologue
    .line 71
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 72
    .local v0, "r":D
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 73
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/StatsLib;->devsq([D)D

    move-result-wide v2

    array-length v4, p0

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 75
    :cond_0
    return-wide v0
.end method
