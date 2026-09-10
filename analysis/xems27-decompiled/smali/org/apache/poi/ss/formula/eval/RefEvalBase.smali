.class public abstract Lorg/apache/poi/ss/formula/eval/RefEvalBase;
.super Ljava/lang/Object;
.source "RefEvalBase.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/RefEval;


# instance fields
.field private final _columnIndex:I

.field private final _firstSheetIndex:I

.field private final _lastSheetIndex:I

.field private final _rowIndex:I


# direct methods
.method protected constructor <init>(III)V
    .locals 0
    .param p1, "onlySheetIndex"    # I
    .param p2, "rowIndex"    # I
    .param p3, "columnIndex"    # I

    .line 47
    invoke-direct {p0, p1, p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;-><init>(IIII)V

    .line 48
    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 0
    .param p1, "firstSheetIndex"    # I
    .param p2, "lastSheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_firstSheetIndex:I

    .line 42
    iput p2, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_lastSheetIndex:I

    .line 43
    iput p3, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_rowIndex:I

    .line 44
    iput p4, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_columnIndex:I

    .line 45
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/ss/formula/SheetRange;II)V
    .locals 2
    .param p1, "sheetRange"    # Lorg/apache/poi/ss/formula/SheetRange;
    .param p2, "rowIndex"    # I
    .param p3, "columnIndex"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-eqz p1, :cond_0

    .line 35
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/SheetRange;->getFirstSheetIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_firstSheetIndex:I

    .line 36
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/SheetRange;->getLastSheetIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_lastSheetIndex:I

    .line 37
    iput p2, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_rowIndex:I

    .line 38
    iput p3, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_columnIndex:I

    .line 39
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sheetRange must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getColumn()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_columnIndex:I

    return v0
.end method

.method public getFirstSheetIndex()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_firstSheetIndex:I

    return v0
.end method

.method public getLastSheetIndex()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_lastSheetIndex:I

    return v0
.end method

.method public getNumberOfSheets()I
    .locals 2

    .line 51
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_lastSheetIndex:I

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_firstSheetIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getRow()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_rowIndex:I

    return v0
.end method
