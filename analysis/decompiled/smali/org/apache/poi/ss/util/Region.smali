.class public Lorg/apache/poi/ss/util/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/poi/ss/util/Region;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _colFrom:S

.field private _colTo:S

.field private _rowFrom:I

.field private _rowTo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/poi/ss/util/Region;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/ss/util/Region;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(ISIS)V
    .locals 0
    .param p1, "rowFrom"    # I
    .param p2, "colFrom"    # S
    .param p3, "rowTo"    # I
    .param p4, "colTo"    # S

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/apache/poi/ss/util/Region;->_rowFrom:I

    .line 45
    iput p3, p0, Lorg/apache/poi/ss/util/Region;->_rowTo:I

    .line 46
    iput-short p2, p0, Lorg/apache/poi/ss/util/Region;->_colFrom:S

    .line 47
    iput-short p4, p0, Lorg/apache/poi/ss/util/Region;->_colTo:S

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "cellReferenceFrom":Lorg/apache/poi/ss/util/CellReference;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "cellReferenceTo":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ss/util/Region;->_rowFrom:I

    .line 54
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/ss/util/Region;->_colFrom:S

    .line 55
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ss/util/Region;->_rowTo:I

    .line 56
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/ss/util/Region;->_colTo:S

    .line 57
    return-void
.end method

.method public static convertCellRangesToRegions([Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/Region;
    .locals 4
    .param p0, "cellRanges"    # [Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 218
    array-length v2, p0

    .line 219
    .local v2, "size":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 220
    const/4 v3, 0x0

    new-array v1, v3, [Lorg/apache/poi/ss/util/Region;

    .line 228
    :cond_0
    return-object v1

    .line 223
    :cond_1
    new-array v1, v2, [Lorg/apache/poi/ss/util/Region;

    .line 225
    .local v1, "result":[Lorg/apache/poi/ss/util/Region;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, v2, :cond_0

    .line 226
    aget-object v3, p0, v0

    invoke-static {v3}, Lorg/apache/poi/ss/util/Region;->convertToRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/Region;

    move-result-object v3

    aput-object v3, v1, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static convertRegionsToCellRanges([Lorg/apache/poi/ss/util/Region;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 4
    .param p0, "regions"    # [Lorg/apache/poi/ss/util/Region;

    .prologue
    .line 239
    array-length v2, p0

    .line 240
    .local v2, "size":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 241
    const/4 v3, 0x0

    new-array v1, v3, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 249
    :cond_0
    return-object v1

    .line 244
    :cond_1
    new-array v1, v2, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 246
    .local v1, "result":[Lorg/apache/poi/ss/util/CellRangeAddress;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, v2, :cond_0

    .line 247
    aget-object v3, p0, v0

    invoke-static {v3}, Lorg/apache/poi/ss/util/Region;->convertToCellRangeAddress(Lorg/apache/poi/ss/util/Region;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    aput-object v3, v1, v0

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static convertToCellRangeAddress(Lorg/apache/poi/ss/util/Region;)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 5
    .param p0, "r"    # Lorg/apache/poi/ss/util/Region;

    .prologue
    .line 253
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/Region;->getRowFrom()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/Region;->getRowTo()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/Region;->getColumnFrom()S

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/Region;->getColumnTo()S

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v0
.end method

.method private static convertToRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/Region;
    .locals 5
    .param p0, "cr"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 235
    new-instance v0, Lorg/apache/poi/ss/util/Region;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    int-to-short v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/util/Region;-><init>(ISIS)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lorg/apache/poi/ss/util/Region;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/util/Region;->compareTo(Lorg/apache/poi/ss/util/Region;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/ss/util/Region;)I
    .locals 2
    .param p1, "r"    # Lorg/apache/poi/ss/util/Region;

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/Region;->getRowFrom()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/Region;->getRowFrom()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/Region;->getColumnFrom()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/Region;->getColumnFrom()S

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/Region;->getRowTo()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/Region;->getRowTo()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/Region;->getColumnTo()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/Region;->getColumnTo()S

    move-result v1

    if-ne v0, v1, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/Region;->getRowFrom()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/Region;->getRowFrom()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/Region;->getColumnFrom()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/Region;->getColumnFrom()S

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/Region;->getRowTo()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/Region;->getRowTo()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/Region;->getColumnTo()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/Region;->getColumnTo()S

    move-result v1

    if-ge v0, v1, :cond_2

    .line 198
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 200
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public contains(IS)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # S

    .prologue
    .line 151
    iget v0, p0, Lorg/apache/poi/ss/util/Region;->_rowFrom:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/Region;->_rowTo:I

    if-lt v0, p1, :cond_0

    iget-short v0, p0, Lorg/apache/poi/ss/util/Region;->_colFrom:S

    if-gt v0, p2, :cond_0

    iget-short v0, p0, Lorg/apache/poi/ss/util/Region;->_colTo:S

    if-lt v0, p2, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/apache/poi/ss/util/Region;)Z
    .locals 1
    .param p1, "r"    # Lorg/apache/poi/ss/util/Region;

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/util/Region;->compareTo(Lorg/apache/poi/ss/util/Region;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArea()I
    .locals 3

    .prologue
    .line 207
    iget v0, p0, Lorg/apache/poi/ss/util/Region;->_rowTo:I

    iget v1, p0, Lorg/apache/poi/ss/util/Region;->_rowFrom:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-short v1, p0, Lorg/apache/poi/ss/util/Region;->_colTo:S

    iget-short v2, p0, Lorg/apache/poi/ss/util/Region;->_colFrom:S

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getColumnFrom()S
    .locals 1

    .prologue
    .line 67
    iget-short v0, p0, Lorg/apache/poi/ss/util/Region;->_colFrom:S

    return v0
.end method

.method public getColumnTo()S
    .locals 1

    .prologue
    .line 88
    iget-short v0, p0, Lorg/apache/poi/ss/util/Region;->_colTo:S

    return v0
.end method

.method public getRegionRef()Ljava/lang/String;
    .locals 5

    .prologue
    .line 260
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    iget v3, p0, Lorg/apache/poi/ss/util/Region;->_rowFrom:I

    iget-short v4, p0, Lorg/apache/poi/ss/util/Region;->_colFrom:S

    invoke-direct {v0, v3, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(IS)V

    .line 261
    .local v0, "cellRefFrom":Lorg/apache/poi/ss/util/CellReference;
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    iget v3, p0, Lorg/apache/poi/ss/util/Region;->_rowTo:I

    iget-short v4, p0, Lorg/apache/poi/ss/util/Region;->_colTo:S

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(IS)V

    .line 262
    .local v1, "cellRefTo":Lorg/apache/poi/ss/util/CellReference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "ref":Ljava/lang/String;
    return-object v2
.end method

.method public getRowFrom()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/apache/poi/ss/util/Region;->_rowFrom:I

    return v0
.end method

.method public getRowTo()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/poi/ss/util/Region;->_rowTo:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 170
    sget-boolean v0, Lorg/apache/poi/ss/util/Region;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 171
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public setColumnFrom(S)V
    .locals 0
    .param p1, "colFrom"    # S

    .prologue
    .line 108
    iput-short p1, p0, Lorg/apache/poi/ss/util/Region;->_colFrom:S

    .line 109
    return-void
.end method

.method public setColumnTo(S)V
    .locals 0
    .param p1, "colTo"    # S

    .prologue
    .line 129
    iput-short p1, p0, Lorg/apache/poi/ss/util/Region;->_colTo:S

    .line 130
    return-void
.end method

.method public setRowFrom(I)V
    .locals 0
    .param p1, "rowFrom"    # I

    .prologue
    .line 118
    iput p1, p0, Lorg/apache/poi/ss/util/Region;->_rowFrom:I

    .line 119
    return-void
.end method

.method public setRowTo(I)V
    .locals 0
    .param p1, "rowTo"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/apache/poi/ss/util/Region;->_rowTo:I

    .line 140
    return-void
.end method
