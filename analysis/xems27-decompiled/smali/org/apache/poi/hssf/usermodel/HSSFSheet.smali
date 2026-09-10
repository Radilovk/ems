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
            "Ljava/util/TreeMap<",
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

    .line 352
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    if-eqz p2, :cond_0

    .line 354
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->addRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 357
    .local v0, "firstRow":Z
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v2

    if-gt v1, v2, :cond_2

    if-eqz v0, :cond_3

    .line 358
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    .line 360
    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFirstRowNum()I

    move-result v2

    if-lt v1, v2, :cond_4

    if-eqz v0, :cond_5

    .line 361
    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 363
    :cond_5
    return-void
.end method

.method private createRowFromRecord(Lorg/apache/poi/hssf/record/RowRecord;)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 2
    .param p1, "row"    # Lorg/apache/poi/hssf/record/RowRecord;

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

    .line 332
    add-int/lit8 v0, p1, 0x1

    .line 333
    .local v0, "rownum":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v1

    .line 335
    .local v1, "r":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 336
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v1

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 340
    const/4 v2, 0x0

    return v2

    .line 342
    :cond_1
    return v0
.end method

.method private findLastRow(I)I
    .locals 3
    .param p1, "lastrow"    # I

    .line 312
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 313
    return v0

    .line 315
    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 316
    .local v1, "rownum":I
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    .line 318
    .local v2, "r":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :goto_0
    if-nez v2, :cond_1

    if-lez v1, :cond_1

    .line 319
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    goto :goto_0

    .line 321
    :cond_1
    if-nez v2, :cond_2

    .line 322
    return v0

    .line 324
    :cond_2
    return v1
.end method

.method private getBuiltinNameRecord(B)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 3
    .param p1, "builtinCode"    # B

    .line 2335
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    .line 2336
    .local v0, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findExistingBuiltinNameRecordIdx(IB)I

    move-result v1

    .line 2338
    .local v1, "recIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2339
    const/4 v2, 0x0

    return-object v2

    .line 2341
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v2

    return-object v2
.end method

.method private getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 13
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/hssf/usermodel/HSSFCell;",
            ">;"
        }
    .end annotation

    .line 2059
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v6

    .line 2060
    .local v6, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v7

    .line 2061
    .local v7, "firstColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v8

    .line 2062
    .local v8, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v9

    .line 2063
    .local v9, "lastColumn":I
    sub-int v0, v8, v6

    add-int/lit8 v10, v0, 0x1

    .line 2064
    .local v10, "height":I
    sub-int v0, v9, v7

    add-int/lit8 v11, v0, 0x1

    .line 2065
    .local v11, "width":I
    new-instance v0, Ljava/util/ArrayList;

    mul-int v1, v10, v11

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v0

    .line 2066
    .local v12, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFCell;>;"
    move v0, v6

    .local v0, "rowIn":I
    :goto_0
    if-gt v0, v8, :cond_3

    .line 2067
    move v1, v7

    .local v1, "colIn":I
    :goto_1
    if-gt v1, v9, :cond_2

    .line 2068
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    .line 2069
    .local v2, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v2, :cond_0

    .line 2070
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    .line 2072
    :cond_0
    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v3

    .line 2073
    .local v3, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    if-nez v3, :cond_1

    .line 2074
    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v3

    .line 2076
    :cond_1
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    .end local v2    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v3    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2066
    .end local v1    # "colIn":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2079
    .end local v0    # "rowIn":I
    :cond_3
    const-class v5, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move v0, v6

    move v1, v7

    move v2, v10

    move v3, v11

    move-object v4, v12

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/util/SSCellRange;->create(IIIILjava/util/List;Ljava/lang/Class;)Lorg/apache/poi/ss/util/SSCellRange;

    move-result-object v0

    return-object v0
.end method

.method private getPatriarch(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 6
    .param p1, "createIfMissing"    # Z

    .line 1882
    const/4 v0, 0x0

    .line 1883
    .local v0, "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    if-eqz v1, :cond_0

    .line 1884
    return-object v1

    .line 1886
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v1

    .line 1887
    .local v1, "dm":Lorg/apache/poi/hssf/model/DrawingManager2;
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1888
    if-nez p1, :cond_1

    .line 1889
    return-object v2

    .line 1891
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDrawingGroup()V

    .line 1892
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v1

    .line 1895
    :cond_2
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v4, 0x2694

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 1896
    .local v3, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    if-nez v3, :cond_5

    .line 1897
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v4

    .line 1898
    .local v4, "pos":I
    const/4 v5, -0x1

    if-ne v5, v4, :cond_4

    .line 1899
    if-eqz p1, :cond_3

    .line 1900
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v5}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v2

    .line 1901
    .end local v4    # "pos":I
    .local v2, "pos":I
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 1902
    new-instance v4, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    invoke-direct {v4, p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/EscherAggregate;)V

    move-object v0, v4

    .line 1903
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->afterCreate()V

    .line 1904
    return-object v0

    .line 1906
    .end local v2    # "pos":I
    .restart local v4    # "pos":I
    :cond_3
    return-object v2

    .line 1909
    :cond_4
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 1911
    .end local v4    # "pos":I
    :cond_5
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    invoke-direct {v2, p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/EscherAggregate;)V

    return-object v2
.end method

.method private getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;
    .locals 1

    .line 1212
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    return-object v0
.end method

.method private getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 13
    .param p1, "rows"    # Z

    .line 2292
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getBuiltinNameRecord(B)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 2293
    .local v0, "rec":Lorg/apache/poi/hssf/record/NameRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2294
    return-object v1

    .line 2297
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 2298
    .local v2, "nameDefinition":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-nez v2, :cond_1

    .line 2299
    return-object v1

    .line 2302
    :cond_1
    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v3

    .line 2303
    .local v3, "maxRowIndex":I
    sget-object v4, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v4

    .line 2305
    .local v4, "maxColIndex":I
    move-object v5, v2

    .local v5, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 2307
    .local v8, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v9, v8, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v9, :cond_3

    .line 2308
    move-object v9, v8

    check-cast v9, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 2310
    .local v9, "areaPtg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstColumn()I

    move-result v10

    const/4 v11, -0x1

    if-nez v10, :cond_2

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastColumn()I

    move-result v10

    if-ne v10, v4, :cond_2

    .line 2312
    if-eqz p1, :cond_3

    .line 2313
    new-instance v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstRow()I

    move-result v10

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastRow()I

    move-result v12

    invoke-direct {v1, v10, v12, v11, v11}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 2315
    .local v1, "rowRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    return-object v1

    .line 2317
    .end local v1    # "rowRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_2
    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstRow()I

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastRow()I

    move-result v10

    if-ne v10, v3, :cond_3

    .line 2319
    if-nez p1, :cond_3

    .line 2320
    new-instance v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getFirstColumn()I

    move-result v10

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getLastColumn()I

    move-result v12

    invoke-direct {v1, v11, v11, v10, v12}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 2322
    .local v1, "columnRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    return-object v1

    .line 2305
    .end local v1    # "columnRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v8    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v9    # "areaPtg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2330
    .end local v5    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_4
    return-object v1
.end method

.method private lookForComment(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;II)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 5
    .param p1, "container"    # Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 2171
    invoke-interface {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2172
    .local v1, "object":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 2173
    .local v2, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    instance-of v3, v2, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    if-eqz v3, :cond_1

    .line 2174
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;

    invoke-direct {p0, v3, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->lookForComment(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v3

    .line 2175
    .local v3, "res":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    if-eqz v3, :cond_0

    .line 2176
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    return-object v4

    .line 2180
    .end local v3    # "res":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_1
    instance-of v3, v2, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-eqz v3, :cond_2

    .line 2181
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 2182
    .local v3, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->hasPosition()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v4

    if-ne v4, p3, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 2183
    return-object v3

    .line 2186
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .end local v3    # "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    :cond_2
    goto :goto_0

    .line 2187
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyRowShifting(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V
    .locals 5
    .param p1, "row"    # Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Row[rownum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] contains cell(s) included in a multi-cell array formula. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "You cannot change part of an array."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1582
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Cell;

    .line 1583
    .local v2, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 1584
    .local v3, "hcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1585
    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    .line 1587
    .end local v2    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v3    # "hcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    :cond_0
    goto :goto_0

    .line 1588
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private setPropertiesFromSheet(Lorg/apache/poi/hssf/model/InternalSheet;)V
    .locals 14
    .param p1, "sheet"    # Lorg/apache/poi/hssf/model/InternalSheet;

    .line 179
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getNextRow()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    .line 180
    .local v0, "row":Lorg/apache/poi/hssf/record/RowRecord;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 182
    .local v2, "rowRecordsAlreadyPresent":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRowFromRecord(Lorg/apache/poi/hssf/record/RowRecord;)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 185
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getNextRow()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getCellValueIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 189
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/CellValueRecordInterface;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 191
    .local v4, "timestart":J
    sget-object v6, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v6, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 192
    sget-object v6, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "Time at start of cell creating in HSSF sheet = "

    invoke-virtual {v6, v1, v8, v7}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 195
    :cond_2
    const/4 v6, 0x0

    .line 198
    .local v6, "lastrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 199
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 201
    .local v7, "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 202
    .local v8, "cellstart":J
    move-object v10, v6

    .line 204
    .local v10, "hrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v11

    invoke-interface {v7}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v12

    if-eq v11, v12, :cond_5

    .line 205
    :cond_3
    invoke-interface {v7}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v11

    invoke-virtual {p0, v11}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v10

    .line 206
    move-object v6, v10

    .line 207
    if-nez v10, :cond_5

    .line 210
    if-nez v2, :cond_4

    .line 215
    new-instance v11, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-interface {v7}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v12

    invoke-direct {v11, v12}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(I)V

    .line 216
    .local v11, "rowRec":Lorg/apache/poi/hssf/record/RowRecord;
    invoke-virtual {p1, v11}, Lorg/apache/poi/hssf/model/InternalSheet;->addRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 217
    invoke-direct {p0, v11}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRowFromRecord(Lorg/apache/poi/hssf/record/RowRecord;)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v10

    goto :goto_2

    .line 212
    .end local v11    # "rowRec":Lorg/apache/poi/hssf/record/RowRecord;
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v11, "Unexpected missing row when some rows already present"

    invoke-direct {v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_5
    :goto_2
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v11, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 221
    instance-of v11, v7, Lorg/apache/poi/hssf/record/Record;

    if-eqz v11, :cond_6

    .line 222
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "record id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, v7

    check-cast v13, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v13}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto :goto_3

    .line 224
    :cond_6
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "record = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 227
    :cond_7
    :goto_3
    invoke-virtual {v10, v7}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCellFromRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 228
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v11, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 229
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "record took "

    invoke-virtual {v11, v1, v13, v12}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 233
    .end local v7    # "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v8    # "cellstart":J
    .end local v10    # "hrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :cond_8
    goto/16 :goto_1

    .line 234
    :cond_9
    sget-object v7, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v7, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 235
    sget-object v7, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "total sheet cell creation took "

    invoke-virtual {v7, v1, v9, v8}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 238
    :cond_a
    return-void
.end method

.method private setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 27
    .param p1, "rowDef"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "colDef"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 2215
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    .line 2216
    .local v1, "sheetIndex":I
    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v2

    .line 2217
    .local v2, "maxRowIndex":I
    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v3}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v14

    .line 2219
    .local v14, "maxColIndex":I
    const/4 v3, -0x1

    .line 2220
    .local v3, "col1":I
    const/4 v4, -0x1

    .line 2221
    .local v4, "col2":I
    const/4 v5, -0x1

    .line 2222
    .local v5, "row1":I
    const/4 v6, -0x1

    .line 2224
    .local v6, "row2":I
    const/4 v7, -0x1

    if-eqz p1, :cond_2

    .line 2225
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v5

    .line 2226
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v6

    .line 2227
    if-ne v5, v7, :cond_0

    if-ne v6, v7, :cond_1

    :cond_0
    if-gt v5, v6, :cond_1

    if-ltz v5, :cond_1

    if-gt v5, v2, :cond_1

    if-ltz v6, :cond_1

    if-gt v6, v2, :cond_1

    move v15, v5

    move/from16 v16, v6

    goto :goto_0

    .line 2230
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid row range specification"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2224
    :cond_2
    move v15, v5

    move/from16 v16, v6

    .line 2233
    .end local v5    # "row1":I
    .end local v6    # "row2":I
    .local v15, "row1":I
    .local v16, "row2":I
    :goto_0
    if-eqz p2, :cond_5

    .line 2234
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    .line 2235
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    .line 2236
    if-ne v3, v7, :cond_3

    if-ne v4, v7, :cond_4

    :cond_3
    if-gt v3, v4, :cond_4

    if-ltz v3, :cond_4

    if-gt v3, v14, :cond_4

    if-ltz v4, :cond_4

    if-gt v4, v14, :cond_4

    move/from16 v17, v3

    move/from16 v18, v4

    goto :goto_1

    .line 2239
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid column range specification"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2233
    :cond_5
    move/from16 v17, v3

    move/from16 v18, v4

    .line 2243
    .end local v3    # "col1":I
    .end local v4    # "col2":I
    .local v17, "col1":I
    .local v18, "col2":I
    :goto_1
    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v19

    .line 2246
    .local v19, "externSheetIndex":S
    const/4 v13, 0x1

    const/4 v12, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    move/from16 v20, v3

    .line 2247
    .local v20, "setBoth":Z
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    move/from16 v21, v3

    .line 2249
    .local v21, "removeAll":Z
    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v3

    .line 2251
    .local v3, "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    if-eqz v21, :cond_9

    .line 2252
    if-eqz v3, :cond_8

    .line 2253
    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->removeName(Lorg/apache/poi/hssf/usermodel/HSSFName;)V

    .line 2255
    :cond_8
    return-void

    .line 2257
    :cond_9
    if-nez v3, :cond_a

    .line 2258
    iget-object v5, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v5, v4, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v3

    move-object v11, v3

    goto :goto_4

    .line 2257
    :cond_a
    move-object v11, v3

    .line 2262
    .end local v3    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .local v11, "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v3

    .line 2263
    .local v10, "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    if-eqz v20, :cond_b

    .line 2264
    const/16 v3, 0x17

    .line 2265
    .local v3, "exprsSize":I
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(I)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2267
    .end local v3    # "exprsSize":I
    :cond_b
    if-eqz p2, :cond_c

    .line 2268
    new-instance v22, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v3, v22

    move v5, v2

    move/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v25, v10

    .end local v10    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .local v25, "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    move/from16 v10, v23

    move-object/from16 v26, v11

    .end local v11    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .local v26, "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    move/from16 v11, v24

    move/from16 v23, v1

    const/4 v1, 0x0

    .end local v1    # "sheetIndex":I
    .local v23, "sheetIndex":I
    move/from16 v12, v19

    invoke-direct/range {v3 .. v12}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(IIIIZZZZI)V

    .line 2270
    .local v3, "colArea":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    move-object/from16 v12, v25

    .end local v25    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .local v12, "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2267
    .end local v3    # "colArea":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    .end local v12    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .end local v23    # "sheetIndex":I
    .end local v26    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .restart local v1    # "sheetIndex":I
    .restart local v10    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .restart local v11    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    :cond_c
    move/from16 v23, v1

    move-object v12, v10

    move-object/from16 v26, v11

    const/4 v1, 0x0

    .line 2272
    .end local v1    # "sheetIndex":I
    .end local v10    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .end local v11    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .restart local v12    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .restart local v23    # "sheetIndex":I
    .restart local v26    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    :goto_5
    if-eqz p1, :cond_d

    .line 2273
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v22, 0x0

    move-object v4, v3

    move v5, v15

    move/from16 v6, v16

    move v8, v14

    move-object v1, v12

    .end local v12    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .local v1, "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    move/from16 v12, v22

    move/from16 v22, v2

    const/4 v2, 0x1

    .end local v2    # "maxRowIndex":I
    .local v22, "maxRowIndex":I
    move/from16 v13, v19

    invoke-direct/range {v4 .. v13}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(IIIIZZZZI)V

    .line 2275
    .local v3, "rowArea":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2272
    .end local v1    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .end local v3    # "rowArea":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    .end local v22    # "maxRowIndex":I
    .restart local v2    # "maxRowIndex":I
    .restart local v12    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    :cond_d
    move/from16 v22, v2

    move-object v1, v12

    const/4 v2, 0x1

    .line 2277
    .end local v2    # "maxRowIndex":I
    .end local v12    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .restart local v1    # "ptgList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ptg/Ptg;>;"
    .restart local v22    # "maxRowIndex":I
    :goto_6
    if-eqz v20, :cond_e

    .line 2278
    sget-object v3, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2281
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 2282
    .local v3, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2283
    move-object/from16 v4, v26

    .end local v26    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    .local v4, "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2285
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPrintSetup()Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;

    move-result-object v5

    .line 2286
    .local v5, "printSetup":Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->setValidSettings(Z)V

    .line 2287
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    .line 2288
    return-void
.end method

.method private validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 11
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 708
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    .line 709
    .local v0, "firstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v1

    .line 710
    .local v1, "firstColumn":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    .line 711
    .local v2, "lastRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    .line 712
    .local v3, "lastColumn":I
    move v4, v0

    .local v4, "rowIn":I
    :goto_0
    if-gt v4, v2, :cond_5

    .line 713
    move v5, v1

    .local v5, "colIn":I
    :goto_1
    if-gt v5, v3, :cond_4

    .line 714
    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v6

    .line 715
    .local v6, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v6, :cond_0

    goto :goto_2

    .line 717
    :cond_0
    invoke-virtual {v6, v5}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v7

    .line 718
    .local v7, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    if-nez v7, :cond_1

    goto :goto_2

    .line 720
    :cond_1
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 721
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v8

    .line 722
    .local v8, "arrayRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v8}, Lorg/apache/poi/ss/util/CellRangeAddress;->getNumberOfCells()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v9

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(II)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v9

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(II)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    .line 725
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The range "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " intersects with a multi-cell array formula. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "You cannot merge cells of an array."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 727
    .local v9, "msg":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 713
    .end local v6    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v7    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v8    # "arrayRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v9    # "msg":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 712
    .end local v5    # "colIn":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 733
    .end local v4    # "rowIn":I
    :cond_5
    return-void
.end method


# virtual methods
.method public addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 5
    .param p1, "region"    # Lorg/apache/poi/ss/util/CellRangeAddress;

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
    .locals 3
    .param p1, "dataValidation"    # Lorg/apache/poi/ss/usermodel/DataValidation;

    .line 444
    if-eqz p1, :cond_0

    .line 447
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;

    .line 448
    .local v0, "hssfDataValidation":Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getOrCreateDataValidityTable()Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    move-result-object v1

    .line 450
    .local v1, "dvt":Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->createDVRecord(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/record/DVRecord;

    move-result-object v2

    .line 451
    .local v2, "dvRecord":Lorg/apache/poi/hssf/record/DVRecord;
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->addDataValidation(Lorg/apache/poi/hssf/record/DVRecord;)V

    .line 452
    return-void

    .line 445
    .end local v0    # "hssfDataValidation":Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;
    .end local v1    # "dvt":Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
    .end local v2    # "dvRecord":Lorg/apache/poi/hssf/record/DVRecord;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "objValidation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public autoSizeColumn(I)V
    .locals 1
    .param p1, "column"    # I

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

    .line 2018
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D

    move-result-wide v0

    .line 2020
    .local v0, "width":D
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 2021
    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double v0, v0, v2

    .line 2022
    const v2, 0xff00

    .line 2023
    .local v2, "maxColumnWidth":I
    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    .line 2024
    int-to-double v0, v2

    .line 2026
    :cond_0
    double-to-int v3, v0

    invoke-virtual {p0, p1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setColumnWidth(II)V

    .line 2029
    .end local v2    # "maxColumnWidth":I
    :cond_1
    return-void
.end method

.method cloneSheet(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 6
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 141
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 142
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->cloneSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/model/InternalSheet;)V

    .line 143
    .local v0, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0xec

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 144
    .local v1, "pos":I
    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/DrawingRecord;

    .line 145
    .local v2, "dr":Lorg/apache/poi/hssf/record/DrawingRecord;
    if-eqz v2, :cond_0

    .line 146
    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v3

    .line 150
    .local v3, "patr":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 151
    iput-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 153
    .end local v3    # "patr":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    :cond_1
    return-object v0
.end method

.method public createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 1

    .line 1877
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPatriarch(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 1878
    return-object v0
.end method

.method public bridge synthetic createDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    return-object v0
.end method

.method public createFreezePane(II)V
    .locals 0
    .param p1, "colSplit"    # I
    .param p2, "rowSplit"    # I

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

    .line 1603
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateColumn(I)V

    .line 1604
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateRow(I)V

    .line 1605
    if-lt p3, p1, :cond_1

    .line 1607
    if-lt p4, p2, :cond_0

    .line 1609
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4, p3}, Lorg/apache/poi/hssf/model/InternalSheet;->createFreezePane(IIII)V

    .line 1610
    return-void

    .line 1608
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "topRow parameter must not be less than leftmostColumn parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1606
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leftmostColumn parameter must not be less than colSplit parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 3
    .param p1, "rownum"    # I

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

    .line 1816
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    .line 1818
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    const/16 v1, 0x2694

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 1819
    .local v0, "r":Lorg/apache/poi/hssf/record/EscherAggregate;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EscherAggregate;->getEscherRecords()Ljava/util/List;

    move-result-object v1

    .line 1820
    .local v1, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    new-instance v3, Ljava/io/PrintWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1821
    .local v3, "w":Ljava/io/PrintWriter;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1822
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ddf/EscherRecord;

    .line 1823
    .local v5, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    if-eqz p1, :cond_0

    .line 1824
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1826
    :cond_0
    invoke-virtual {v5, v3, v2}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    .line 1828
    .end local v5    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    :goto_1
    goto :goto_0

    .line 1829
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1830
    return-void
.end method

.method protected findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

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

    .line 2037
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCellComment(II)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public getColumnBreaks()[I
    .locals 1

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

    .line 2350
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getColumnOutlineLevel(I)I

    move-result v0

    return v0
.end method

.method public getColumnStyle(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 4
    .param p1, "column"    # I

    .line 646
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getXFIndexForColAt(S)S

    move-result v0

    .line 648
    .local v0, "styleIndex":S
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 650
    const/4 v1, 0x0

    return-object v1

    .line 653
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v1

    .line 654
    .local v1, "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-object v2
.end method

.method public bridge synthetic getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1
    .param p1, "x0"    # I

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getColumnStyle(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getColumnWidth(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .line 565
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getColumnWidth(I)I

    move-result v0

    return v0
.end method

.method public getColumnWidth(S)S
    .locals 1
    .param p1, "columnIndex"    # S

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

    .line 569
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getColumnWidth(I)I

    move-result v0

    .line 570
    .local v0, "cw":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDefaultColumnWidth()I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    .line 571
    .local v1, "def":I
    if-ne v0, v1, :cond_0

    const/high16 v2, 0x42000000    # 32.0f

    goto :goto_0

    :cond_0
    const v2, 0x42123d71    # 36.56f

    .line 573
    .local v2, "px":F
    :goto_0
    int-to-float v3, v0

    div-float/2addr v3, v2

    return v3
.end method

.method public getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;
    .locals 1

    .line 2119
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidationHelper;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public getDataValidations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getOrCreateDataValidityTable()Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

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

    .line 583
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultColumnWidth()I

    move-result v0

    return v0
.end method

.method public getDefaultRowHeight()S
    .locals 1

    .line 604
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultRowHeight()S

    move-result v0

    return v0
.end method

.method public getDefaultRowHeightInPoints()F
    .locals 2

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
    .locals 4

    .line 1837
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    .line 1841
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1842
    return-object v1

    .line 1845
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v0

    .line 1848
    .local v0, "found":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1850
    return-object v1

    .line 1854
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v2, 0x2694

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 1855
    .local v1, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    return-object v1
.end method

.method public getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 1

    .line 1864
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPatriarch(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 1865
    return-object v0
.end method

.method public getFirstRowNum()I
    .locals 1

    .line 389
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    return v0
.end method

.method public getFitToPage()Z
    .locals 2

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

    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFooter()Lorg/apache/poi/hssf/usermodel/HSSFFooter;

    move-result-object v0

    return-object v0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 1

    .line 766
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getUncalced()Z

    move-result v0

    return v0
.end method

.method public getHeader()Lorg/apache/poi/hssf/usermodel/HSSFHeader;
    .locals 2

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

    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHeader()Lorg/apache/poi/hssf/usermodel/HSSFHeader;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontallyCenter()Z
    .locals 1

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

    .line 406
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    return v0
.end method

.method public getLeftCol()S
    .locals 1

    .line 1295
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getLeftCol()S

    move-result v0

    return v0
.end method

.method public getMargin(S)D
    .locals 2
    .param p1, "margin"    # S

    .line 1182
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1188
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getMargin(S)D

    move-result-wide v0

    return-wide v0

    .line 1184
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFooterMargin()D

    move-result-wide v0

    return-wide v0

    .line 1186
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getHeaderMargin()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .param p1, "index"    # I

    .line 867
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRegionAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMergedRegionAt(I)Lorg/apache/poi/hssf/util/Region;
    .locals 6
    .param p1, "index"    # I

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

    .line 850
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getNumMergedRegions()I

    move-result v0

    return v0
.end method

.method public getObjectProtect()Z
    .locals 1

    .line 1237
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isObjectProtected()Z

    move-result v0

    return v0
.end method

.method public getPaneInformation()Lorg/apache/poi/hssf/util/PaneInformation;
    .locals 1

    .line 1650
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPaneInformation()Lorg/apache/poi/hssf/util/PaneInformation;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()S
    .locals 1

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

    .line 380
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public getPrintSetup()Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;
    .locals 2

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

    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPrintSetup()Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;

    move-result-object v0

    return-object v0
.end method

.method public getProtect()Z
    .locals 1

    .line 1221
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isSheetProtected()Z

    move-result v0

    return v0
.end method

.method public getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 2197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 2192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 2
    .param p1, "rowIndex"    # I

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

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public getRowBreaks()[I
    .locals 1

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

    .line 1246
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isScenarioProtected()Z

    move-result v0

    return v0
.end method

.method getSheet()Lorg/apache/poi/hssf/model/InternalSheet;
    .locals 1

    .line 897
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    return-object v0
.end method

.method public getSheetConditionalFormatting()Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;
    .locals 1

    .line 2041
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public bridge synthetic getSheetConditionalFormatting()Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheetConditionalFormatting()Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 3

    .line 2050
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    .line 2051
    .local v0, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    .line 2052
    .local v1, "idx":I
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTopRow()S
    .locals 1

    .line 1285
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getTopRow()S

    move-result v0

    return v0
.end method

.method public getVerticallyCenter()Z
    .locals 1

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

    .line 786
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getVerticallyCenter()Z

    move-result v0

    return v0
.end method

.method public getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    return-object v0
.end method

.method public bridge synthetic getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public groupColumn(II)V
    .locals 2
    .param p1, "fromColumn"    # I
    .param p2, "toColumn"    # I

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

    .line 1925
    const v0, 0xffff

    and-int v1, p1, v0

    and-int/2addr v0, p2

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->groupColumn(II)V

    .line 1926
    return-void
.end method

.method public groupRow(II)V
    .locals 2
    .param p1, "fromRow"    # I
    .param p2, "toRow"    # I

    .line 1966
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupRowRange(IIZ)V

    .line 1967
    return-void
.end method

.method protected insertChartRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)V"
        }
    .end annotation

    .line 1575
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x23e

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

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

    .line 507
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->isColumnHidden(I)Z

    move-result v0

    return v0
.end method

.method public isColumnHidden(S)Z
    .locals 1
    .param p1, "columnIndex"    # S

    .line 466
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isColumnHidden(I)Z

    move-result v0

    return v0
.end method

.method public isDisplayFormulas()Z
    .locals 1

    .line 1686
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isDisplayFormulas()Z

    move-result v0

    return v0
.end method

.method public isDisplayGridlines()Z
    .locals 1

    .line 1668
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isDisplayGridlines()Z

    move-result v0

    return v0
.end method

.method public isDisplayRowColHeadings()Z
    .locals 1

    .line 1704
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isDisplayRowColHeadings()Z

    move-result v0

    return v0
.end method

.method public isDisplayZeros()Z
    .locals 1

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

    .line 664
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isGridsPrinted()Z

    move-result v0

    return v0
.end method

.method public isPrintGridlines()Z
    .locals 1

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
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation

    .line 886
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected preSerialize()V
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->preSerialize()V

    .line 163
    :cond_0
    return-void
.end method

.method public protectSheet(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .line 1255
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->protectSheet(Ljava/lang/String;ZZ)V

    .line 1256
    return-void
.end method

.method public removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 7
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/hssf/usermodel/HSSFCell;",
            ">;"
        }
    .end annotation

    .line 2099
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 2102
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v0

    .line 2103
    .local v0, "rec":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    instance-of v1, v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v1, :cond_1

    .line 2107
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 2108
    .local v1, "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->removeArrayFormula(II)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    .line 2110
    .local v2, "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v3

    .line 2112
    .local v3, "result":Lorg/apache/poi/ss/usermodel/CellRange;, "Lorg/apache/poi/ss/usermodel/CellRange<Lorg/apache/poi/hssf/usermodel/HSSFCell;>;"
    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/CellRange;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/usermodel/Cell;

    .line 2113
    .local v5, "c":Lorg/apache/poi/ss/usermodel/Cell;
    const/4 v6, 0x3

    invoke-interface {v5, v6}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(I)V

    .line 2114
    .end local v5    # "c":Lorg/apache/poi/ss/usermodel/Cell;
    goto :goto_0

    .line 2115
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v3

    .line 2104
    .end local v1    # "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v2    # "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v3    # "result":Lorg/apache/poi/ss/usermodel/CellRange;, "Lorg/apache/poi/ss/usermodel/CellRange<Lorg/apache/poi/hssf/usermodel/HSSFCell;>;"
    :cond_1
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    .line 2105
    .local v1, "ref":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cell "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not part of an array formula."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2100
    .end local v0    # "rec":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v1    # "ref":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified cell does not belong to this sheet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeColumnBreak(I)V
    .locals 1
    .param p1, "column"    # I

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

    .line 840
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->removeMergedRegion(I)V

    .line 841
    return-void
.end method

.method public removeRow(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 7
    .param p1, "row"    # Lorg/apache/poi/ss/usermodel/Row;

    .line 279
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 280
    .local v0, "hrow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    const-string v2, "Specified row does not belong to this sheet"

    if-ne v1, p0, :cond_6

    .line 283
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Cell;

    .line 284
    .local v3, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 285
    .local v4, "xcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Row[rownum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] contains cell(s) included in a multi-cell array formula. You cannot change part of an array."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "msg":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    .line 289
    .end local v3    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v4    # "xcell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v5    # "msg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 291
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 292
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 293
    .local v1, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    .line 294
    .local v3, "removedRow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-ne v3, p1, :cond_4

    .line 298
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 299
    iget v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findLastRow(I)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    .line 301
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFirstRowNum()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 302
    iget v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findFirstRow(I)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 304
    :cond_3
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->removeRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    goto :goto_1

    .line 296
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 306
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v3    # "removedRow":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :cond_5
    :goto_1
    return-void

    .line 281
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeRowBreak(I)V
    .locals 1
    .param p1, "row"    # I

    .line 1734
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->removeRowBreak(I)V

    .line 1735
    return-void
.end method

.method public rowIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 878
    .local v0, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Row;>;"
    return-object v0
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "sel"    # Z

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
    .locals 2
    .param p1, "b"    # Z

    .line 906
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 909
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAlternateExpression(Z)V

    .line 910
    return-void
.end method

.method public setAlternativeFormula(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 918
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    .line 921
    .local v0, "record":Lorg/apache/poi/hssf/record/WSBoolRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAlternateFormula(Z)V

    .line 922
    return-void
.end method

.method public setArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 5
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/hssf/usermodel/HSSFCell;",
            ">;"
        }
    .end annotation

    .line 2084
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    .line 2085
    .local v0, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    const/4 v2, 0x2

    invoke-static {p1, v1, v2, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 2086
    .local v1, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v2

    .line 2088
    .local v2, "cells":Lorg/apache/poi/ss/usermodel/CellRange;, "Lorg/apache/poi/ss/usermodel/CellRange<Lorg/apache/poi/hssf/usermodel/HSSFCell;>;"
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/CellRange;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 2089
    .local v4, "c":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v4, p2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 2090
    .end local v4    # "c":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    goto :goto_0

    .line 2091
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/CellRange;->getTopLeftCell()Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 2092
    .local v3, "mainArrayFormulaCell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 2093
    .local v4, "agg":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v4, p2, v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2094
    return-object v2
.end method

.method public setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;
    .locals 22
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 2123
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    .line 2124
    .local v1, "workbook":Lorg/apache/poi/hssf/model/InternalWorkbook;
    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    .line 2126
    .local v2, "sheetIndex":I
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v3

    .line 2128
    .local v3, "name":Lorg/apache/poi/hssf/record/NameRecord;
    if-nez v3, :cond_0

    .line 2129
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v3

    move-object v13, v3

    goto :goto_0

    .line 2128
    :cond_0
    move-object v13, v3

    .line 2132
    .end local v3    # "name":Lorg/apache/poi/hssf/record/NameRecord;
    .local v13, "name":Lorg/apache/poi/hssf/record/NameRecord;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v3

    .line 2135
    .local v3, "firstRow":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 2136
    const/4 v3, 0x0

    move v14, v3

    goto :goto_1

    .line 2135
    :cond_1
    move v14, v3

    .line 2140
    .end local v3    # "firstRow":I
    .local v14, "firstRow":I
    :goto_1
    new-instance v15, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v15

    move v4, v14

    move v12, v2

    invoke-direct/range {v3 .. v12}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(IIIIZZZZI)V

    .line 2143
    .local v3, "ptg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    const/4 v4, 0x1

    new-array v5, v4, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v13, v5}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2145
    new-instance v5, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;

    invoke-direct {v5}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;-><init>()V

    move-object v15, v5

    .line 2147
    .local v15, "r":Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    sub-int v12, v5, v4

    .line 2148
    .local v12, "numcols":I
    int-to-short v4, v12

    invoke-virtual {v15, v4}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;->setNumEntries(S)V

    .line 2149
    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v11

    .line 2150
    .local v11, "idx":I
    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2153
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v10

    .line 2154
    .local v10, "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    move v9, v4

    .local v9, "col":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    if-gt v9, v4, :cond_2

    .line 2155
    new-instance v8, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    int-to-short v4, v9

    add-int/lit8 v7, v9, 0x1

    int-to-short v7, v7

    add-int/lit8 v18, v14, 0x1

    move/from16 v19, v4

    move-object v4, v8

    move/from16 v17, v7

    const/4 v7, 0x0

    move-object/from16 v20, v8

    move/from16 v8, v16

    move/from16 v16, v9

    .end local v9    # "col":I
    .local v16, "col":I
    move/from16 v9, v19

    move-object/from16 v21, v10

    .end local v10    # "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .local v21, "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    move v10, v14

    move/from16 v19, v11

    .end local v11    # "idx":I
    .local v19, "idx":I
    move/from16 v11, v17

    move/from16 v17, v12

    .end local v12    # "numcols":I
    .local v17, "numcols":I
    move/from16 v12, v18

    invoke-direct/range {v4 .. v12}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>(IIIISISI)V

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    .end local v21    # "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .local v4, "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createComboBox(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    .line 2154
    add-int/lit8 v9, v16, 0x1

    move-object v10, v4

    move/from16 v12, v17

    move/from16 v11, v19

    .end local v16    # "col":I
    .restart local v9    # "col":I
    goto :goto_2

    .line 2159
    .end local v4    # "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .end local v9    # "col":I
    .end local v17    # "numcols":I
    .end local v19    # "idx":I
    .restart local v10    # "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .restart local v11    # "idx":I
    .restart local v12    # "numcols":I
    :cond_2
    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;

    invoke-direct {v5, v0}, Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v5
.end method

.method public bridge synthetic setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/AutoFilter;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;

    move-result-object v0

    return-object v0
.end method

.method public setAutobreaks(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 930
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

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

    .line 1766
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateColumn(I)V

    .line 1767
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    int-to-short v1, p1

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v2

    int-to-short v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setColumnBreak(SSS)V

    .line 1768
    return-void
.end method

.method public setColumnGroupCollapsed(IZ)V
    .locals 1
    .param p1, "columnNumber"    # I
    .param p2, "collapsed"    # Z

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

    .line 473
    const v0, 0xffff

    and-int v1, p1, v0

    and-int/2addr v0, p2

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setColumnWidth(II)V

    .line 474
    return-void
.end method

.method public setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 2
    .param p1, "column"    # I
    .param p2, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 1988
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    move-object v1, p2

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultColumnStyle(II)V

    .line 1989
    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 593
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultColumnWidth(I)V

    .line 594
    return-void
.end method

.method public setDefaultColumnWidth(S)V
    .locals 1
    .param p1, "width"    # S

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

    .line 626
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultRowHeight(S)V

    .line 627
    return-void
.end method

.method public setDefaultRowHeightInPoints(F)V
    .locals 2
    .param p1, "height"    # F

    .line 637
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultRowHeight(S)V

    .line 638
    return-void
.end method

.method public setDialog(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 942
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

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

    .line 1677
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDisplayFormulas(Z)V

    .line 1678
    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1659
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDisplayGridlines(Z)V

    .line 1660
    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 954
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

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

    .line 1695
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDisplayRowColHeadings(Z)V

    .line 1696
    return-void
.end method

.method public setDisplayZeros(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1072
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setDisplayZeros(Z)V

    .line 1073
    return-void
.end method

.method public setFitToPage(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 966
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

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

    .line 756
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setUncalced(Z)V

    .line 757
    return-void
.end method

.method public setGridsPrinted(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 674
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setGridsPrinted(Z)V

    .line 675
    return-void
.end method

.method public setHorizontallyCenter(Z)V
    .locals 1
    .param p1, "value"    # Z

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
    .locals 1
    .param p1, "margin"    # S
    .param p2, "size"    # D

    .line 1199
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1207
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setMargin(SD)V

    goto :goto_0

    .line 1201
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFooterMargin(D)V

    .line 1202
    goto :goto_0

    .line 1204
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setHeaderMargin(D)V

    .line 1205
    nop

    .line 1209
    :goto_0
    return-void
.end method

.method public setPrintGridlines(Z)V
    .locals 1
    .param p1, "newPrintGridlines"    # Z

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

    .line 1974
    if-eqz p2, :cond_0

    .line 1975
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->collapseRow(I)V

    goto :goto_0

    .line 1977
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->expandRow(I)V

    .line 1979
    :goto_0
    return-void
.end method

.method public setRowSumsBelow(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 978
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

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
    .locals 2
    .param p1, "b"    # Z

    .line 992
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

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
    .locals 2
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .line 1267
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const v1, 0xffff

    if-gt p1, v1, :cond_1

    .line 1269
    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    .line 1272
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

    .line 1270
    .end local v0    # "sclRecord":Lorg/apache/poi/hssf/record/SCLRecord;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Denominator must be greater than 0 and less than 65536"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Numerator must be greater than 0 and less than 65536"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shiftMerged(IIIZ)V
    .locals 8
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .param p4, "isRow"    # Z

    .line 1334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    .local v0, "shiftedRegions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getNumMergedRegions()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1337
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    .line 1339
    .local v2, "merged":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, p1, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    if-lt v3, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 1340
    .local v3, "inStart":Z
    :goto_2
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v6

    if-le v6, p2, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v6

    if-gt v6, p2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v6, 0x1

    .line 1343
    .local v6, "inEnd":Z
    :goto_4
    if-eqz v3, :cond_5

    if-nez v6, :cond_4

    .line 1344
    goto :goto_5

    .line 1348
    :cond_4
    add-int/lit8 v7, p1, -0x1

    invoke-static {v2, v7, v4}, Lorg/apache/poi/ss/util/SheetUtil;->containsCell(Lorg/apache/poi/ss/util/CellRangeAddress;II)Z

    move-result v7

    if-nez v7, :cond_5

    add-int/lit8 v7, p2, 0x1

    invoke-static {v2, v7, v4}, Lorg/apache/poi/ss/util/SheetUtil;->containsCell(Lorg/apache/poi/ss/util/CellRangeAddress;II)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1350
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v2, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->setFirstRow(I)V

    .line 1351
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v2, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->setLastRow(I)V

    .line 1353
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->removeMergedRegion(I)V

    .line 1355
    add-int/lit8 v1, v1, -0x1

    .line 1336
    .end local v2    # "merged":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v3    # "inStart":Z
    .end local v6    # "inEnd":Z
    :cond_5
    :goto_5
    add-int/2addr v1, v5

    goto :goto_0

    .line 1360
    .end local v1    # "i":I
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1361
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1362
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 1364
    .local v2, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    .line 1365
    .end local v2    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    goto :goto_6

    .line 1366
    :cond_7
    return-void
.end method

.method public shiftRows(III)V
    .locals 6
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I

    .line 1384
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

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
    .locals 16
    .param p1, "startRow"    # I
    .param p2, "endRow"    # I
    .param p3, "n"    # I
    .param p4, "copyRowHeight"    # Z
    .param p5, "resetOriginalRowHeight"    # Z
    .param p6, "moveComments"    # Z

    .line 1429
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-gez v3, :cond_0

    .line 1430
    move/from16 v4, p1

    .line 1431
    .local v4, "s":I
    const/4 v5, 0x1

    .local v5, "inc":I
    goto :goto_0

    .line 1432
    .end local v4    # "s":I
    .end local v5    # "inc":I
    :cond_0
    if-lez v3, :cond_15

    .line 1433
    move/from16 v4, p2

    .line 1434
    .restart local v4    # "s":I
    const/4 v5, -0x1

    .line 1441
    .restart local v5    # "inc":I
    :goto_0
    if-eqz p6, :cond_1

    .line 1442
    iget-object v6, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/InternalSheet;->getNoteRecords()[Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v6

    .local v6, "noteRecs":[Lorg/apache/poi/hssf/record/NoteRecord;
    goto :goto_1

    .line 1444
    .end local v6    # "noteRecs":[Lorg/apache/poi/hssf/record/NoteRecord;
    :cond_1
    sget-object v6, Lorg/apache/poi/hssf/record/NoteRecord;->EMPTY_ARRAY:[Lorg/apache/poi/hssf/record/NoteRecord;

    .line 1447
    .restart local v6    # "noteRecs":[Lorg/apache/poi/hssf/record/NoteRecord;
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {v0, v1, v2, v3, v7}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->shiftMerged(IIIZ)V

    .line 1448
    iget-object v8, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v8}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v8

    invoke-virtual {v8, v1, v2, v3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->shiftRowBreaks(III)V

    .line 1450
    move v8, v4

    .local v8, "rowNum":I
    :goto_2
    if-lt v8, v1, :cond_c

    if-gt v8, v2, :cond_c

    if-ltz v8, :cond_c

    const/high16 v9, 0x10000

    if-ge v8, v9, :cond_c

    .line 1451
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v9

    .line 1455
    .local v9, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-eqz v9, :cond_2

    invoke-direct {v0, v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->notifyRowShifting(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V

    .line 1457
    :cond_2
    add-int v10, v8, v3

    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v10

    .line 1458
    .local v10, "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v10, :cond_3

    .line 1459
    add-int v11, v8, v3

    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v10

    .line 1467
    :cond_3
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeAllCells()V

    .line 1471
    if-nez v9, :cond_4

    goto/16 :goto_6

    .line 1474
    :cond_4
    if-eqz p4, :cond_5

    .line 1475
    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getHeight()S

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setHeight(S)V

    .line 1477
    :cond_5
    if-eqz p5, :cond_6

    .line 1478
    const/16 v11, 0xff

    invoke-virtual {v9, v11}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setHeight(S)V

    .line 1483
    :cond_6
    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cellIterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "cells":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1484
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 1485
    .local v12, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v9, v12}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V

    .line 1486
    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v13

    .line 1487
    .local v13, "cellRecord":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    add-int v14, v8, v3

    invoke-interface {v13, v14}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setRow(I)V

    .line 1488
    invoke-virtual {v10, v13}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCellFromRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 1489
    iget-object v14, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    add-int v15, v8, v3

    invoke-virtual {v14, v15, v13}, Lorg/apache/poi/hssf/model/InternalSheet;->addValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 1491
    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getHyperlink()Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object v14

    .line 1492
    .local v14, "link":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    if-eqz v14, :cond_7

    .line 1493
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getFirstRow()I

    move-result v15

    add-int/2addr v15, v3

    invoke-virtual {v14, v15}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstRow(I)V

    .line 1494
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getLastRow()I

    move-result v15

    add-int/2addr v15, v3

    invoke-virtual {v14, v15}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastRow(I)V

    .line 1496
    .end local v12    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v13    # "cellRecord":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .end local v14    # "link":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    :cond_7
    goto :goto_3

    .line 1498
    .end local v11    # "cells":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/usermodel/Cell;>;"
    :cond_8
    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeAllCells()V

    .line 1503
    if-eqz p6, :cond_b

    .line 1505
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v11

    .line 1506
    .local v11, "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getChildren()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v7

    .local v12, "i":I
    :goto_4
    if-ltz v12, :cond_b

    .line 1507
    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getChildren()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 1508
    .local v13, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    instance-of v14, v13, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-nez v14, :cond_9

    .line 1509
    goto :goto_5

    .line 1511
    :cond_9
    move-object v14, v13

    check-cast v14, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 1512
    .local v14, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v15

    if-eq v15, v8, :cond_a

    .line 1513
    goto :goto_5

    .line 1515
    :cond_a
    add-int v15, v8, v3

    invoke-virtual {v14, v15}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setRow(I)V

    .line 1506
    .end local v13    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .end local v14    # "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    :goto_5
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 1450
    .end local v9    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v10    # "row2Replace":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v11    # "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .end local v12    # "i":I
    :cond_b
    :goto_6
    add-int/2addr v8, v5

    goto/16 :goto_2

    .line 1521
    .end local v8    # "rowNum":I
    :cond_c
    const/4 v7, 0x0

    if-lez v3, :cond_f

    .line 1523
    iget v8, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    if-ne v1, v8, :cond_e

    .line 1525
    add-int v8, v1, v3

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 1526
    add-int/lit8 v7, v1, 0x1

    .local v7, "i":I
    :goto_7
    add-int v8, v1, v3

    if-ge v7, v8, :cond_e

    .line 1527
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 1528
    iput v7, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 1529
    goto :goto_8

    .line 1526
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1533
    .end local v7    # "i":I
    :cond_e
    :goto_8
    add-int v7, v2, v3

    iget v8, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    if-le v7, v8, :cond_12

    .line 1534
    add-int v7, v2, v3

    sget-object v8, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v8}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    goto :goto_a

    .line 1538
    :cond_f
    add-int v8, v1, v3

    iget v9, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    if-ge v8, v9, :cond_10

    .line 1539
    add-int v8, v1, v3

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    .line 1541
    :cond_10
    iget v7, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    if-ne v2, v7, :cond_12

    .line 1543
    add-int v7, v2, v3

    sget-object v8, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v8}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    .line 1544
    add-int/lit8 v7, v2, -0x1

    .restart local v7    # "i":I
    :goto_9
    add-int v8, v2, v3

    if-le v7, v8, :cond_12

    .line 1545
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 1546
    iput v7, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    .line 1547
    goto :goto_a

    .line 1544
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1555
    .end local v7    # "i":I
    :cond_12
    :goto_a
    iget-object v7, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v7, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v7

    .line 1556
    .local v7, "sheetIndex":I
    iget-object v8, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v8, v7}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v8

    .line 1557
    .local v8, "sheetName":Ljava/lang/String;
    iget-object v9, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v9, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v9

    .line 1558
    .local v9, "externSheetIndex":S
    invoke-static {v9, v8, v1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForRowShift(ILjava/lang/String;III)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v10

    .line 1560
    .local v10, "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    iget-object v11, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v11, v10, v9}, Lorg/apache/poi/hssf/model/InternalSheet;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    .line 1562
    iget-object v11, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v11

    .line 1563
    .local v11, "nSheets":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_b
    if-ge v12, v11, :cond_14

    .line 1564
    iget-object v13, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v13, v12}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v13

    .line 1565
    .local v13, "otherSheet":Lorg/apache/poi/hssf/model/InternalSheet;
    iget-object v14, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    if-ne v13, v14, :cond_13

    .line 1566
    goto :goto_c

    .line 1568
    :cond_13
    iget-object v14, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v14, v12}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v14

    .line 1569
    .local v14, "otherExtSheetIx":S
    invoke-virtual {v13, v10, v14}, Lorg/apache/poi/hssf/model/InternalSheet;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    .line 1563
    .end local v13    # "otherSheet":Lorg/apache/poi/hssf/model/InternalSheet;
    .end local v14    # "otherExtSheetIx":S
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 1571
    .end local v12    # "i":I
    :cond_14
    iget-object v12, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v12

    invoke-virtual {v12, v10}, Lorg/apache/poi/hssf/model/InternalWorkbook;->updateNamesAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 1572
    return-void

    .line 1437
    .end local v4    # "s":I
    .end local v5    # "inc":I
    .end local v6    # "noteRecs":[Lorg/apache/poi/hssf/record/NoteRecord;
    .end local v7    # "sheetIndex":I
    .end local v8    # "sheetName":Ljava/lang/String;
    .end local v9    # "externSheetIndex":S
    .end local v10    # "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    .end local v11    # "nSheets":I
    :cond_15
    return-void
.end method

.method public showInPane(II)V
    .locals 4
    .param p1, "toprow"    # I
    .param p2, "leftcol"    # I

    .line 1306
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    .line 1307
    .local v0, "maxrow":I
    if-gt p1, v0, :cond_0

    .line 1309
    int-to-short v1, p1

    int-to-short v2, p2

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->showInPane(SS)V

    .line 1310
    return-void

    .line 1307
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum row number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public showInPane(SS)V
    .locals 1
    .param p1, "toprow"    # S
    .param p2, "leftcol"    # S

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

    .line 1932
    const v0, 0xffff

    and-int v1, p1, v0

    and-int/2addr v0, p2

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->ungroupColumn(II)V

    .line 1933
    return-void
.end method

.method public ungroupRow(II)V
    .locals 2
    .param p1, "fromRow"    # I
    .param p2, "toRow"    # I

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

    .line 1806
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v0

    .line 1807
    .local v0, "maxcol":I
    if-gt p1, v0, :cond_1

    .line 1808
    if-ltz p1, :cond_0

    .line 1809
    return-void

    .line 1808
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum column number is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1807
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum column number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected validateRow(I)V
    .locals 4
    .param p1, "row"    # I

    .line 1795
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    .line 1796
    .local v0, "maxrow":I
    if-gt p1, v0, :cond_1

    .line 1797
    if-ltz p1, :cond_0

    .line 1798
    return-void

    .line 1797
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minumum row number is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1796
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum row number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
