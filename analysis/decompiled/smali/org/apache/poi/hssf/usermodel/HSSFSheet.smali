.class public final Lorg/apache/poi/hssf/usermodel/HSSFSheet;
.super Ljava/lang/Object;
.source "HSSFSheet.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Sheet;


# static fields
.field private static final DEBUG:I = 0x1

.field public static final INITIAL_CAPACITY:I

.field private static final PX_DEFAULT:F = 32.0f

.field private static final PX_MODIFIED:F = 36.56f

.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected final _book:Lorg/apache/poi/hssf/model/InternalWorkbook;

.field private _firstrow:I

.field private _lastrow:I

.field private _patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

.field private final _rows:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/usermodel/HSSFRow;",
            ">;"
        }
    .end annotation
.end field

.field private final _sheet:Lorg/apache/poi/hssf/model/InternalSheet;

.field protected final _workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    .line 94
    const-string v0, "HSSFSheet.RowInitialCapacity"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/apache/poi/util/Configurator;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->INITIAL_CAPACITY:I

    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    .line 119
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    .line 120
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 121
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 122
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/model/InternalSheet;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/model/InternalSheet;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    .line 134
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    .line 135
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 136
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 137
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setPropertiesFromSheet(Lorg/apache/poi/hssf/model/InternalSheet;)V

    .line 138
    return-void
.end method

.method private addRow(Lorg/apache/poi/hssf/usermodel/HSSFRow;Z)V
    .locals 3
    .param p1, "row"    # Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .param p2, "addLow"    # Z

    .prologue
    const/4 v0, 0x1

    .line 352
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    if-eqz p2, :cond_0

    .line 354
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->addRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 356
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 357
    .local v0, "firstRow":Z
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v2

    if-gt v1, v2, :cond_1

    if-eqz v0, :cond_2

    .line 358
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    .line 360
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFirstRowNum()I

    move-result v2

    if-lt v1, v2, :cond_3

    if-eqz v0, :cond_4

    .line 361
    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 363
    :cond_4
    return-void

    .line 356
    .end local v0    # "firstRow":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createRowFromRecord(Lorg/apache/poi/hssf/record/RowRecord;)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 2
    .param p1, "row"    # Lorg/apache/poi/hssf/record/RowRecord;

    .prologue
    .line 267
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 269
    .local v0, "hrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->addRow(Lorg/apache/poi/hssf/usermodel/HSSFRow;Z)V

    .line 270
    return-object v0
.end method

.method private findFirstRow(I)I
    .locals 3
    .param p1, "firstrow"    # I

    .prologue
    .line 332
    add-int/lit8 v1, p1, 0x1

    .line 333
    .local v1, "rownum":I
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    .line 335
    .local v0, "r":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 336
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 340
    const/4 v1, 0x0

    .line 342
    .end local v1    # "rownum":I
    :cond_1
    return v1
.end method

.method private findLastRow(I)I
    .locals 4
    .param p1, "lastrow"    # I

    .prologue
    const/4 v2, 0x0

    .line 312
    const/4 v3, 0x1

    if-ge p1, v3, :cond_1

    move v1, v2

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 315
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 316
    .local v1, "rownum":I
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    .line 318
    .local v0, "r":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :goto_1
    if-nez v0, :cond_2

    if-lez v1, :cond_2

    .line 319
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    goto :goto_1

    .line 321
    :cond_2
    if-nez v0, :cond_0

    move v1, v2

    .line 322
    goto :goto_0
.end method

.method private getBuiltinNameRecord(B)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 3
    .param p1, "builtinCode"    # B

    .prologue
    .line 2335
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    .line 2336
    .local v1, "sheetIndex":I
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findExistingBuiltinNameRecordIdx(IB)I

    move-result v0

    .line 2338
    .local v0, "recIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2339
    const/4 v2, 0x0

    .line 2341
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v2

    goto :goto_0
.end method

.method private getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 12
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange",
            "<",
            "Lorg/apache/poi/hssf/usermodel/HSSFCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2059
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 2060
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 2061
    .local v1, "firstColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v9

    .line 2062
    .local v9, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v8

    .line 2063
    .local v8, "lastColumn":I
    sub-int v5, v9, v0

    add-int/lit8 v2, v5, 0x1

    .line 2064
    .local v2, "height":I
    sub-int v5, v8, v1

    add-int/lit8 v3, v5, 0x1

    .line 2065
    .local v3, "width":I
    new-instance v4, Ljava/util/ArrayList;

    mul-int v5, v2, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2066
    .local v4, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFCell;>;"
    move v11, v0

    .local v11, "rowIn":I
    :goto_0
    if-gt v11, v9, :cond_3

    .line 2067
    move v7, v1

    .local v7, "colIn":I
    :goto_1
    if-gt v7, v8, :cond_2

    .line 2068
    invoke-virtual {p0, v11}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v10

    .line 2069
    .local v10, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v10, :cond_0

    .line 2070
    invoke-virtual {p0, v11}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v10

    .line 2072
    :cond_0
    invoke-virtual {v10, v7}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v6

    .line 2073
    .local v6, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    if-nez v6, :cond_1

    .line 2074
    invoke-virtual {v10, v7}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v6

    .line 2076
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2066
    .end local v6    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v10    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2079
    .end local v7    # "colIn":I
    :cond_3
    const-class v5, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/util/SSCellRange;->create(IIIILjava/util/List;Ljava/lang/Class;)Lorg/apache/poi/ss/util/SSCellRange;

    move-result-object v5

    return-object v5
.end method

.method private getPatriarch(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 8
    .param p1, "createIfMissing"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1882
    const/4 v2, 0x0

    .line 1883
    .local v2, "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    if-eqz v6, :cond_0

    .line 1884
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-object v3, v2

    .line 1911
    .end local v2    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .local v3, "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    :goto_0
    return-object v5

    .line 1886
    .end local v3    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .restart local v2    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    :cond_0
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v1

    .line 1887
    .local v1, "dm":Lorg/apache/poi/hssf/model/DrawingManager2;
    if-nez v1, :cond_2

    .line 1888
    if-nez p1, :cond_1

    move-object v3, v2

    .line 1889
    .end local v2    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .restart local v3    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    goto :goto_0

    .line 1891
    .end local v3    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .restart local v2    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    :cond_1
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDrawingGroup()V

    .line 1892
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v1

    .line 1895
    :cond_2
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v7, 0x2694

    invoke-virtual {v6, v7}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 1896
    .local v0, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    if-nez v0, :cond_5

    .line 1897
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v4

    .line 1898
    .local v4, "pos":I
    const/4 v6, -0x1

    if-ne v6, v4, :cond_4

    .line 1899
    if-eqz p1, :cond_3

    .line 1900
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v4

    .line 1901
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    check-cast v0, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 1902
    .restart local v0    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .end local v2    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    invoke-direct {v2, p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/EscherAggregate;)V

    .line 1903
    .restart local v2    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->afterCreate()V

    move-object v3, v2

    .end local v2    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .restart local v3    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    move-object v5, v2

    .line 1904
    goto :goto_0

    .end local v3    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .restart local v2    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    :cond_3
    move-object v3, v2

    .line 1906
    .end local v2    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .restart local v3    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    goto :goto_0

    .line 1909
    .end local v3    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .restart local v2    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    :cond_4
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    check-cast v0, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 1911
    .end local v4    # "pos":I
    .restart local v0    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    :cond_5
    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    invoke-direct {v5, p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/EscherAggregate;)V

    move-object v3, v2

    .end local v2    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .restart local v3    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    goto :goto_0
.end method

.method private getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    return-object v0
.end method

.method private getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 14
    .param p1, "rows"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v13, -0x1

    .line 2292
    const/4 v11, 0x7

    invoke-direct {p0, v11}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getBuiltinNameRecord(B)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v9

    .line 2293
    .local v9, "rec":Lorg/apache/poi/hssf/record/NameRecord;
    if-nez v9, :cond_1

    .line 2330
    :cond_0
    :goto_0
    return-object v10

    .line 2297
    :cond_1
    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v7

    .line 2298
    .local v7, "nameDefinition":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-eqz v7, :cond_0

    .line 2302
    sget-object v11, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v11}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v6

    .line 2303
    .local v6, "maxRowIndex":I
    sget-object v11, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v11}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v5

    .line 2305
    .local v5, "maxColIndex":I
    move-object v1, v7

    .local v1, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v8, v1, v3

    .line 2307
    .local v8, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v11, v8, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v11, :cond_3

    move-object v0, v8

    .line 2308
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 2310
    .local v0, "areaPtg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstColumn()I

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastColumn()I

    move-result v11

    if-ne v11, v5, :cond_2

    .line 2312
    if-eqz p1, :cond_3

    .line 2313
    new-instance v10, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstRow()I

    move-result v11

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastRow()I

    move-result v12

    invoke-direct {v10, v11, v12, v13, v13}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 2315
    .local v10, "rowRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    goto :goto_0

    .line 2317
    .end local v10    # "rowRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstRow()I

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastRow()I

    move-result v11

    if-ne v11, v6, :cond_3

    .line 2319
    if-nez p1, :cond_3

    .line 2320
    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstColumn()I

    move-result v11

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastColumn()I

    move-result v12

    invoke-direct {v2, v13, v13, v11, v12}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .local v2, "columnRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    move-object v10, v2

    .line 2322
    goto :goto_0

    .line 2305
    .end local v0    # "areaPtg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    .end local v2    # "columnRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private lookForComment(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;II)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 6
    .param p1, "container"    # Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .prologue
    .line 2171
    invoke-interface {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "object":Ljava/lang/Object;
    move-object v4, v2

    .line 2172
    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 2173
    .local v4, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    instance-of v5, v4, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    if-eqz v5, :cond_1

    .line 2174
    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;

    .end local v4    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    invoke-direct {p0, v4, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->lookForComment(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v3

    .line 2175
    .local v3, "res":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    if-eqz v3, :cond_0

    .line 2176
    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 2187
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "res":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :goto_0
    return-object v3

    .line 2180
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v4    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_1
    instance-of v5, v4, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 2181
    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 2182
    .local v0, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->hasPosition()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v5

    if-ne v5, p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v5

    if-ne v5, p2, :cond_0

    move-object v3, v0

    .line 2183
    goto :goto_0

    .line 2187
    .end local v0    # "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v4    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private notifyRowShifting(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V
    .locals 6
    .param p1, "row"    # Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .prologue
    .line 1580
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Row[rownum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] contains cell(s) included in a multi-cell array formula. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "You cannot change part of an array."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1582
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Cell;

    .local v0, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v1, v0

    .line 1583
    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 1584
    .local v1, "hcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1585
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    goto :goto_0

    .line 1588
    .end local v0    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v1    # "hcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    :cond_1
    return-void
.end method

.method private setPropertiesFromSheet(Lorg/apache/poi/hssf/model/InternalSheet;)V
    .locals 18
    .param p1, "sheet"    # Lorg/apache/poi/hssf/model/InternalSheet;

    .prologue
    .line 179
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getNextRow()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v8

    .line 180
    .local v8, "row":Lorg/apache/poi/hssf/record/RowRecord;
    if-eqz v8, :cond_0

    const/4 v10, 0x1

    .line 182
    .local v10, "rowRecordsAlreadyPresent":Z
    :goto_0
    if-eqz v8, :cond_1

    .line 183
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRowFromRecord(Lorg/apache/poi/hssf/record/RowRecord;)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 185
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getNextRow()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v8

    goto :goto_0

    .line 180
    .end local v10    # "rowRecordsAlreadyPresent":Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 188
    .restart local v10    # "rowRecordsAlreadyPresent":Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getCellValueIterator()Ljava/util/Iterator;

    move-result-object v6

    .line 189
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/CellValueRecordInterface;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 191
    .local v12, "timestart":J
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 192
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v14, 0x1

    const-string v15, "Time at start of cell creating in HSSF sheet = "

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 195
    :cond_2
    const/4 v7, 0x0

    .line 198
    .local v7, "lastrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 199
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 201
    .local v4, "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 202
    .local v2, "cellstart":J
    move-object v5, v7

    .line 204
    .local v5, "hrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v11

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v14

    if-eq v11, v14, :cond_6

    .line 205
    :cond_4
    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v5

    .line 206
    move-object v7, v5

    .line 207
    if-nez v5, :cond_6

    .line 210
    if-eqz v10, :cond_5

    .line 212
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v14, "Unexpected missing row when some rows already present"

    invoke-direct {v11, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 215
    :cond_5
    new-instance v9, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v11

    invoke-direct {v9, v11}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(I)V

    .line 216
    .local v9, "rowRec":Lorg/apache/poi/hssf/record/RowRecord;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/model/InternalSheet;->addRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 217
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRowFromRecord(Lorg/apache/poi/hssf/record/RowRecord;)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v5

    .line 220
    .end local v9    # "rowRec":Lorg/apache/poi/hssf/record/RowRecord;
    :cond_6
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 221
    instance-of v11, v4, Lorg/apache/poi/hssf/record/Record;

    if-eqz v11, :cond_8

    .line 222
    sget-object v14, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v15, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "record id = "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v11, v4

    check-cast v11, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v11}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v15, v11}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 227
    :cond_7
    :goto_2
    invoke-virtual {v5, v4}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCellFromRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 228
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 229
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v14, 0x1

    const-string v15, "record took "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 224
    :cond_8
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v14, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "record = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto :goto_2

    .line 234
    .end local v2    # "cellstart":J
    .end local v4    # "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v5    # "hrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :cond_9
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 235
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v14, 0x1

    const-string/jumbo v15, "total sheet cell creation took "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 238
    :cond_a
    return-void
.end method

.method private setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 30
    .param p1, "rowDef"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "colDef"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 2215
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v29

    .line 2216
    .local v29, "sheetIndex":I
    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v4

    .line 2217
    .local v4, "maxRowIndex":I
    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v16

    .line 2219
    .local v16, "maxColIndex":I
    const/4 v5, -0x1

    .line 2220
    .local v5, "col1":I
    const/4 v6, -0x1

    .line 2221
    .local v6, "col2":I
    const/4 v13, -0x1

    .line 2222
    .local v13, "row1":I
    const/4 v14, -0x1

    .line 2224
    .local v14, "row2":I
    if-eqz p1, :cond_2

    .line 2225
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v13

    .line 2226
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v14

    .line 2227
    const/4 v3, -0x1

    if-ne v13, v3, :cond_0

    const/4 v3, -0x1

    if-ne v14, v3, :cond_1

    :cond_0
    if-gt v13, v14, :cond_1

    if-ltz v13, :cond_1

    if-gt v13, v4, :cond_1

    if-ltz v14, :cond_1

    if-le v14, v4, :cond_2

    .line 2230
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid row range specification"

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2233
    :cond_2
    if-eqz p2, :cond_5

    .line 2234
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v5

    .line 2235
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v6

    .line 2236
    const/4 v3, -0x1

    if-ne v5, v3, :cond_3

    const/4 v3, -0x1

    if-ne v6, v3, :cond_4

    :cond_3
    if-gt v5, v6, :cond_4

    if-ltz v5, :cond_4

    move/from16 v0, v16

    if-gt v5, v0, :cond_4

    if-ltz v6, :cond_4

    move/from16 v0, v16

    if-le v6, v0, :cond_5

    .line 2239
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid column range specification"

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2243
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v11

    .line 2246
    .local v11, "externSheetIndex":S
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    const/16 v28, 0x1

    .line 2247
    .local v28, "setBoth":Z
    :goto_0
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    const/16 v27, 0x1

    .line 2249
    .local v27, "removeAll":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    const/4 v7, 0x7

    move/from16 v0, v29

    invoke-virtual {v3, v7, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v23

    .line 2251
    .local v23, "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    if-eqz v27, :cond_9

    .line 2252
    if-eqz v23, :cond_6

    .line 2253
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->removeName(Lorg/apache/poi/hssf/usermodel/HSSFName;)V

    .line 2288
    :cond_6
    :goto_2
    return-void

    .line 2246
    .end local v23    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .end local v27    # "removeAll":Z
    .end local v28    # "setBoth":Z
    :cond_7
    const/16 v28, 0x0

    goto :goto_0

    .line 2247
    .restart local v28    # "setBoth":Z
    :cond_8
    const/16 v27, 0x0

    goto :goto_1

    .line 2257
    .restart local v23    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .restart local v27    # "removeAll":Z
    :cond_9
    if-nez v23, :cond_a

    .line 2258
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    const/4 v7, 0x7

    move/from16 v0, v29

    invoke-virtual {v3, v7, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v23

    .line 2262
    :cond_a
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2263
    .local v25, "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    if-eqz v28, :cond_b

    .line 2264
    const/16 v22, 0x17

    .line 2265
    .local v22, "exprsSize":I
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    const/16 v7, 0x17

    invoke-direct {v3, v7}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2267
    .end local v22    # "exprsSize":I
    :cond_b
    if-eqz p2, :cond_c

    .line 2268
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v11}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(IIIIZZZZI)V

    .line 2270
    .local v2, "colArea":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2272
    .end local v2    # "colArea":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_c
    if-eqz p1, :cond_d

    .line 2273
    new-instance v12, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(IIIIZZZZI)V

    .line 2275
    .local v12, "rowArea":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2277
    .end local v12    # "rowArea":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_d
    if-eqz v28, :cond_e

    .line 2278
    sget-object v3, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2281
    :cond_e
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-object/from16 v26, v0

    .line 2282
    .local v26, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-interface/range {v25 .. v26}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2283
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2285
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPrintSetup()Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;

    move-result-object v24

    .line 2286
    .local v24, "printSetup":Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->setValidSettings(Z)V

    .line 2287
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    goto :goto_2
.end method

.method private validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 12
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 708
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    .line 709
    .local v4, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    .line 710
    .local v3, "firstColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v6

    .line 711
    .local v6, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v5

    .line 712
    .local v5, "lastColumn":I
    move v9, v4

    .local v9, "rowIn":I
    :goto_0
    if-gt v9, v6, :cond_4

    .line 713
    move v2, v3

    .local v2, "colIn":I
    :goto_1
    if-gt v2, v5, :cond_3

    .line 714
    invoke-virtual {p0, v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v8

    .line 715
    .local v8, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v8, :cond_1

    .line 713
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {v8, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    .line 718
    .local v1, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 721
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 722
    .local v0, "arrayRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getNumberOfCells()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v10

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(II)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v10

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 725
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The range "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " intersects with a multi-cell array formula. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "You cannot merge cells of an array."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 727
    .local v7, "msg":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 712
    .end local v0    # "arrayRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v1    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 733
    .end local v2    # "colIn":I
    :cond_4
    return-void
.end method


# virtual methods
.method public addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 5
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 695
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 699
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 701
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->addMergedRegion(IIII)I

    move-result v0

    return v0
.end method

.method public addMergedRegion(Lorg/apache/poi/ss/util/Region;)I
    .locals 5
    .param p1, "region"    # Lorg/apache/poi/ss/util/Region;

    .prologue
    .line 681
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/Region;->getRowFrom()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/Region;->getColumnFrom()S

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/Region;->getRowTo()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/Region;->getColumnTo()S

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->addMergedRegion(IIII)I

    move-result v0

    return v0
.end method

.method public addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)V
    .locals 5
    .param p1, "dataValidation"    # Lorg/apache/poi/ss/usermodel/DataValidation;

    .prologue
    .line 444
    if-nez p1, :cond_0

    .line 445
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "objValidation must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v2, p1

    .line 447
    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;

    .line 448
    .local v2, "hssfDataValidation":Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalSheet;->getOrCreateDataValidityTable()Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    move-result-object v1

    .line 450
    .local v1, "dvt":Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
    invoke-virtual {v2, p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->createDVRecord(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/record/DVRecord;

    move-result-object v0

    .line 451
    .local v0, "dvRecord":Lorg/apache/poi/hssf/record/DVRecord;
    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->addDataValidation(Lorg/apache/poi/hssf/record/DVRecord;)V

    .line 452
    return-void
.end method

.method public autoSizeColumn(I)V
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 2001
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->autoSizeColumn(IZ)V

    .line 2002
    return-void
.end method

.method public autoSizeColumn(IZ)V
    .locals 6
    .param p1, "column"    # I
    .param p2, "useMergedCells"    # Z

    .prologue
    .line 2018
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D

    move-result-wide v2

    .line 2020
    .local v2, "width":D
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    .line 2021
    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    mul-double/2addr v2, v4

    .line 2022
    const v0, 0xff00

    .line 2023
    .local v0, "maxColumnWidth":I
    int-to-double v4, v0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 2024
    int-to-double v2, v0

    .line 2026
    :cond_0
    double-to-int v1, v2

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setColumnWidth(II)V

    .line 2029
    .end local v0    # "maxColumnWidth":I
    :cond_1
    return-void
.end method

.method cloneSheet(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 6
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .prologue
    const/16 v5, 0xec

    .line 141
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 142
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->cloneSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/model/InternalSheet;)V

    .line 143
    .local v3, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    iget-object v4, v3, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v2

    .line 144
    .local v2, "pos":I
    iget-object v4, v3, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/DrawingRecord;

    .line 145
    .local v0, "dr":Lorg/apache/poi/hssf/record/DrawingRecord;
    if-eqz v0, :cond_0

    .line 146
    iget-object v4, v3, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    .line 150
    .local v1, "patr":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    iget-object v4, v3, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 151
    iput-object v1, v3, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 153
    .end local v1    # "patr":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    :cond_1
    return-object v3
.end method

.method public createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 1

    .prologue
    .line 1877
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPatriarch(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 1878
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    return-object v0
.end method

.method public bridge synthetic createDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    return-object v0
.end method

.method public createFreezePane(II)V
    .locals 0
    .param p1, "colSplit"    # I
    .param p2, "rowSplit"    # I

    .prologue
    .line 1623
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createFreezePane(IIII)V

    .line 1624
    return-void
.end method

.method public createFreezePane(IIII)V
    .locals 2
    .param p1, "colSplit"    # I
    .param p2, "rowSplit"    # I
    .param p3, "leftmostColumn"    # I
    .param p4, "topRow"    # I

    .prologue
    .line 1603
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateColumn(I)V

    .line 1604
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateRow(I)V

    .line 1605
    if-ge p3, p1, :cond_0

    .line 1606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leftmostColumn parameter must not be less than colSplit parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1607
    :cond_0
    if-ge p4, p2, :cond_1

    .line 1608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "topRow parameter must not be less than leftmostColumn parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1609
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4, p3}, Lorg/apache/poi/hssf/model/InternalSheet;->createFreezePane(IIII)V

    .line 1610
    return-void
.end method

.method public createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 3
    .param p1, "rownum"    # I

    .prologue
    .line 249
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)V

    .line 251
    .local v0, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDefaultRowHeight()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setHeight(S)V

    .line 252
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    .line 254
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->addRow(Lorg/apache/poi/hssf/usermodel/HSSFRow;Z)V

    .line 255
    return-object v0
.end method

.method public bridge synthetic createRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public createSplitPane(IIIII)V
    .locals 6
    .param p1, "xSplitPos"    # I
    .param p2, "ySplitPos"    # I
    .param p3, "leftmostColumn"    # I
    .param p4, "topRow"    # I
    .param p5, "activePane"    # I

    .prologue
    .line 1641
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/hssf/model/InternalSheet;->createSplitPane(IIIII)V

    .line 1642
    return-void
.end method

.method public dumpDrawingRecords(Z)V
    .locals 8
    .param p1, "fat"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1816
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    .line 1818
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v5

    const/16 v6, 0x2694

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 1819
    .local v3, "r":Lorg/apache/poi/hssf/record/EscherAggregate;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/EscherAggregate;->getEscherRecords()Ljava/util/List;

    move-result-object v1

    .line 1820
    .local v1, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    new-instance v4, Ljava/io/PrintWriter;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1821
    .local v4, "w":Ljava/io/PrintWriter;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1822
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    .line 1823
    .local v0, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    if-eqz p1, :cond_0

    .line 1824
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1826
    :cond_0
    invoke-virtual {v0, v4, v7}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    goto :goto_0

    .line 1829
    .end local v0    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    :cond_1
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 1830
    return-void
.end method

.method protected findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 2163
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    .line 2164
    .local v0, "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    if-nez v0, :cond_0

    .line 2165
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    .line 2167
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->lookForComment(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v1

    return-object v1
.end method

.method public getAlternateExpression()Z
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getAlternateExpression()Z

    move-result v0

    return v0
.end method

.method public getAlternateFormula()Z
    .locals 2

    .prologue
    .line 1014
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getAlternateFormula()Z

    move-result v0

    return v0
.end method

.method public getAutobreaks()Z
    .locals 2

    .prologue
    .line 1024
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getAutobreaks()Z

    move-result v0

    return v0
.end method

.method public getCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 2037
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCellComment(II)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public getColumnBreaks()[I
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getColumnOutlineLevel(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 2350
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getColumnOutlineLevel(I)I

    move-result v0

    return v0
.end method

.method public getColumnStyle(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 646
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    int-to-short v3, p1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->getXFIndexForColAt(S)S

    move-result v0

    .line 648
    .local v0, "styleIndex":S
    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 650
    const/4 v2, 0x0

    .line 654
    :goto_0
    return-object v2

    .line 653
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v1

    .line 654
    .local v1, "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    goto :goto_0
.end method

.method public bridge synthetic getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getColumnStyle(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getColumnWidth(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getColumnWidth(I)I

    move-result v0

    return v0
.end method

.method public getColumnWidth(S)S
    .locals 1
    .param p1, "columnIndex"    # S

    .prologue
    .line 480
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getColumnWidth(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getColumnWidthInPixels(I)F
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 569
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getColumnWidth(I)I

    move-result v0

    .line 570
    .local v0, "cw":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDefaultColumnWidth()I

    move-result v3

    mul-int/lit16 v1, v3, 0x100

    .line 571
    .local v1, "def":I
    if-ne v0, v1, :cond_0

    const/high16 v2, 0x42000000    # 32.0f

    .line 573
    .local v2, "px":F
    :goto_0
    int-to-float v3, v0

    div-float/2addr v3, v2

    return v3

    .line 571
    .end local v2    # "px":F
    :cond_0
    const v2, 0x42123d71    # 36.56f

    goto :goto_0
.end method

.method public getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;
    .locals 1

    .prologue
    .line 2119
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidationHelper;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public getDataValidations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalSheet;->getOrCreateDataValidityTable()Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    move-result-object v0

    .line 411
    .local v0, "dvt":Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v1, "hssfValidations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;>;"
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V

    .line 434
    .local v2, "visitor":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 435
    return-object v1
.end method

.method public getDefaultColumnWidth()I
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultColumnWidth()I

    move-result v0

    return v0
.end method

.method public getDefaultRowHeight()S
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultRowHeight()S

    move-result v0

    return v0
.end method

.method public getDefaultRowHeightInPoints()F
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultRowHeight()S

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getDialog()Z
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getDialog()Z

    move-result v0

    return v0
.end method

.method public getDisplayGuts()Z
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getDisplayGuts()Z

    move-result v0

    return v0
.end method

.method public getDrawingEscherAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1837
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    .line 1841
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1855
    :cond_0
    :goto_0
    return-object v0

    .line 1845
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v1

    .line 1848
    .local v1, "found":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1854
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v3, 0x2694

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 1855
    .local v0, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    goto :goto_0
.end method

.method public getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 1

    .prologue
    .line 1864
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPatriarch(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 1865
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    return-object v0
.end method

.method public getFirstRowNum()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    return v0
.end method

.method public getFitToPage()Z
    .locals 2

    .prologue
    .line 1081
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getFitToPage()Z

    move-result v0

    return v0
.end method

.method public getFooter()Lorg/apache/poi/hssf/usermodel/HSSFFooter;
    .locals 2

    .prologue
    .line 1138
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFFooter;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFooter;-><init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;)V

    return-object v0
.end method

.method public bridge synthetic getFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFooter()Lorg/apache/poi/hssf/usermodel/HSSFFooter;

    move-result-object v0

    return-object v0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getUncalced()Z

    move-result v0

    return v0
.end method

.method public getHeader()Lorg/apache/poi/hssf/usermodel/HSSFHeader;
    .locals 2

    .prologue
    .line 1134
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFHeader;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHeader;-><init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;)V

    return-object v0
.end method

.method public bridge synthetic getHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHeader()Lorg/apache/poi/hssf/usermodel/HSSFHeader;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontallyCenter()Z
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HCenterRecord;->getHCenter()Z

    move-result v0

    return v0
.end method

.method public getLastRowNum()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    return v0
.end method

.method public getLeftCol()S
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getLeftCol()S

    move-result v0

    return v0
.end method

.method public getMargin(S)D
    .locals 2
    .param p1, "margin"    # S

    .prologue
    .line 1182
    packed-switch p1, :pswitch_data_0

    .line 1188
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getMargin(S)D

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 1184
    :pswitch_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFooterMargin()D

    move-result-wide v0

    goto :goto_0

    .line 1186
    :pswitch_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getHeaderMargin()D

    move-result-wide v0

    goto :goto_0

    .line 1182
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRegionAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMergedRegionAt(I)Lorg/apache/poi/hssf/util/Region;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 857
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 859
    .local v0, "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    new-instance v1, Lorg/apache/poi/hssf/util/Region;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v5

    int-to-short v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/hssf/util/Region;-><init>(ISIS)V

    return-object v1
.end method

.method public getNumMergedRegions()I
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getNumMergedRegions()I

    move-result v0

    return v0
.end method

.method public getObjectProtect()Z
    .locals 1

    .prologue
    .line 1237
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isObjectProtected()Z

    move-result v0

    return v0
.end method

.method public getPaneInformation()Lorg/apache/poi/hssf/util/PaneInformation;
    .locals 1

    .prologue
    .line 1650
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPaneInformation()Lorg/apache/poi/hssf/util/PaneInformation;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()S
    .locals 1

    .prologue
    .line 1228
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->getPasswordHash()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getPhysicalNumberOfRows()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public getPrintSetup()Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;
    .locals 2

    .prologue
    .line 1130
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;)V

    return-object v0
.end method

.method public bridge synthetic getPrintSetup()Lorg/apache/poi/ss/usermodel/PrintSetup;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPrintSetup()Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;

    move-result-object v0

    return-object v0
.end method

.method public getProtect()Z
    .locals 1

    .prologue
    .line 1221
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isSheetProtected()Z

    move-result v0

    return v0
.end method

.method public getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .prologue
    .line 2197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .prologue
    .line 2192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 2
    .param p1, "rowIndex"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    return-object v0
.end method

.method public bridge synthetic getRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public getRowBreaks()[I
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getRowSumsBelow()Z
    .locals 2

    .prologue
    .line 1091
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getRowSumsBelow()Z

    move-result v0

    return v0
.end method

.method public getRowSumsRight()Z
    .locals 2

    .prologue
    .line 1101
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getRowSumsRight()Z

    move-result v0

    return v0
.end method

.method public getScenarioProtect()Z
    .locals 1

    .prologue
    .line 1246
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isScenarioProtected()Z

    move-result v0

    return v0
.end method

.method getSheet()Lorg/apache/poi/hssf/model/InternalSheet;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    return-object v0
.end method

.method public getSheetConditionalFormatting()Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;
    .locals 1

    .prologue
    .line 2041
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public bridge synthetic getSheetConditionalFormatting()Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheetConditionalFormatting()Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2050
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v1

    .line 2051
    .local v1, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    invoke-virtual {v1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    .line 2052
    .local v0, "idx":I
    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTopRow()S
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getTopRow()S

    move-result v0

    return v0
.end method

.method public getVerticallyCenter()Z
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/VCenterRecord;->getVCenter()Z

    move-result v0

    return v0
.end method

.method public getVerticallyCenter(Z)Z
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 786
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getVerticallyCenter()Z

    move-result v0

    return v0
.end method

.method public getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    return-object v0
.end method

.method public bridge synthetic getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public groupColumn(II)V
    .locals 2
    .param p1, "fromColumn"    # I
    .param p2, "toColumn"    # I

    .prologue
    .line 1952
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupColumnRange(IIZ)V

    .line 1953
    return-void
.end method

.method public groupColumn(SS)V
    .locals 2
    .param p1, "fromColumn"    # S
    .param p2, "toColumn"    # S

    .prologue
    const v1, 0xffff

    .line 1925
    and-int v0, p1, v1

    and-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->groupColumn(II)V

    .line 1926
    return-void
.end method

.method public groupRow(II)V
    .locals 2
    .param p1, "fromRow"    # I
    .param p2, "toRow"    # I

    .prologue
    .line 1966
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupRowRange(IIZ)V

    .line 1967
    return-void
.end method

.method protected insertChartRecords(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1575
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0x23e

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 1576
    .local v0, "window2Loc":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1577
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 1163
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->isActive()Z

    move-result v0

    return v0
.end method

.method public isColumnBroken(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 1777
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isColumnBroken(I)Z

    move-result v0

    return v0
.end method

.method public isColumnHidden(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->isColumnHidden(I)Z

    move-result v0

    return v0
.end method

.method public isColumnHidden(S)Z
    .locals 1
    .param p1, "columnIndex"    # S

    .prologue
    .line 466
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isColumnHidden(I)Z

    move-result v0

    return v0
.end method

.method public isDisplayFormulas()Z
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isDisplayFormulas()Z

    move-result v0

    return v0
.end method

.method public isDisplayGridlines()Z
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isDisplayGridlines()Z

    move-result v0

    return v0
.end method

.method public isDisplayRowColHeadings()Z
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isDisplayRowColHeadings()Z

    move-result v0

    return v0
.end method

.method public isDisplayZeros()Z
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayZeros()Z

    move-result v0

    return v0
.end method

.method public isGridsPrinted()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isGridsPrinted()Z

    move-result v0

    return v0
.end method

.method public isPrintGridlines()Z
    .locals 1

    .prologue
    .line 1111
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPrintGridlines()Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;->getPrintGridlines()Z

    move-result v0

    return v0
.end method

.method public isRightToLeft()Z
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getArabic()Z

    move-result v0

    return v0
.end method

.method public isRowBroken(I)Z
    .locals 1
    .param p1, "row"    # I

    .prologue
    .line 1727
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isRowBroken(I)Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getSelected()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation

    .prologue
    .line 886
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected preSerialize()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->preSerialize()V

    .line 163
    :cond_0
    return-void
.end method

.method public protectSheet(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1255
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->protectSheet(Ljava/lang/String;ZZ)V

    .line 1256
    return-void
.end method

.method public removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 10
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange",
            "<",
            "Lorg/apache/poi/hssf/usermodel/HSSFCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2099
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v7

    if-eq v7, p0, :cond_0

    .line 2100
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Specified cell does not belong to this sheet."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move-object v7, p1

    .line 2102
    check-cast v7, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v4

    .line 2103
    .local v4, "rec":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    instance-of v7, v4, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-nez v7, :cond_1

    .line 2104
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v7, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v5

    .line 2105
    .local v5, "ref":Ljava/lang/String;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cell "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not part of an array formula."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v5    # "ref":Ljava/lang/String;
    :cond_1
    move-object v1, v4

    .line 2107
    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 2108
    .local v1, "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v7

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->removeArrayFormula(II)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    .line 2110
    .local v3, "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v6

    .line 2112
    .local v6, "result":Lorg/apache/poi/ss/usermodel/CellRange;, "Lorg/apache/poi/ss/usermodel/CellRange<Lorg/apache/poi/hssf/usermodel/HSSFCell;>;"
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/CellRange;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Cell;

    .line 2113
    .local v0, "c":Lorg/apache/poi/ss/usermodel/Cell;
    const/4 v7, 0x3

    invoke-interface {v0, v7}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(I)V

    goto :goto_0

    .line 2115
    .end local v0    # "c":Lorg/apache/poi/ss/usermodel/Cell;
    :cond_2
    return-object v6
.end method

.method public removeColumnBreak(I)V
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 1786
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->removeColumnBreak(I)V

    .line 1787
    return-void
.end method

.method public removeMergedRegion(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 840
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->removeMergedRegion(I)V

    .line 841
    return-void
.end method

.method public removeRow(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 9
    .param p1, "row"    # Lorg/apache/poi/ss/usermodel/Row;

    .prologue
    .line 279
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 280
    .local v1, "hrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v7

    if-eq v7, p0, :cond_0

    .line 281
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Specified row does not belong to this sheet"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 283
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Cell;

    .local v0, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v6, v0

    .line 284
    check-cast v6, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 285
    .local v6, "xcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Row[rownum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] contains cell(s) included in a multi-cell array formula. You cannot change part of an array."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "msg":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v0    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v6    # "xcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    :cond_2
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 292
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 293
    .local v3, "key":Ljava/lang/Integer;
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v7, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 294
    .local v5, "removedRow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-eq v5, p1, :cond_3

    .line 296
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Specified row does not belong to this sheet"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 298
    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 299
    iget v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    invoke-direct {p0, v7}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findLastRow(I)I

    move-result v7

    iput v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    .line 301
    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFirstRowNum()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 302
    iget v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    invoke-direct {p0, v7}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findFirstRow(I)I

    move-result v7

    iput v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 304
    :cond_5
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/poi/hssf/model/InternalSheet;->removeRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 306
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v5    # "removedRow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :cond_6
    return-void
.end method

.method public removeRowBreak(I)V
    .locals 1
    .param p1, "row"    # I

    .prologue
    .line 1734
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->removeRowBreak(I)V

    .line 1735
    return-void
.end method

.method public rowIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation

    .prologue
    .line 877
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 878
    .local v0, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    return-object v0
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "sel"    # Z

    .prologue
    .line 1172
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setActive(Z)V

    .line 1173
    return-void
.end method

.method public setAlternativeExpression(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 906
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 909
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAlternateExpression(Z)V

    .line 910
    return-void
.end method

.method public setAlternativeFormula(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 918
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 921
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAlternateFormula(Z)V

    .line 922
    return-void
.end method

.method public setArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 9
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange",
            "<",
            "Lorg/apache/poi/hssf/usermodel/HSSFCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2084
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v7, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v6

    .line 2085
    .local v6, "sheetIndex":I
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    const/4 v8, 0x2

    invoke-static {p1, v7, v8, v6}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    .line 2086
    .local v5, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v2

    .line 2088
    .local v2, "cells":Lorg/apache/poi/ss/usermodel/CellRange;, "Lorg/apache/poi/ss/usermodel/CellRange<Lorg/apache/poi/hssf/usermodel/HSSFCell;>;"
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/CellRange;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 2089
    .local v1, "c":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    goto :goto_0

    .line 2091
    .end local v1    # "c":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    :cond_0
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/CellRange;->getTopLeftCell()Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 2092
    .local v4, "mainArrayFormulaCell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 2093
    .local v0, "agg":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v0, p2, v5}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2094
    return-object v2
.end method

.method public setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;
    .locals 28
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 2123
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v27

    .line 2124
    .local v27, "workbook":Lorg/apache/poi/hssf/model/InternalWorkbook;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v11

    .line 2126
    .local v11, "sheetIndex":I
    const/16 v4, 0xd

    add-int/lit8 v5, v11, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v23

    .line 2128
    .local v23, "name":Lorg/apache/poi/hssf/record/NameRecord;
    if-nez v23, :cond_0

    .line 2129
    const/16 v4, 0xd

    add-int/lit8 v5, v11, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v23

    .line 2132
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v3

    .line 2135
    .local v3, "firstRow":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 2136
    const/4 v3, 0x0

    .line 2140
    :cond_1
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v11}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(IIIIZZZZI)V

    .line 2143
    .local v2, "ptg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2145
    new-instance v26, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;

    invoke-direct/range {v26 .. v26}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;-><init>()V

    .line 2147
    .local v26, "r":Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v5

    sub-int v24, v4, v5

    .line 2148
    .local v24, "numcols":I
    move/from16 v0, v24

    int-to-short v4, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;->setNumEntries(S)V

    .line 2149
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v22

    .line 2150
    .local v22, "idx":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v4

    move/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v4, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2153
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v25

    .line 2154
    .local v25, "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v21

    .local v21, "col":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    move/from16 v0, v21

    if-gt v0, v4, :cond_2

    .line 2155
    new-instance v12, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v17, v0

    add-int/lit8 v4, v21, 0x1

    int-to-short v0, v4

    move/from16 v19, v0

    add-int/lit8 v20, v3, 0x1

    move/from16 v18, v3

    invoke-direct/range {v12 .. v20}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>(IIIISISI)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createComboBox(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    .line 2154
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 2159
    :cond_2
    new-instance v4, Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v4
.end method

.method public bridge synthetic setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/AutoFilter;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;

    move-result-object v0

    return-object v0
.end method

.method public setAutobreaks(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 930
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 933
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAutobreaks(Z)V

    .line 934
    return-void
.end method

.method public setColumnBreak(I)V
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 1766
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateColumn(I)V

    .line 1767
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    int-to-short v1, p1

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setColumnBreak(SSS)V

    .line 1768
    return-void
.end method

.method public setColumnGroupCollapsed(IZ)V
    .locals 1
    .param p1, "columnNumber"    # I
    .param p2, "collapsed"    # Z

    .prologue
    .line 1942
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumnGroupCollapsed(IZ)V

    .line 1943
    return-void
.end method

.method public setColumnGroupCollapsed(SZ)V
    .locals 1
    .param p1, "columnNumber"    # S
    .param p2, "collapsed"    # Z

    .prologue
    .line 1918
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setColumnGroupCollapsed(IZ)V

    .line 1919
    return-void
.end method

.method public setColumnHidden(IZ)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "hidden"    # Z

    .prologue
    .line 497
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumnHidden(IZ)V

    .line 498
    return-void
.end method

.method public setColumnHidden(SZ)V
    .locals 1
    .param p1, "columnIndex"    # S
    .param p2, "hidden"    # Z

    .prologue
    .line 459
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setColumnHidden(IZ)V

    .line 460
    return-void
.end method

.method public setColumnWidth(II)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "width"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumnWidth(II)V

    .line 556
    return-void
.end method

.method public setColumnWidth(SS)V
    .locals 2
    .param p1, "columnIndex"    # S
    .param p2, "width"    # S

    .prologue
    const v1, 0xffff

    .line 473
    and-int v0, p1, v1

    and-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setColumnWidth(II)V

    .line 474
    return-void
.end method

.method public setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 2
    .param p1, "column"    # I
    .param p2, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .prologue
    .line 1988
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    check-cast p2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .end local p2    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultColumnStyle(II)V

    .line 1989
    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultColumnWidth(I)V

    .line 594
    return-void
.end method

.method public setDefaultColumnWidth(S)V
    .locals 1
    .param p1, "width"    # S

    .prologue
    .line 487
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setDefaultColumnWidth(I)V

    .line 488
    return-void
.end method

.method public setDefaultRowHeight(S)V
    .locals 1
    .param p1, "height"    # S

    .prologue
    .line 626
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultRowHeight(S)V

    .line 627
    return-void
.end method

.method public setDefaultRowHeightInPoints(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 637
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultRowHeight(S)V

    .line 638
    return-void
.end method

.method public setDialog(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 942
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 945
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setDialog(Z)V

    .line 946
    return-void
.end method

.method public setDisplayFormulas(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1677
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDisplayFormulas(Z)V

    .line 1678
    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1659
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDisplayGridlines(Z)V

    .line 1660
    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 954
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 957
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setDisplayGuts(Z)V

    .line 958
    return-void
.end method

.method public setDisplayRowColHeadings(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1695
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDisplayRowColHeadings(Z)V

    .line 1696
    return-void
.end method

.method public setDisplayZeros(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1072
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setDisplayZeros(Z)V

    .line 1073
    return-void
.end method

.method public setFitToPage(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 966
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 969
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setFitToPage(Z)V

    .line 970
    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 756
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setUncalced(Z)V

    .line 757
    return-void
.end method

.method public setGridsPrinted(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 674
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setGridsPrinted(Z)V

    .line 675
    return-void
.end method

.method public setHorizontallyCenter(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 803
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HCenterRecord;->setHCenter(Z)V

    .line 804
    return-void
.end method

.method public setMargin(SD)V
    .locals 2
    .param p1, "margin"    # S
    .param p2, "size"    # D

    .prologue
    .line 1199
    packed-switch p1, :pswitch_data_0

    .line 1207
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setMargin(SD)V

    .line 1209
    :goto_0
    return-void

    .line 1201
    :pswitch_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFooterMargin(D)V

    goto :goto_0

    .line 1204
    :pswitch_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setHeaderMargin(D)V

    goto :goto_0

    .line 1199
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPrintGridlines(Z)V
    .locals 1
    .param p1, "newPrintGridlines"    # Z

    .prologue
    .line 1121
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPrintGridlines()Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;->setPrintGridlines(Z)V

    .line 1122
    return-void
.end method

.method public setRepeatingColumns(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "columnRangeRef"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 2208
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 2209
    .local v0, "rowRangeRef":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 2210
    return-void
.end method

.method public setRepeatingRows(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "rowRangeRef"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    .line 2202
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 2203
    .local v0, "columnRangeRef":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 2204
    return-void
.end method

.method public setRightToLeft(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 821
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setArabic(Z)V

    .line 822
    return-void
.end method

.method public setRowBreak(I)V
    .locals 3
    .param p1, "row"    # I

    .prologue
    .line 1719
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateRow(I)V

    .line 1720
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setRowBreak(ISS)V

    .line 1721
    return-void
.end method

.method public setRowGroupCollapsed(IZ)V
    .locals 1
    .param p1, "rowIndex"    # I
    .param p2, "collapse"    # Z

    .prologue
    .line 1974
    if-eqz p2, :cond_0

    .line 1975
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->collapseRow(I)V

    .line 1979
    :goto_0
    return-void

    .line 1977
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->expandRow(I)V

    goto :goto_0
.end method

.method public setRowSumsBelow(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 978
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 981
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setRowSumsBelow(Z)V

    .line 983
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAlternateExpression(Z)V

    .line 984
    return-void
.end method

.method public setRowSumsRight(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 992
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 995
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setRowSumsRight(Z)V

    .line 996
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "sel"    # Z

    .prologue
    .line 1156
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setSelected(Z)V

    .line 1157
    return-void
.end method

.method public setVerticallyCenter(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 777
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/VCenterRecord;->setVCenter(Z)V

    .line 778
    return-void
.end method

.method public setZoom(II)V
    .locals 3
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .prologue
    const v2, 0xffff

    const/4 v1, 0x1

    .line 1267
    if-lt p1, v1, :cond_0

    if-le p1, v2, :cond_1

    .line 1268
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Numerator must be greater than 0 and less than 65536"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1269
    :cond_1
    if-lt p2, v1, :cond_2

    if-le p2, v2, :cond_3

    .line 1270
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Denominator must be greater than 0 and less than 65536"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1272
    :cond_3
    new-instance v0, Lorg/apache/poi/hssf/record/SCLRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/SCLRecord;-><init>()V

    .line 1273
    .local v0, "sclRecord":Lorg/apache/poi/hssf/record/SCLRecord;
    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/SCLRecord;->setNumerator(S)V

    .line 1274
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/SCLRecord;->setDenominator(S)V

    .line 1275
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->setSCLRecord(Lorg/apache/poi/hssf/record/SCLRecord;)V

    .line 1276
    return-void
.end method

.method protected shiftMerged(IIIZ)V
    .locals 10
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .param p4, "isRow"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1334
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    .local v6, "shiftedRegions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getNumMergedRegions()I

    move-result v9

    if-ge v0, v9, :cond_6

    .line 1337
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    .line 1339
    .local v4, "merged":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v9

    if-ge v9, p1, :cond_0

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v9

    if-lt v9, p1, :cond_3

    :cond_0
    move v2, v8

    .line 1340
    .local v2, "inStart":Z
    :goto_1
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v9

    if-le v9, p2, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v9

    if-gt v9, p2, :cond_4

    :cond_1
    move v1, v8

    .line 1343
    .local v1, "inEnd":Z
    :goto_2
    if-eqz v2, :cond_2

    if-nez v1, :cond_5

    .line 1336
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "inEnd":Z
    .end local v2    # "inStart":Z
    :cond_3
    move v2, v7

    .line 1339
    goto :goto_1

    .restart local v2    # "inStart":Z
    :cond_4
    move v1, v7

    .line 1340
    goto :goto_2

    .line 1348
    .restart local v1    # "inEnd":Z
    :cond_5
    add-int/lit8 v9, p1, -0x1

    invoke-static {v4, v9, v7}, Lorg/apache/poi/ss/util/SheetUtil;->containsCell(Lorg/apache/poi/ss/util/CellRangeAddress;II)Z

    move-result v9

    if-nez v9, :cond_2

    add-int/lit8 v9, p2, 0x1

    invoke-static {v4, v9, v7}, Lorg/apache/poi/ss/util/SheetUtil;->containsCell(Lorg/apache/poi/ss/util/CellRangeAddress;II)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1350
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v9

    add-int/2addr v9, p3

    invoke-virtual {v4, v9}, Lorg/apache/poi/ss/util/CellRangeAddress;->setFirstRow(I)V

    .line 1351
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v9

    add-int/2addr v9, p3

    invoke-virtual {v4, v9}, Lorg/apache/poi/ss/util/CellRangeAddress;->setLastRow(I)V

    .line 1353
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->removeMergedRegion(I)V

    .line 1355
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1360
    .end local v1    # "inEnd":Z
    .end local v2    # "inStart":Z
    .end local v4    # "merged":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1361
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1362
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 1364
    .local v5, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {p0, v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    goto :goto_4

    .line 1366
    .end local v5    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_7
    return-void
.end method

.method public shiftRows(III)V
    .locals 6
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I

    .prologue
    const/4 v4, 0x0

    .line 1384
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->shiftRows(IIIZZ)V

    .line 1385
    return-void
.end method

.method public shiftRows(IIIZZ)V
    .locals 7
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .param p4, "copyRowHeight"    # Z
    .param p5, "resetOriginalRowHeight"    # Z

    .prologue
    .line 1405
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->shiftRows(IIIZZZ)V

    .line 1406
    return-void
.end method

.method public shiftRows(IIIZZZ)V
    .locals 28
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .param p4, "copyRowHeight"    # Z
    .param p5, "resetOriginalRowHeight"    # Z
    .param p6, "moveComments"    # Z

    .prologue
    .line 1429
    if-gez p3, :cond_3

    .line 1430
    move/from16 v21, p1

    .line 1431
    .local v21, "s":I
    const/4 v11, 0x1

    .line 1441
    .local v11, "inc":I
    :goto_0
    if-eqz p6, :cond_4

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/poi/hssf/model/InternalSheet;->getNoteRecords()[Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v14

    .line 1447
    .local v14, "noteRecs":[Lorg/apache/poi/hssf/record/NoteRecord;
    :goto_1
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->shiftMerged(IIIZ)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->shiftRowBreaks(III)V

    .line 1450
    move/from16 v20, v21

    .local v20, "rowNum":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, p1

    if-lt v0, v1, :cond_c

    move/from16 v0, v20

    move/from16 v1, p2

    if-gt v0, v1, :cond_c

    if-ltz v20, :cond_c

    const/high16 v26, 0x10000

    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 1451
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v18

    .line 1455
    .local v18, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->notifyRowShifting(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V

    .line 1457
    :cond_0
    add-int v26, v20, p3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v19

    .line 1458
    .local v19, "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v19, :cond_1

    .line 1459
    add-int v26, v20, p3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v19

    .line 1467
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeAllCells()V

    .line 1471
    if-nez v18, :cond_5

    .line 1450
    :cond_2
    add-int v20, v20, v11

    goto :goto_2

    .line 1432
    .end local v11    # "inc":I
    .end local v14    # "noteRecs":[Lorg/apache/poi/hssf/record/NoteRecord;
    .end local v18    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v19    # "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v20    # "rowNum":I
    .end local v21    # "s":I
    :cond_3
    if-lez p3, :cond_15

    .line 1433
    move/from16 v21, p2

    .line 1434
    .restart local v21    # "s":I
    const/4 v11, -0x1

    .restart local v11    # "inc":I
    goto :goto_0

    .line 1444
    :cond_4
    sget-object v14, Lorg/apache/poi/hssf/record/NoteRecord;->EMPTY_ARRAY:[Lorg/apache/poi/hssf/record/NoteRecord;

    .restart local v14    # "noteRecs":[Lorg/apache/poi/hssf/record/NoteRecord;
    goto :goto_1

    .line 1474
    .restart local v18    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .restart local v19    # "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .restart local v20    # "rowNum":I
    :cond_5
    if-eqz p4, :cond_6

    .line 1475
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getHeight()S

    move-result v26

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setHeight(S)V

    .line 1477
    :cond_6
    if-eqz p5, :cond_7

    .line 1478
    const/16 v26, 0xff

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setHeight(S)V

    .line 1483
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cellIterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "cells":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 1484
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 1485
    .local v5, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V

    .line 1486
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v6

    .line 1487
    .local v6, "cellRecord":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    add-int v26, v20, p3

    move/from16 v0, v26

    invoke-interface {v6, v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setRow(I)V

    .line 1488
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCellFromRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    move-object/from16 v26, v0

    add-int v27, v20, p3

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lorg/apache/poi/hssf/model/InternalSheet;->addValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 1491
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getHyperlink()Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object v12

    .line 1492
    .local v12, "link":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    if-eqz v12, :cond_8

    .line 1493
    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getFirstRow()I

    move-result v26

    add-int v26, v26, p3

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstRow(I)V

    .line 1494
    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getLastRow()I

    move-result v26

    add-int v26, v26, p3

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastRow(I)V

    goto :goto_3

    .line 1498
    .end local v5    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v6    # "cellRecord":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v12    # "link":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeAllCells()V

    .line 1503
    if-eqz p6, :cond_2

    .line 1505
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v17

    .line 1506
    .local v17, "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getChildren()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    add-int/lit8 v10, v26, -0x1

    .local v10, "i":I
    :goto_4
    if-ltz v10, :cond_2

    .line 1507
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getChildren()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 1508
    .local v22, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move/from16 v26, v0

    if-nez v26, :cond_b

    .line 1506
    :cond_a
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_b
    move-object/from16 v8, v22

    .line 1511
    check-cast v8, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 1512
    .local v8, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    invoke-virtual {v8}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1515
    add-int v26, v20, p3

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setRow(I)V

    goto :goto_5

    .line 1521
    .end local v7    # "cells":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    .end local v8    # "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .end local v10    # "i":I
    .end local v17    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .end local v18    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v19    # "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v22    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_c
    if-lez p3, :cond_10

    .line 1523
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    move/from16 v26, v0

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 1525
    add-int v26, p1, p3

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 1526
    add-int/lit8 v10, p1, 0x1

    .restart local v10    # "i":I
    :goto_6
    add-int v26, p1, p3

    move/from16 v0, v26

    if-ge v10, v0, :cond_d

    .line 1527
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v26

    if-eqz v26, :cond_f

    .line 1528
    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 1533
    .end local v10    # "i":I
    :cond_d
    add-int v26, p2, p3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_e

    .line 1534
    add-int v26, p2, p3

    sget-object v27, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual/range {v27 .. v27}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v27

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    .line 1555
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v23

    .line 1556
    .local v23, "sheetIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v24

    .line 1557
    .local v24, "sheetName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v9

    .line 1558
    .local v9, "externSheetIndex":S
    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v9, v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForRowShift(ILjava/lang/String;III)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v25

    .line 1560
    .local v25, "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Lorg/apache/poi/hssf/model/InternalSheet;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v13

    .line 1563
    .local v13, "nSheets":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    if-ge v10, v13, :cond_14

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v16

    .line 1565
    .local v16, "otherSheet":Lorg/apache/poi/hssf/model/InternalSheet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 1563
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1526
    .end local v9    # "externSheetIndex":S
    .end local v13    # "nSheets":I
    .end local v16    # "otherSheet":Lorg/apache/poi/hssf/model/InternalSheet;
    .end local v23    # "sheetIndex":I
    .end local v24    # "sheetName":Ljava/lang/String;
    .end local v25    # "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 1538
    .end local v10    # "i":I
    :cond_10
    add-int v26, p1, p3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    .line 1539
    add-int v26, p1, p3

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 1541
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    move/from16 v26, v0

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 1543
    add-int v26, p2, p3

    sget-object v27, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual/range {v27 .. v27}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v27

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    .line 1544
    add-int/lit8 v10, p2, -0x1

    .restart local v10    # "i":I
    :goto_a
    add-int v26, p2, p3

    move/from16 v0, v26

    if-le v10, v0, :cond_e

    .line 1545
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v26

    if-eqz v26, :cond_12

    .line 1546
    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    goto/16 :goto_7

    .line 1544
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 1568
    .restart local v9    # "externSheetIndex":S
    .restart local v13    # "nSheets":I
    .restart local v16    # "otherSheet":Lorg/apache/poi/hssf/model/InternalSheet;
    .restart local v23    # "sheetIndex":I
    .restart local v24    # "sheetName":Ljava/lang/String;
    .restart local v25    # "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v15

    .line 1569
    .local v15, "otherExtSheetIx":S
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Lorg/apache/poi/hssf/model/InternalSheet;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    goto :goto_9

    .line 1571
    .end local v15    # "otherExtSheetIx":S
    .end local v16    # "otherSheet":Lorg/apache/poi/hssf/model/InternalSheet;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->updateNamesAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 1572
    .end local v9    # "externSheetIndex":S
    .end local v10    # "i":I
    .end local v11    # "inc":I
    .end local v13    # "nSheets":I
    .end local v14    # "noteRecs":[Lorg/apache/poi/hssf/record/NoteRecord;
    .end local v20    # "rowNum":I
    .end local v21    # "s":I
    .end local v23    # "sheetIndex":I
    .end local v24    # "sheetName":Ljava/lang/String;
    .end local v25    # "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    :cond_15
    return-void
.end method

.method public showInPane(II)V
    .locals 4
    .param p1, "toprow"    # I
    .param p2, "leftcol"    # I

    .prologue
    .line 1306
    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    .line 1307
    .local v0, "maxrow":I
    if-le p1, v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum row number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1309
    :cond_0
    int-to-short v1, p1

    int-to-short v2, p2

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->showInPane(SS)V

    .line 1310
    return-void
.end method

.method public showInPane(SS)V
    .locals 1
    .param p1, "toprow"    # S
    .param p2, "leftcol"    # S

    .prologue
    .line 1319
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setTopRow(S)V

    .line 1320
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setLeftCol(S)V

    .line 1321
    return-void
.end method

.method public ungroupColumn(II)V
    .locals 2
    .param p1, "fromColumn"    # I
    .param p2, "toColumn"    # I

    .prologue
    .line 1956
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupColumnRange(IIZ)V

    .line 1957
    return-void
.end method

.method public ungroupColumn(SS)V
    .locals 2
    .param p1, "fromColumn"    # S
    .param p2, "toColumn"    # S

    .prologue
    const v1, 0xffff

    .line 1932
    and-int v0, p1, v1

    and-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->ungroupColumn(II)V

    .line 1933
    return-void
.end method

.method public ungroupRow(II)V
    .locals 2
    .param p1, "fromRow"    # I
    .param p2, "toRow"    # I

    .prologue
    .line 1970
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupRowRange(IIZ)V

    .line 1971
    return-void
.end method

.method protected validateColumn(I)V
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 1806
    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v0

    .line 1807
    .local v0, "maxcol":I
    if-le p1, v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum column number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1808
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum column number is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1809
    :cond_1
    return-void
.end method

.method protected validateRow(I)V
    .locals 4
    .param p1, "row"    # I

    .prologue
    .line 1795
    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    .line 1796
    .local v0, "maxrow":I
    if-le p1, v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum row number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1797
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minumum row number is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1798
    :cond_1
    return-void
.end method
