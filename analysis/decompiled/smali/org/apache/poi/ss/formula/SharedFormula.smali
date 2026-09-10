.class public Lorg/apache/poi/ss/formula/SharedFormula;
.super Ljava/lang/Object;
.source "SharedFormula.java"


# instance fields
.field private final _columnWrappingMask:I

.field private final _rowWrappingMask:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 1
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/SharedFormula;->_columnWrappingMask:I

    .line 32
    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/SharedFormula;->_rowWrappingMask:I

    .line 33
    return-void
.end method

.method private fixupRelativeColumn(IIZ)I
    .locals 2
    .param p1, "currentcolumn"    # I
    .param p2, "column"    # I
    .param p3, "relative"    # Z

    .prologue
    .line 84
    if-eqz p3, :cond_0

    .line 86
    add-int v0, p2, p1

    iget v1, p0, Lorg/apache/poi/ss/formula/SharedFormula;->_columnWrappingMask:I

    and-int p2, v0, v1

    .line 88
    .end local p2    # "column":I
    :cond_0
    return p2
.end method

.method private fixupRelativeRow(IIZ)I
    .locals 2
    .param p1, "currentrow"    # I
    .param p2, "row"    # I
    .param p3, "relative"    # Z

    .prologue
    .line 92
    if-eqz p3, :cond_0

    .line 93
    add-int v0, p2, p1

    iget v1, p0, Lorg/apache/poi/ss/formula/SharedFormula;->_rowWrappingMask:I

    and-int p2, v0, v1

    .line 95
    .end local p2    # "row":I
    :cond_0
    return p2
.end method


# virtual methods
.method public convertSharedFormulas([Lorg/apache/poi/ss/formula/ptg/Ptg;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 15
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "formulaRow"    # I
    .param p3, "formulaColumn"    # I

    .prologue
    .line 46
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v12, v2, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 48
    .local v12, "newPtgStack":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v11, v2, :cond_4

    .line 49
    aget-object v1, p1, v11

    .line 50
    .local v1, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v13, -0x1

    .line 51
    .local v13, "originalOperandClass":B
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isBaseToken()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v13

    .line 54
    :cond_0
    instance-of v2, v1, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    if-eqz v2, :cond_2

    move-object v14, v1

    .line 55
    check-cast v14, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    .line 56
    .local v14, "refNPtg":Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    .end local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v14}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v2

    invoke-virtual {v14}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isRowRelative()Z

    move-result v3

    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/poi/ss/formula/SharedFormula;->fixupRelativeRow(IIZ)I

    move-result v2

    invoke-virtual {v14}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result v3

    invoke-virtual {v14}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isColRelative()Z

    move-result v4

    move/from16 v0, p3

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/poi/ss/formula/SharedFormula;->fixupRelativeColumn(IIZ)I

    move-result v3

    invoke-virtual {v14}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isRowRelative()Z

    move-result v4

    invoke-virtual {v14}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isColRelative()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(IIZZ)V

    .line 60
    .restart local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v1, v13}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 78
    .end local v14    # "refNPtg":Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
    :cond_1
    :goto_1
    aput-object v1, v12, v11

    .line 48
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 61
    :cond_2
    instance-of v2, v1, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;

    if-eqz v2, :cond_3

    move-object v10, v1

    .line 62
    check-cast v10, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;

    .line 63
    .local v10, "areaNPtg":Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    .end local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v2

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstRowRelative()Z

    move-result v3

    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/poi/ss/formula/SharedFormula;->fixupRelativeRow(IIZ)I

    move-result v2

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v3

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastRowRelative()Z

    move-result v4

    move/from16 v0, p2

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/poi/ss/formula/SharedFormula;->fixupRelativeRow(IIZ)I

    move-result v3

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v4

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstColRelative()Z

    move-result v5

    move/from16 v0, p3

    invoke-direct {p0, v0, v4, v5}, Lorg/apache/poi/ss/formula/SharedFormula;->fixupRelativeColumn(IIZ)I

    move-result v4

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v5

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastColRelative()Z

    move-result v6

    move/from16 v0, p3

    invoke-direct {p0, v0, v5, v6}, Lorg/apache/poi/ss/formula/SharedFormula;->fixupRelativeColumn(IIZ)I

    move-result v5

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstRowRelative()Z

    move-result v6

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastRowRelative()Z

    move-result v7

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstColRelative()Z

    move-result v8

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastColRelative()Z

    move-result v9

    invoke-direct/range {v1 .. v9}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(IIIIZZZZ)V

    .line 71
    .restart local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v1, v13}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    goto :goto_1

    .line 72
    .end local v10    # "areaNPtg":Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
    :cond_3
    instance-of v2, v1, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v2, :cond_1

    .line 74
    check-cast v1, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    .end local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object v1

    .restart local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_1

    .line 80
    .end local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v13    # "originalOperandClass":B
    :cond_4
    return-object v12
.end method
