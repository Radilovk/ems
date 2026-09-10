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
        "Lorg/apache/poi/ss/usermodel/CellRange<",
        "TK;>;"
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
    .locals 9
    .param p0, "firstRow"    # I
    .param p1, "firstColumn"    # I
    .param p2, "height"    # I
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">(IIII",
            "Ljava/util/List<",
            "TB;>;",
            "Ljava/lang/Class<",
            "TB;>;)",
            "Lorg/apache/poi/ss/util/SSCellRange<",
            "TB;>;"
        }
    .end annotation

    .line 52
    .local p4, "flattenedList":Ljava/util/List;, "Ljava/util/List<TB;>;"
    .local p5, "cellClass":Ljava/lang/Class;, "Ljava/lang/Class<TB;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 53
    .local v0, "nItems":I
    mul-int v1, p2, p3

    if-ne v1, v0, :cond_0

    .line 58
    invoke-static {p5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v1, [Lorg/apache/poi/ss/usermodel/Cell;

    .line 59
    .local v1, "flattenedArray":[Lorg/apache/poi/ss/usermodel/Cell;, "[TB;"
    invoke-interface {p4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    new-instance v8, Lorg/apache/poi/ss/util/SSCellRange;

    move-object v2, v8

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/ss/util/SSCellRange;-><init>(IIII[Lorg/apache/poi/ss/usermodel/Cell;)V

    return-object v8

    .line 54
    .end local v1    # "flattenedArray":[Lorg/apache/poi/ss/usermodel/Cell;, "[TB;"
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Array size mismatch."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCell(II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 5
    .param p1, "relativeRowIndex"    # I
    .param p2, "relativeColumnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    const-string v0, ")."

    const-string v1, " is outside the allowable range (0.."

    if-ltz p1, :cond_1

    iget v2, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    if-ge p1, v2, :cond_1

    .line 87
    if-ltz p2, :cond_0

    iget v2, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    if-ge p2, v2, :cond_0

    .line 91
    mul-int v2, v2, p1

    add-int/2addr v2, p2

    .line 92
    .local v2, "flatIndex":I
    iget-object v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    aget-object v0, v0, v2

    return-object v0

    .line 88
    .end local v2    # "flatIndex":I
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specified colummn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specified row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCells()[[Lorg/apache/poi/ss/usermodel/Cell;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TK;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    iget-object v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 101
    .local v0, "itemCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v1, [[Lorg/apache/poi/ss/usermodel/Cell;

    .line 102
    .local v1, "result":[[Lorg/apache/poi/ss/usermodel/Cell;, "[[TK;"
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 103
    iget v2, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "r":I
    :goto_0
    if-ltz v2, :cond_0

    .line 105
    iget v3, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v3, [Lorg/apache/poi/ss/usermodel/Cell;

    .line 106
    .local v3, "row":[Lorg/apache/poi/ss/usermodel/Cell;, "[TK;"
    iget v4, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    mul-int v5, v4, v2

    .line 107
    .local v5, "flatIndex":I
    iget-object v6, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    const/4 v7, 0x0

    invoke-static {v6, v5, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    .end local v3    # "row":[Lorg/apache/poi/ss/usermodel/Cell;, "[TK;"
    .end local v5    # "flatIndex":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 109
    .end local v2    # "r":I
    :cond_0
    return-object v1
.end method

.method public getFlattenedCells()[Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TK;"
        }
    .end annotation

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

    .line 64
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    iget v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    return v0
.end method

.method public getReferenceText()Ljava/lang/String;
    .locals 5

    .line 74
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_firstRow:I

    iget v2, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/poi/ss/util/SSCellRange;->_firstColumn:I

    iget v4, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    add-int/2addr v4, v3

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

    .line 79
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    iget-object v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWidth()I
    .locals 1

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
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    new-instance v0, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;

    iget-object v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 70
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange;, "Lorg/apache/poi/ss/util/SSCellRange<TK;>;"
    iget v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    mul-int v0, v0, v1

    return v0
.end method
