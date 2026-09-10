.class public final Lorg/apache/poi/ss/formula/functions/FinanceLib;
.super Ljava/lang/Object;
.source "FinanceLib.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static fv(DDDDZ)D
    .locals 10
    .param p0, "r"    # D
    .param p2, "n"    # D
    .param p4, "y"    # D
    .param p6, "p"    # D
    .param p8, "t"    # Z

    .line 77
    move-wide v0, p2

    const-wide/16 v2, 0x0

    .line 78
    .local v2, "retval":D
    const-wide/16 v4, 0x0

    cmpl-double v6, p0, v4

    if-nez v6, :cond_0

    .line 79
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double v6, v0, p4

    add-double v6, p6, v6

    mul-double v6, v6, v4

    .end local v2    # "retval":D
    .local v6, "retval":D
    goto :goto_0

    .line 82
    .end local v6    # "retval":D
    .restart local v2    # "retval":D
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, p0, v4

    .line 83
    .local v6, "r1":D
    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double v8, v4, v8

    if-eqz p8, :cond_1

    move-wide v4, v6

    :cond_1
    mul-double v8, v8, v4

    mul-double v8, v8, p4

    div-double/2addr v8, p0

    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, p6

    sub-double v2, v8, v4

    move-wide v6, v2

    .line 87
    .end local v2    # "retval":D
    .local v6, "retval":D
    :goto_0
    return-wide v6
.end method

.method public static nper(DDDDZ)D
    .locals 16
    .param p0, "r"    # D
    .param p2, "y"    # D
    .param p4, "p"    # D
    .param p6, "f"    # D
    .param p8, "t"    # Z

    .line 166
    move-wide/from16 v0, p4

    const-wide/16 v2, 0x0

    .line 167
    .local v2, "retval":D
    const-wide/16 v4, 0x0

    cmpl-double v6, p0, v4

    if-nez v6, :cond_0

    .line 168
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    add-double v6, p6, v0

    mul-double v6, v6, v4

    div-double v6, v6, p2

    .end local v2    # "retval":D
    .local v6, "retval":D
    goto :goto_2

    .line 170
    .end local v6    # "retval":D
    .restart local v2    # "retval":D
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v8, p0, v6

    .line 171
    .local v8, "r1":D
    if-eqz p8, :cond_1

    move-wide v6, v8

    :cond_1
    mul-double v6, v6, p2

    div-double v6, v6, p0

    .line 172
    .local v6, "ryr":D
    sub-double v10, v6, p6

    cmpg-double v12, v10, v4

    if-gez v12, :cond_2

    sub-double v10, p6, v6

    goto :goto_0

    :cond_2
    sub-double v10, v6, p6

    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    .line 175
    .local v10, "a1":D
    sub-double v12, v6, p6

    cmpg-double v14, v12, v4

    if-gez v14, :cond_3

    neg-double v4, v0

    sub-double/2addr v4, v6

    goto :goto_1

    :cond_3
    add-double v4, v0, v6

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 178
    .local v4, "a2":D
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    .line 179
    .local v12, "a3":D
    sub-double v14, v10, v4

    div-double v2, v14, v12

    move-wide v6, v2

    .line 181
    .end local v2    # "retval":D
    .end local v4    # "a2":D
    .end local v8    # "r1":D
    .end local v10    # "a1":D
    .end local v12    # "a3":D
    .local v6, "retval":D
    :goto_2
    return-wide v6
.end method

.method public static npv(D[D)D
    .locals 10
    .param p0, "r"    # D
    .param p2, "cfs"    # [D

    .line 125
    const-wide/16 v0, 0x0

    .line 126
    .local v0, "npv":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, p0

    .line 127
    .local v2, "r1":D
    move-wide v4, v2

    .line 128
    .local v4, "trate":D
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, p2

    .local v7, "iSize":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 129
    aget-wide v8, p2, v6

    div-double/2addr v8, v4

    add-double/2addr v0, v8

    .line 130
    mul-double v4, v4, v2

    .line 128
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 132
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_0
    return-wide v0
.end method

.method public static pmt(DDDDZ)D
    .locals 14
    .param p0, "r"    # D
    .param p2, "n"    # D
    .param p4, "p"    # D
    .param p6, "f"    # D
    .param p8, "t"    # Z

    .line 144
    move-wide/from16 v0, p2

    const-wide/16 v2, 0x0

    .line 145
    .local v2, "retval":D
    const-wide/16 v4, 0x0

    cmpl-double v6, p0, v4

    if-nez v6, :cond_0

    .line 146
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    add-double v6, p6, p4

    mul-double v6, v6, v4

    div-double/2addr v6, v0

    .end local v2    # "retval":D
    .local v6, "retval":D
    goto :goto_1

    .line 149
    .end local v6    # "retval":D
    .restart local v2    # "retval":D
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, p0, v4

    .line 150
    .local v6, "r1":D
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, p4

    add-double v8, p6, v8

    mul-double v8, v8, p0

    if-eqz p8, :cond_1

    move-wide v10, v6

    goto :goto_0

    :cond_1
    move-wide v10, v4

    :goto_0
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-double/2addr v4, v12

    mul-double v10, v10, v4

    div-double v2, v8, v10

    move-wide v6, v2

    .line 154
    .end local v2    # "retval":D
    .local v6, "retval":D
    :goto_1
    return-wide v6
.end method

.method public static pv(DDDDZ)D
    .locals 10
    .param p0, "r"    # D
    .param p2, "n"    # D
    .param p4, "y"    # D
    .param p6, "f"    # D
    .param p8, "t"    # Z

    .line 102
    move-wide v0, p2

    const-wide/16 v2, 0x0

    .line 103
    .local v2, "retval":D
    const-wide/16 v4, 0x0

    cmpl-double v6, p0, v4

    if-nez v6, :cond_0

    .line 104
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double v6, v0, p4

    add-double v6, v6, p6

    mul-double v6, v6, v4

    .end local v2    # "retval":D
    .local v6, "retval":D
    goto :goto_0

    .line 107
    .end local v6    # "retval":D
    .restart local v2    # "retval":D
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, p0, v4

    .line 108
    .local v6, "r1":D
    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double v8, v4, v8

    div-double/2addr v8, p0

    if-eqz p8, :cond_1

    move-wide v4, v6

    :cond_1
    mul-double v8, v8, v4

    mul-double v8, v8, p4

    sub-double v8, v8, p6

    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double v2, v8, v4

    move-wide v6, v2

    .line 112
    .end local v2    # "retval":D
    .local v6, "retval":D
    :goto_0
    return-wide v6
.end method
