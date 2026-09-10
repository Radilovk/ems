.class final Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;
.super Ljava/lang/Object;
.source "FormulaUsedBlankCellSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlankCellRectangleGroup"
.end annotation


# instance fields
.field private final _firstColumnIndex:I

.field private final _firstRowIndex:I

.field private final _lastColumnIndex:I

.field private _lastRowIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "firstRowIndex"    # I
    .param p2, "firstColumnIndex"    # I
    .param p3, "lastColumnIndex"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstRowIndex:I

    .line 117
    iput p2, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstColumnIndex:I

    .line 118
    iput p3, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastColumnIndex:I

    .line 119
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    .line 120
    return-void
.end method


# virtual methods
.method public acceptRow(III)Z
    .locals 3
    .param p1, "rowIndex"    # I
    .param p2, "firstColumnIndex"    # I
    .param p3, "lastColumnIndex"    # I

    .line 139
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstColumnIndex:I

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    .line 140
    return v1

    .line 142
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastColumnIndex:I

    if-eq p3, v0, :cond_1

    .line 143
    return v1

    .line 145
    :cond_1
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-eq p1, v0, :cond_2

    .line 146
    return v1

    .line 148
    :cond_2
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    .line 149
    return v2
.end method

.method public containsCell(II)Z
    .locals 2
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 123
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstColumnIndex:I

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 124
    return v1

    .line 126
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastColumnIndex:I

    if-le p2, v0, :cond_1

    .line 127
    return v1

    .line 129
    :cond_1
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstRowIndex:I

    if-ge p1, v0, :cond_2

    .line 130
    return v1

    .line 132
    :cond_2
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    if-le p1, v0, :cond_3

    .line 133
    return v1

    .line 135
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 152
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 153
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstRowIndex:I

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstColumnIndex:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 154
    .local v1, "crA":Lorg/apache/poi/ss/util/CellReference;
    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastColumnIndex:I

    invoke-direct {v2, v3, v5, v4, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 155
    .local v2, "crB":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
