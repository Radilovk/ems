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

    .prologue
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
    .locals 2
    .param p1, "rowIndex"    # I
    .param p2, "firstColumnIndex"    # I
    .param p3, "lastColumnIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 139
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstColumnIndex:I

    if-eq p2, v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastColumnIndex:I

    if-ne p3, v1, :cond_0

    .line 145
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_0

    .line 148
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsCell(II)Z
    .locals 2
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 123
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstColumnIndex:I

    if-ge p2, v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastColumnIndex:I

    if-gt p2, v1, :cond_0

    .line 129
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstRowIndex:I

    if-lt p1, v1, :cond_0

    .line 132
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    if-gt p1, v1, :cond_0

    .line 135
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 152
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 153
    .local v2, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstRowIndex:I

    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_firstColumnIndex:I

    invoke-direct {v0, v3, v4, v5, v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 154
    .local v0, "crA":Lorg/apache/poi/ss/util/CellReference;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastRowIndex:I

    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;->_lastColumnIndex:I

    invoke-direct {v1, v3, v4, v5, v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 155
    .local v1, "crB":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
