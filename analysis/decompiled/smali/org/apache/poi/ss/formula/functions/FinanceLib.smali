.class public final Lorg/apache/poi/ss/formula/functions/FinanceLib;
.super Ljava/lang/Object;
.source "FinanceLib.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static fv(DDDDZ)D
    .locals 8
    .param p0, "r"    # D
    .param p2, "n"    # D
    .param p4, "y"    # D
    .param p6, "p"    # D
    .param p8, "t"    # Z

    .prologue
    .line 77
    const-wide/16 v2, 0x0

    .line 78
    .local v2, "retval":D
    const-wide/16 v4, 0x0

    cmpl-double v4, p0, v4

    if-nez v4, :cond_0

    .line 79
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double v6, p2, p4

    add-double/2addr v6, p6

    mul-double v2, v4, v6

    .line 87
    :goto_0
    return-wide v2

    .line 82
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v0, p0, v4

    .line 83
    .local v0, "r1":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double v6, v4, v6

    if-eqz p8, :cond_1

    move-wide v4, v0

    :goto_1
    mul-double/2addr v4, v6

    mul-double/2addr v4, p4

    div-double/2addr v4, p0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, p6

    sub-double v2, v4, v6

    goto :goto_0

    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_1
.end method

.method public static nper(DDDDZ)D
    .locals 18
    .param p0, "r"    # D
    .param p2, "y"    # D
    .param p4, "p"    # D
    .param p6, "f"    # D
    .param p8, "t"    # Z

    .prologue
    .line 166
    const-wide/16 v10, 0x0

    .line 167
    .local v10, "retval":D
    const-wide/16 v14, 0x0

    cmpl-double v14, p0, v14

    if-nez v14, :cond_0

    .line 168
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    add-double v16, p6, p4

    mul-double v14, v14, v16

    div-double v10, v14, p2

    .line 181
    :goto_0
    return-wide v10

    .line 170
    :cond_0
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double v8, p0, v14

    .line 171
    .local v8, "r1":D
    if-eqz p8, :cond_1

    move-wide v14, v8

    :goto_1
    mul-double v14, v14, p2

    div-double v12, v14, p0

    .line 172
    .local v12, "ryr":D
    sub-double v14, v12, p6

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_2

    sub-double v14, p6, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 175
    .local v2, "a1":D
    :goto_2
    sub-double v14, v12, p6

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_3

    move-wide/from16 v0, p4

    neg-double v14, v0

    sub-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 178
    .local v4, "a2":D
    :goto_3
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    .line 179
    .local v6, "a3":D
    sub-double v14, v2, v4

    div-double v10, v14, v6

    goto :goto_0

    .line 171
    .end local v2    # "a1":D
    .end local v4    # "a2":D
    .end local v6    # "a3":D
    .end local v12    # "ryr":D
    :cond_1
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .line 172
    .restart local v12    # "ryr":D
    :cond_2
    sub-double v14, v12, p6

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    goto :goto_2

    .line 175
    .restart local v2    # "a1":D
    :cond_3
    add-double v14, p4, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    goto :goto_3
.end method

.method public static npv(D[D)D
    .locals 10
    .param p0, "r"    # D
    .param p2, "cfs"    # [D

    .prologue
    .line 125
    const-wide/16 v2, 0x0

    .line 126
    .local v2, "npv":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double v4, p0, v8

    .line 127
    .local v4, "r1":D
    move-wide v6, v4

    .line 128
    .local v6, "trate":D
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p2

    .local v1, "iSize":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 129
    aget-wide v8, p2, v0

    div-double/2addr v8, v6

    add-double/2addr v2, v8

    .line 130
    mul-double/2addr v6, v4

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-wide v2
.end method

.method public static pmt(DDDDZ)D
    .locals 12
    .param p0, "r"    # D
    .param p2, "n"    # D
    .param p4, "p"    # D
    .param p6, "f"    # D
    .param p8, "t"    # Z

    .prologue
    .line 144
    const-wide/16 v2, 0x0

    .line 145
    .local v2, "retval":D
    const-wide/16 v4, 0x0

    cmpl-double v4, p0, v4

    if-nez v4, :cond_0

    .line 146
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    add-double v6, p6, p4

    mul-double/2addr v4, v6

    div-double v2, v4, p2

    .line 154
    :goto_0
    return-wide v2

    .line 149
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v0, p0, v4

    .line 150
    .local v0, "r1":D
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, p4

    add-double v4, v4, p6

    mul-double v6, v4, p0

    if-eqz p8, :cond_1

    move-wide v4, v0

    :goto_1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    mul-double/2addr v4, v8

    div-double v2, v6, v4

    goto :goto_0

    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_1
.end method

.method public static pv(DDDDZ)D
    .locals 8
    .param p0, "r"    # D
    .param p2, "n"    # D
    .param p4, "y"    # D
    .param p6, "f"    # D
    .param p8, "t"    # Z

    .prologue
    .line 102
    const-wide/16 v2, 0x0

    .line 103
    .local v2, "retval":D
    const-wide/16 v4, 0x0

    cmpl-double v4, p0, v4

    if-nez v4, :cond_0

    .line 104
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double v6, p2, p4

    add-double/2addr v6, p6

    mul-double v2, v4, v6

    .line 112
    :goto_0
    return-wide v2

    .line 107
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v0, p0, v4

    .line 108
    .local v0, "r1":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double v6, v4, p0

    if-eqz p8, :cond_1

    move-wide v4, v0

    :goto_1
    mul-double/2addr v4, v6

    mul-double/2addr v4, p4

    sub-double/2addr v4, p6

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double v2, v4, v6

    goto :goto_0

    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_1
.end method
