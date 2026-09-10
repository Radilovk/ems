.class public Lorg/apache/poi/ss/formula/functions/Finance;
.super Ljava/lang/Object;
.source "Finance.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fv(DIDD)D
    .locals 9
    .param p0, "r"    # D
    .param p2, "nper"    # I
    .param p3, "c"    # D
    .param p5, "pv"    # D

    .prologue
    .line 166
    const/4 v8, 0x0

    move-wide v1, p0

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v1 .. v8}, Lorg/apache/poi/ss/formula/functions/Finance;->fv(DIDDI)D

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

    .prologue
    .line 156
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, p0

    int-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, p5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p7

    int-to-double v8, v0

    mul-double/2addr v8, p0

    add-double/2addr v6, v8

    mul-double/2addr v6, p3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, p0

    int-to-double v10, p2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    div-double/2addr v6, p0

    add-double/2addr v4, v6

    neg-double v2, v4

    .line 157
    .local v2, "fv":D
    return-wide v2
.end method

.method public static ipmt(DIID)D
    .locals 8
    .param p0, "r"    # D
    .param p2, "per"    # I
    .param p3, "nper"    # I
    .param p4, "pv"    # D

    .prologue
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
    .locals 10
    .param p0, "r"    # D
    .param p2, "per"    # I
    .param p3, "nper"    # I
    .param p4, "pv"    # D
    .param p6, "fv"    # D

    .prologue
    .line 97
    const/4 v8, 0x0

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v8}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIIDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ipmt(DIIDDI)D
    .locals 14
    .param p0, "r"    # D
    .param p2, "per"    # I
    .param p3, "nper"    # I
    .param p4, "pv"    # D
    .param p6, "fv"    # D
    .param p8, "type"    # I

    .prologue
    .line 91
    add-int/lit8 v2, p2, -0x1

    move-wide v3, p0

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-static/range {v3 .. v10}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDDI)D

    move-result-wide v6

    move-wide v3, p0

    move v5, v2

    move-wide/from16 v8, p4

    move/from16 v10, p8

    invoke-static/range {v3 .. v10}, Lorg/apache/poi/ss/formula/functions/Finance;->fv(DIDDI)D

    move-result-wide v2

    mul-double v12, v2, p0

    .line 92
    .local v12, "ipmt":D
    const/4 v2, 0x1

    move/from16 v0, p8

    if-ne v0, v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, p0

    div-double/2addr v12, v2

    .line 93
    :cond_0
    return-wide v12
.end method

.method public static pmt(DID)D
    .locals 8
    .param p0, "r"    # D
    .param p2, "nper"    # I
    .param p3, "pv"    # D

    .prologue
    .line 63
    const-wide/16 v6, 0x0

    move-wide v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static pmt(DIDD)D
    .locals 9
    .param p0, "r"    # D
    .param p2, "nper"    # I
    .param p3, "pv"    # D
    .param p5, "fv"    # D

    .prologue
    .line 54
    const/4 v8, 0x0

    move-wide v1, p0

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v1 .. v8}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static pmt(DIDDI)D
    .locals 12
    .param p0, "r"    # D
    .param p2, "nper"    # I
    .param p3, "pv"    # D
    .param p5, "fv"    # D
    .param p7, "type"    # I

    .prologue
    .line 43
    neg-double v4, p0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, p0

    int-to-double v8, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, p3

    add-double v6, v6, p5

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p7

    int-to-double v8, v0

    mul-double/2addr v8, p0

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, p0

    int-to-double v10, p2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    div-double v2, v4, v6

    .line 44
    .local v2, "pmt":D
    return-wide v2
.end method

.method public static ppmt(DIID)D
    .locals 4
    .param p0, "r"    # D
    .param p2, "per"    # I
    .param p3, "nper"    # I
    .param p4, "pv"    # D

    .prologue
    .line 135
    invoke-static {p0, p1, p3, p4, p5}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DID)D

    move-result-wide v0

    invoke-static/range {p0 .. p5}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIID)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static ppmt(DIIDD)D
    .locals 8
    .param p0, "r"    # D
    .param p2, "per"    # I
    .param p3, "nper"    # I
    .param p4, "pv"    # D
    .param p6, "fv"    # D

    .prologue
    .line 131
    move-wide v1, p0

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v1 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDD)D

    move-result-wide v0

    invoke-static/range {p0 .. p7}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIIDD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static ppmt(DIIDDI)D
    .locals 10
    .param p0, "r"    # D
    .param p2, "per"    # I
    .param p3, "nper"    # I
    .param p4, "pv"    # D
    .param p6, "fv"    # D
    .param p8, "type"    # I

    .prologue
    .line 127
    move-wide v1, p0

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDDI)D

    move-result-wide v0

    invoke-static/range {p0 .. p8}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIIDDI)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method
