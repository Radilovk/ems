.class abstract Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;
.super Ljava/lang/Object;
.source "DataSources.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/charts/DataSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractCellRangeDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private evaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

.field private final numOfCells:I

.field private final sheet:Lorg/apache/poi/ss/usermodel/Sheet;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;
    .param p2, "cellRangeAddress"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 111
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 114
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 115
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getNumberOfCells()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->numOfCells:I

    .line 116
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->evaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    .line 117
    return-void
.end method


# virtual methods
.method protected getCellValueAt(I)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 9
    .param p1, "index"    # I

    .line 132
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource<TT;>;"
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->numOfCells:I

    if-ge p1, v0, :cond_1

    .line 136
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 137
    .local v0, "firstRow":I
    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 138
    .local v1, "firstCol":I
    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v2

    .line 139
    .local v2, "lastCol":I
    sub-int v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    .line 140
    .local v3, "width":I
    div-int v4, p1, v3

    add-int/2addr v4, v0

    .line 141
    .local v4, "rowIndex":I
    rem-int v5, p1, v3

    add-int/2addr v5, v1

    .line 142
    .local v5, "cellIndex":I
    iget-object v6, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v6, v4}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v6

    .line 143
    .local v6, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-nez v6, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->evaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    invoke-interface {v6, v5}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;->evaluate(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v7

    :goto_0
    return-object v7

    .line 133
    .end local v0    # "firstRow":I
    .end local v1    # "firstCol":I
    .end local v2    # "lastCol":I
    .end local v3    # "width":I
    .end local v4    # "rowIndex":I
    .end local v5    # "cellIndex":I
    .end local v6    # "row":Lorg/apache/poi/ss/usermodel/Row;
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index must be between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->numOfCells:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (inclusive), given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormulaString()Ljava/lang/String;
    .locals 3

    .line 128
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource<TT;>;"
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPointCount()I
    .locals 1

    .line 120
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource<TT;>;"
    iget v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->numOfCells:I

    return v0
.end method

.method public isReference()Z
    .locals 1

    .line 124
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
