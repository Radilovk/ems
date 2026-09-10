.class final Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
.super Ljava/lang/Object;
.source "SheetRangeEvaluator.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/SheetRange;


# instance fields
.field private final _firstSheetIndex:I

.field private final _lastSheetIndex:I

.field private _sheetEvaluators:[Lorg/apache/poi/ss/formula/SheetRefEvaluator;


# direct methods
.method public constructor <init>(II[Lorg/apache/poi/ss/formula/SheetRefEvaluator;)V
    .locals 4
    .param p1, "firstSheetIndex"    # I
    .param p2, "lastSheetIndex"    # I
    .param p3, "sheetEvaluators"    # [Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "."

    if-ltz p1, :cond_1

    .line 34
    if-lt p2, p1, :cond_0

    .line 37
    iput p1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    .line 38
    iput p2, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    .line 39
    iput-object p3, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_sheetEvaluators:[Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    .line 40
    return-void

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid lastSheetIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for firstSheetIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid firstSheetIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(ILorg/apache/poi/ss/formula/SheetRefEvaluator;)V
    .locals 2
    .param p1, "onlySheetIndex"    # I
    .param p2, "sheetEvaluator"    # Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, p1, v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(II[Lorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getEvalForCell(III)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "rowIndex"    # I
    .param p3, "columnIndex"    # I

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getEvalForCell(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public getFirstSheetIndex()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    return v0
.end method

.method public getLastSheetIndex()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    return v0
.end method

.method public getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    .locals 3
    .param p1, "sheetIndex"    # I

    .line 46
    iget v0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    if-gt p1, v1, :cond_0

    .line 50
    iget-object v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_sheetEvaluators:[Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    sub-int v0, p1, v0

    aget-object v0, v1, v0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SheetIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - Outside range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getSheetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetNameRange()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    iget v2, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    if-eq v1, v2, :cond_0

    .line 67
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
