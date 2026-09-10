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
        "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource",
        "<TT;>;"
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

    .prologue
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
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

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
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 132
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource<TT;>;"
    if-ltz p1, :cond_0

    iget v7, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->numOfCells:I

    if-lt p1, v7, :cond_1

    .line 133
    :cond_0
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Index must be between 0 and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->numOfCells:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (inclusive), given: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 136
    :cond_1
    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v2

    .line 137
    .local v2, "firstRow":I
    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 138
    .local v1, "firstCol":I
    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 139
    .local v3, "lastCol":I
    sub-int v7, v3, v1

    add-int/lit8 v6, v7, 0x1

    .line 140
    .local v6, "width":I
    div-int v7, p1, v6

    add-int v5, v2, v7

    .line 141
    .local v5, "rowIndex":I
    rem-int v7, p1, v6

    add-int v0, v1, v7

    .line 142
    .local v0, "cellIndex":I
    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v7, v5}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    .line 143
    .local v4, "row":Lorg/apache/poi/ss/usermodel/Row;
    if-nez v4, :cond_2

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_2
    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->evaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    invoke-interface {v4, v0}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;->evaluate(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v7

    goto :goto_0
.end method

.method public getFormulaString()Ljava/lang/String;
    .locals 3

    .prologue
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

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource<TT;>;"
    iget v0, p0, Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;->numOfCells:I

    return v0
.end method

.method public isReference()Z
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource;, "Lorg/apache/poi/ss/usermodel/charts/DataSources$AbstractCellRangeDataSource<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
