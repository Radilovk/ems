.class public Lorg/apache/poi/ss/formula/functions/Finance;
.super Ljava/lang/Object;
.source "Finance.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fv(DIDD)D
    .locals 8
    .param p0, "r"    # D
    .param p2, "nper"    # I
    .param p3, "c"    # D
    .param p5, "pv"    # D

    .line 166
    const/4 v7, 0x0

    move-wide v0, p0

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->fv(DIDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static fv(DIDDI)D
    .locals 12
    .param p0, "r"    # D
    .param p2, "nper"    # I
    .param p3, "pmt"    # D
    .param p5, "pv"    # D
    .param p7, "type"    # I

    .line 156
    move v0, p2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double v3, p0, v1

    int-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, p5

    move/from16 v5, p7

    int-to-double v6, v5

    mul-double v6, v6, p0

    add-double/2addr v6, v1

    mul-double v6, v6, p3

    add-double v8, p0, v1

    int-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v8, v1

    mul-double v6, v6, v8

    div-double/2addr v6, p0

    add-double/2addr v3, v6

    neg-double v1, v3

    .line 157
    .local v1, "fv":D
    return-wide v1
.end method

.method public static ipmt(DIID)D
    .locals 8
    .param p0, "r"    # D
    .param p2, "per"    # I
    .param p3, "nper"    # I
    .param p4, "pv"    # D

    .line 101
    const-wide/16 v6, 0x0

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIIDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ipmt(DIIDD)D
    .locals 9
    .param p0, "r"    # D
    .param p2, "per"    # I
    .param p3, "nper"    # I
    .param p4, "pv"    # D
    .param p6, "fv"    # D

    .line 97
    const/4 v8, 0x0

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v8}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIIDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ipmt(DIIDDI)D
    .locals 9
    .param p0, "r"    # D
    .param p2, "per"    # I
    .param p3, "nper"    # I
    .param p4, "pv"    # D
    .param p6, "fv"    # D
    .param p8, "type"    # I

    .line 91
    add-int/lit8 v8, p2, -0x1

    move-wide v0, p0

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDDI)D

    move-result-wide v3

    move v2, v8

    move-wide v5, p4

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->fv(DIDDI)D

    move-result-wide v0

    mul-double v0, v0, p0

    .line 92
    .local v0, "ipmt":D
    const/4 v2, 0x1

    move/from16 v3, p8

    if-ne v3, v2, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, p0

    div-double/2addr v0, v4

    .line 93
    :cond_0
    return-wide v0
.end method

.method public static pmt(DID)D
    .locals 7
    .param p0, "r"    # D
    .param p2, "nper"    # I
    .param p3, "pv"    # D

    .line 63
    const-wide/16 v5, 0x0

    move-wide v0, p0

    move v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static pmt(DIDD)D
    .locals 8
    .param p0, "r"    # D
    .param p2, "nper"    # I
    .param p3, "pv"    # D
    .param p5, "fv"    # D

    .line 54
    const/4 v7, 0x0

    move-wide v0, p0

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static pmt(DIDDI)D
    .locals 14
    .param p0, "r"    # D
    .param p2, "nper"    # I
    .param p3, "pv"    # D
    .param p5, "fv"    # D
    .param p7, "type"    # I

    .line 43
    move-wide v0, p0

    move/from16 v2, p2

    neg-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double v7, v0, v5

    int-to-double v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, p3

    add-double v7, v7, p5

    mul-double v3, v3, v7

    move/from16 v7, p7

    int-to-double v8, v7

    mul-double v8, v8, v0

    add-double/2addr v8, v5

    add-double v10, v0, v5

    int-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v10, v5

    mul-double v8, v8, v10

    div-double/2addr v3, v8

    .line 44
    .local v3, "pmt":D
    return-wide v3
.end method

.method public static ppmt(DIID)D
    .locals 4
    .param p0, "r"    # D
    .param p2, "per"    # I
    .param p3, "nper"    # I
    .param p4, "pv"    # D

    .line 135
    invoke-static {p0, p1, p3, p4, p5}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DID)D

    move-result-wide v0

    invoke-static/range {p0 .. p5}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIID)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static ppmt(DIIDD)D
    .locals 7
    .param p0, "r"    # D
    .param p2, "per"    # I
    .param p3, "nper"    # I
    .param p4, "pv"    # D
    .param p6, "fv"    # D

    .line 131
    move-wide v0, p0

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDD)D

    move-result-wide v0

    invoke-static/range {p0 .. p7}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIIDD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static ppmt(DIIDDI)D
    .locals 8
    .param p0, "r"    # D
    .param p2, "per"    # I
    .param p3, "nper"    # I
    .param p4, "pv"    # D
    .param p6, "fv"    # D
    .param p8, "type"    # I

    .line 127
    move-wide v0, p0

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDDI)D

    move-result-wide v0

    invoke-static/range {p0 .. p8}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIIDDI)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method
