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

    .line 84
    if-eqz p3, :cond_0

    .line 86
    add-int v0, p2, p1

    iget v1, p0, Lorg/apache/poi/ss/formula/SharedFormula;->_columnWrappingMask:I

    and-int/2addr v0, v1

    return v0

    .line 88
    :cond_0
    return p2
.end method

.method private fixupRelativeRow(IIZ)I
    .locals 2
    .param p1, "currentrow"    # I
    .param p2, "row"    # I
    .param p3, "relative"    # Z

    .line 92
    if-eqz p3, :cond_0

    .line 93
    add-int v0, p2, p1

    iget v1, p0, Lorg/apache/poi/ss/formula/SharedFormula;->_rowWrappingMask:I

    and-int/2addr v0, v1

    return v0

    .line 95
    :cond_0
    return p2
.end method


# virtual methods
.method public convertSharedFormulas([Lorg/apache/poi/ss/formula/ptg/Ptg;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 19
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "formulaRow"    # I
    .param p3, "formulaColumn"    # I

    .line 46
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    array-length v4, v1

    new-array v4, v4, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 48
    .local v4, "newPtgStack":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_4

    .line 49
    aget-object v6, v1, v5

    .line 50
    .local v6, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v7, -0x1

    .line 51
    .local v7, "originalOperandClass":B
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isBaseToken()Z

    move-result v8

    if-nez v8, :cond_0

    .line 52
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v7

    .line 54
    :cond_0
    instance-of v8, v6, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    if-eqz v8, :cond_1

    .line 55
    move-object v8, v6

    check-cast v8, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    .line 56
    .local v8, "refNPtg":Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
    new-instance v9, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v10

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isRowRelative()Z

    move-result v11

    invoke-direct {v0, v2, v10, v11}, Lorg/apache/poi/ss/formula/SharedFormula;->fixupRelativeRow(IIZ)I

    move-result v10

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result v11

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isColRelative()Z

    move-result v12

    invoke-direct {v0, v3, v11, v12}, Lorg/apache/poi/ss/formula/SharedFormula;->fixupRelativeColumn(IIZ)I

    move-result v11

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isRowRelative()Z

    move-result v12

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isColRelative()Z

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(IIZZ)V

    move-object v6, v9

    .line 60
    invoke-virtual {v6, v7}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 61
    .end local v8    # "refNPtg":Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
    goto :goto_2

    :cond_1
    instance-of v8, v6, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;

    if-eqz v8, :cond_2

    .line 62
    move-object v8, v6

    check-cast v8, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;

    .line 63
    .local v8, "areaNPtg":Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
    new-instance v18, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v9

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstRowRelative()Z

    move-result v10

    invoke-direct {v0, v2, v9, v10}, Lorg/apache/poi/ss/formula/SharedFormula;->fixupRelativeRow(IIZ)I

    move-result v10

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v9

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastRowRelative()Z

    move-result v11

    invoke-direct {v0, v2, v9, v11}, Lorg/apache/poi/ss/formula/SharedFormula;->fixupRelativeRow(IIZ)I

    move-result v11

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v9

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstColRelative()Z

    move-result v12

    invoke-direct {v0, v3, v9, v12}, Lorg/apache/poi/ss/formula/SharedFormula;->fixupRelativeColumn(IIZ)I

    move-result v12

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v9

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastColRelative()Z

    move-result v13

    invoke-direct {v0, v3, v9, v13}, Lorg/apache/poi/ss/formula/SharedFormula;->fixupRelativeColumn(IIZ)I

    move-result v13

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstRowRelative()Z

    move-result v14

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastRowRelative()Z

    move-result v15

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstColRelative()Z

    move-result v16

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastColRelative()Z

    move-result v17

    move-object/from16 v9, v18

    invoke-direct/range {v9 .. v17}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(IIIIZZZZ)V

    move-object/from16 v6, v18

    .line 71
    invoke-virtual {v6, v7}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .end local v8    # "areaNPtg":Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
    goto :goto_1

    .line 72
    :cond_2
    instance-of v8, v6, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v8, :cond_3

    .line 74
    move-object v8, v6

    check-cast v8, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object v6

    goto :goto_2

    .line 72
    :cond_3
    :goto_1
    nop

    .line 78
    :goto_2
    aput-object v6, v4, v5

    .line 48
    .end local v6    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v7    # "originalOperandClass":B
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 80
    .end local v5    # "k":I
    :cond_4
    return-object v4
.end method
