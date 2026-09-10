.class final Lorg/apache/poi/ss/formula/functions/StatsLib;
.super Ljava/lang/Object;
.source "StatsLib.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static avedev([D)D
    .locals 10
    .param p0, "v"    # [D

    .line 39
    const-wide/16 v0, 0x0

    .line 40
    .local v0, "r":D
    const-wide/16 v2, 0x0

    .line 41
    .local v2, "m":D
    const-wide/16 v4, 0x0

    .line 42
    .local v4, "s":D
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, p0

    .local v7, "iSize":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 43
    aget-wide v8, p0, v6

    add-double/2addr v4, v8

    .line 42
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 45
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_0
    array-length v6, p0

    int-to-double v6, v6

    div-double v2, v4, v6

    .line 46
    const-wide/16 v4, 0x0

    .line 47
    const/4 v6, 0x0

    .restart local v6    # "i":I
    array-length v7, p0

    .restart local v7    # "iSize":I
    :goto_1
    if-ge v6, v7, :cond_1

    .line 48
    aget-wide v8, p0, v6

    sub-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 47
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 50
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_1
    array-length v6, p0

    int-to-double v6, v6

    div-double v0, v4, v6

    .line 51
    return-wide v0
.end method

.method public static devsq([D)D
    .locals 13
    .param p0, "v"    # [D

    .line 94
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 95
    .local v0, "r":D
    if-eqz p0, :cond_3

    array-length v2, p0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    .line 96
    const-wide/16 v4, 0x0

    .line 97
    .local v4, "m":D
    const-wide/16 v6, 0x0

    .line 98
    .local v6, "s":D
    array-length v2, p0

    .line 99
    .local v2, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_0

    .line 100
    aget-wide v9, p0, v8

    add-double/2addr v6, v9

    .line 99
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 102
    .end local v8    # "i":I
    :cond_0
    int-to-double v8, v2

    div-double v4, v6, v8

    .line 103
    const-wide/16 v6, 0x0

    .line 104
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    if-ge v8, v2, :cond_1

    .line 105
    aget-wide v9, p0, v8

    sub-double/2addr v9, v4

    aget-wide v11, p0, v8

    sub-double/2addr v11, v4

    mul-double v9, v9, v11

    add-double/2addr v6, v9

    .line 104
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 108
    .end local v8    # "i":I
    :cond_1
    if-ne v2, v3, :cond_2

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_2
    move-wide v8, v6

    :goto_2
    move-wide v0, v8

    .line 112
    .end local v2    # "n":I
    .end local v4    # "m":D
    .end local v6    # "s":D
    :cond_3
    return-wide v0
.end method

.method public static kthLargest([DI)D
    .locals 4
    .param p0, "v"    # [D
    .param p1, "k"    # I

    .line 124
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 125
    .local v0, "r":D
    add-int/lit8 v2, p1, -0x1

    .line 126
    .local v2, "index":I
    if-eqz p0, :cond_0

    array-length v3, p0

    if-le v3, v2, :cond_0

    if-ltz v2, :cond_0

    .line 127
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    .line 128
    array-length v3, p0

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-wide v0, p0, v3

    .line 130
    :cond_0
    return-wide v0
.end method

.method public static kthSmallest([DI)D
    .locals 4
    .param p0, "v"    # [D
    .param p1, "k"    # I

    .line 144
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 145
    .local v0, "r":D
    add-int/lit8 v2, p1, -0x1

    .line 146
    .local v2, "index":I
    if-eqz p0, :cond_0

    array-length v3, p0

    if-le v3, v2, :cond_0

    if-ltz v2, :cond_0

    .line 147
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    .line 148
    aget-wide v0, p0, v2

    .line 150
    :cond_0
    return-wide v0
.end method

.method public static median([D)D
    .locals 8
    .param p0, "v"    # [D

    .line 79
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 81
    .local v0, "r":D
    if-eqz p0, :cond_1

    array-length v2, p0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 82
    array-length v2, p0

    .line 83
    .local v2, "n":I
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    .line 84
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_0

    div-int/lit8 v4, v2, 0x2

    aget-wide v4, p0, v4

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v6, v3

    aget-wide v6, p0, v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    goto :goto_0

    :cond_0
    div-int/lit8 v3, v2, 0x2

    aget-wide v4, p0, v3

    :goto_0
    move-wide v0, v4

    .line 89
    .end local v2    # "n":I
    :cond_1
    return-wide v0
.end method

.method public static stdev([D)D
    .locals 6
    .param p0, "v"    # [D

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

    move-result-wide v4

    array-length v2, p0

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 59
    :cond_0
    return-wide v0
.end method

.method public static var([D)D
    .locals 6
    .param p0, "v"    # [D

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

    move-result-wide v4

    array-length v2, p0

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double v0, v4, v2

    .line 67
    :cond_0
    return-wide v0
.end method

.method public static varp([D)D
    .locals 6
    .param p0, "v"    # [D

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
