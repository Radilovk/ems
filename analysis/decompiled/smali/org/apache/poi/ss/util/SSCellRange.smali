.class public final Lorg/apache/poi/ss/util/SSCellRange;
.super Ljava/lang/Object;
.source "SSCellRange.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/CellRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lorg/apache/poi/ss/usermodel/Cell;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/CellRange",
        "<TK;>;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _firstColumn:I

.field private final _firstRow:I

.field private final _flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private final _height:I

.field private final _width:I


# direct methods
.method private constructor <init>(IIII[Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0
    .param p1, "firstRow"    # I
    .param p2, "firstColumn"    # I
    .param p3, "height"    # I
    .param p4, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[TK;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    .local p5, "flattenedArray":[Lorg/apache/poi/ss/usermodel/Cell;, "[TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_firstRow:I

    .line 45
    iput p2, p0, Lorg/apache/poi/ss/util/SSCellRange;->_firstColumn:I

    .line 46
    iput p3, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    .line 47
    iput p4, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    .line 48
    iput-object p5, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    .line 49
    return-void
.end method

.method public static create(IIIILjava/util/List;Ljava/lang/Class;)Lorg/apache/poi/ss/util/SSCellRange;
    .locals 7
    .param p0, "firstRow"    # I
    .param p1, "firstColumn"    # I
    .param p2, "height"    # I
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">(IIII",
            "Ljava/util/List",
            "<TB;>;",
            "Ljava/lang/Class",
            "<TB;>;)",
            "Lorg/apache/poi/ss/util/SSCellRange",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p4, "flattenedList":Ljava/util/List;, "Ljava/util/List<TB;>;"
    .local p5, "cellClass":Ljava/lang/Class;, "Ljava/lang/Class<TB;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    .line 53
    .local v6, "nItems":I
    mul-int v0, p2, p3

    if-eq v0, v6, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array size mismatch."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-static {p5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/Cell;

    move-object v5, v0

    check-cast v5, [Lorg/apache/poi/ss/usermodel/Cell;

    .line 59
    .local v5, "flattenedArray":[Lorg/apache/poi/ss/usermodel/Cell;, "[TB;"
    invoke-interface {p4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    new-instance v0, Lorg/apache/poi/ss/util/SSCellRange;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/SSCellRange;-><init>(IIII[Lorg/apache/poi/ss/usermodel/Cell;)V

    return-object v0
.end method


# virtual methods
.method public getCell(II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 4
    .param p1, "relativeRowIndex"    # I
    .param p2, "relativeColumnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    if-ltz p1, :cond_0

    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    if-lt p1, v1, :cond_1

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is outside the allowable range (0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_1
    if-ltz p2, :cond_2

    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    if-lt p2, v1, :cond_3

    .line 88
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified colummn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is outside the allowable range (0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_3
    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    mul-int/2addr v1, p1

    add-int v0, v1, p2

    .line 92
    .local v0, "flatIndex":I
    iget-object v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getCells()[[Lorg/apache/poi/ss/usermodel/Cell;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TK;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    iget-object v5, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 101
    .local v1, "itemCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v5, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lorg/apache/poi/ss/usermodel/Cell;

    move-object v3, v5

    check-cast v3, [[Lorg/apache/poi/ss/usermodel/Cell;

    .line 102
    .local v3, "result":[[Lorg/apache/poi/ss/usermodel/Cell;, "[[TK;"
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 103
    iget v5, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    add-int/lit8 v2, v5, -0x1

    .local v2, "r":I
    :goto_0
    if-ltz v2, :cond_0

    .line 105
    iget v5, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/poi/ss/usermodel/Cell;

    move-object v4, v5

    check-cast v4, [Lorg/apache/poi/ss/usermodel/Cell;

    .line 106
    .local v4, "row":[Lorg/apache/poi/ss/usermodel/Cell;, "[TK;"
    iget v5, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    mul-int v0, v5, v2

    .line 107
    .local v0, "flatIndex":I
    iget-object v5, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    invoke-static {v5, v0, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 109
    .end local v0    # "flatIndex":I
    .end local v4    # "row":[Lorg/apache/poi/ss/usermodel/Cell;, "[TK;"
    :cond_0
    return-object v3
.end method

.method public getFlattenedCells()[Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TK;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    iget-object v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/Cell;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/Cell;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    iget v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    return v0
.end method

.method public getReferenceText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_firstRow:I

    iget v2, p0, Lorg/apache/poi/ss/util/SSCellRange;->_firstRow:I

    iget v3, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/poi/ss/util/SSCellRange;->_firstColumn:I

    iget v4, p0, Lorg/apache/poi/ss/util/SSCellRange;->_firstColumn:I

    iget v5, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 75
    .local v0, "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTopLeftCell()Lorg/apache/poi/ss/usermodel/Cell;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    iget-object v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    iget v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    new-instance v0, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;

    iget-object v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    iget v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    mul-int/2addr v0, v1

    return v0
.end method
