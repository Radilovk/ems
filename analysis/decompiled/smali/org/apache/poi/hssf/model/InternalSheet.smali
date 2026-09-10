.class public final Lorg/apache/poi/hssf/model/InternalSheet;
.super Ljava/lang/Object;
.source "InternalSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/model/InternalSheet$RecordCloner;,
        Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final BottomMargin:S = 0x3s

.field public static final LeftMargin:S = 0x0s

.field public static final PANE_LOWER_LEFT:B = 0x2t

.field public static final PANE_LOWER_RIGHT:B = 0x0t

.field public static final PANE_UPPER_LEFT:B = 0x3t

.field public static final PANE_UPPER_RIGHT:B = 0x1t

.field public static final RightMargin:S = 0x1s

.field public static final TopMargin:S = 0x2s

.field private static log:Lorg/apache/poi/util/POILogger;


# instance fields
.field _columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

.field private _dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

.field private _dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

.field private _gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

.field protected _isUncalced:Z

.field private final _mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

.field private final _protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

.field private _psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

.field private _records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final _rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

.field protected _selection:Lorg/apache/poi/hssf/record/SelectionRecord;

.field private condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

.field protected defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

.field protected defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

.field protected gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

.field protected printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

.field private rowRecIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/poi/hssf/record/RowRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-class v0, Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    .line 105
    iput-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    .line 107
    new-instance v2, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    .line 108
    new-instance v2, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    .line 115
    new-instance v2, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    .line 117
    iput-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    .line 118
    iput-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    .line 127
    iput-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    .line 130
    iput-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->rowRecIterator:Ljava/util/Iterator;

    .line 133
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    .line 435
    new-instance v2, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    sget-object v2, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v2, v4}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    sget-object v2, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const-string v3, "Sheet createsheet from scratch called"

    invoke-virtual {v2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 441
    :cond_0
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createBOF()Lorg/apache/poi/hssf/record/BOFRecord;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createCalcMode()Lorg/apache/poi/hssf/record/CalcModeRecord;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createCalcCount()Lorg/apache/poi/hssf/record/CalcCountRecord;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createRefMode()Lorg/apache/poi/hssf/record/RefModeRecord;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createIteration()Lorg/apache/poi/hssf/record/IterationRecord;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createDelta()Lorg/apache/poi/hssf/record/DeltaRecord;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createSaveRecalc()Lorg/apache/poi/hssf/record/SaveRecalcRecord;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createPrintHeaders()Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createPrintGridlines()Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    .line 451
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createGridset()Lorg/apache/poi/hssf/record/GridsetRecord;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    .line 453
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createGuts()Lorg/apache/poi/hssf/record/GutsRecord;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

    .line 455
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createDefaultRowHeight()Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    .line 457
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createWSBool()Lorg/apache/poi/hssf/record/WSBoolRecord;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v2, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    .line 462
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createDefaultColWidth()Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    .line 468
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    .line 470
    .local v0, "columns":Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    .line 472
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createDimensions()Lorg/apache/poi/hssf/record/DimensionsRecord;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    .line 473
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v2, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    .line 475
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createSelection()Lorg/apache/poi/hssf/record/SelectionRecord;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    .line 479
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v2, Lorg/apache/poi/hssf/record/EOFRecord;->instance:Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    .line 485
    sget-object v2, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v2, v4}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    sget-object v2, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const-string v3, "Sheet createsheet from scratch exit"

    invoke-virtual {v2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 487
    :cond_1
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 14
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .prologue
    const/16 v13, 0x23e

    const/16 v12, 0x80

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object v9, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    .line 105
    iput-object v9, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    .line 107
    new-instance v8, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {v8}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>()V

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    .line 108
    new-instance v8, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-direct {v8}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;-><init>()V

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    .line 115
    new-instance v8, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    invoke-direct {v8}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;-><init>()V

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    .line 117
    iput-object v9, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    .line 118
    iput-object v9, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    .line 127
    iput-object v9, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    .line 130
    iput-object v9, p0, Lorg/apache/poi/hssf/model/InternalSheet;->rowRecIterator:Ljava/util/Iterator;

    .line 133
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    .line 159
    new-instance v8, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    invoke-direct {v8}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;-><init>()V

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    .line 160
    const/4 v7, 0x0

    .line 162
    .local v7, "rra":Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .local v6, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    iput-object v6, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    .line 164
    const/4 v2, -0x1

    .line 166
    .local v2, "dimsloc":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v8

    const/16 v9, 0x809

    if-eq v8, v9, :cond_0

    .line 167
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "BOF record expected"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 170
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/BOFRecord;

    .line 171
    .local v0, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_3

    .line 188
    :cond_1
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 191
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v5

    .line 193
    .local v5, "recSid":I
    const/16 v8, 0x1b0

    if-ne v5, v8, :cond_6

    .line 194
    new-instance v8, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-direct {v8, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    .line 195
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    .end local v5    # "recSid":I
    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v8

    const/16 v9, 0x40

    if-eq v8, v9, :cond_1

    .line 180
    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 181
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v4

    .line 182
    .local v4, "rec":Lorg/apache/poi/hssf/record/Record;
    instance-of v8, v4, Lorg/apache/poi/hssf/record/EOFRecord;

    if-eqz v8, :cond_4

    .line 186
    .end local v4    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_5
    new-instance v8, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v9

    invoke-direct {v8, v9}, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;-><init>(I)V

    throw v8

    .line 199
    .restart local v5    # "recSid":I
    :cond_6
    const/16 v8, 0x7d

    if-ne v5, v8, :cond_7

    .line 200
    new-instance v8, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-direct {v8, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    .line 201
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_7
    const/16 v8, 0x1b2

    if-ne v5, v8, :cond_8

    .line 205
    new-instance v8, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    invoke-direct {v8, p1}, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    .line 206
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_8
    invoke-static {v5}, Lorg/apache/poi/hssf/model/RecordOrderer;->isRowBlockRecord(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 212
    if-eqz v7, :cond_9

    .line 213
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "row/cell records found in the wrong place"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 215
    :cond_9
    new-instance v3, Lorg/apache/poi/hssf/model/RowBlocksReader;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/model/RowBlocksReader;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    .line 216
    .local v3, "rbr":Lorg/apache/poi/hssf/model/RowBlocksReader;
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/RowBlocksReader;->getLooseMergedCells()[Lorg/apache/poi/hssf/record/MergeCellsRecord;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->addRecords([Lorg/apache/poi/hssf/record/MergeCellsRecord;)V

    .line 217
    new-instance v7, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    .end local v7    # "rra":Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/RowBlocksReader;->getPlainRecordStream()Lorg/apache/poi/hssf/model/RecordStream;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/RowBlocksReader;->getSharedFormulaManager()Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;-><init>(Lorg/apache/poi/hssf/model/RecordStream;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V

    .line 218
    .restart local v7    # "rra":Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 222
    .end local v3    # "rbr":Lorg/apache/poi/hssf/model/RowBlocksReader;
    :cond_a
    invoke-static {v5}, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->isBeginRecord(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 225
    new-instance v8, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    invoke-direct {v8, p1}, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 229
    :cond_b
    invoke-static {v5}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isComponentRecord(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 230
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    if-nez v8, :cond_c

    .line 232
    new-instance v8, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-direct {v8, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    .line 233
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :goto_1
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {v8, v6}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->positionRecords(Ljava/util/List;)V

    goto/16 :goto_0

    .line 236
    :cond_c
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {v8, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->addLateRecords(Lorg/apache/poi/hssf/model/RecordStream;)V

    goto :goto_1

    .line 244
    :cond_d
    invoke-static {v5}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isComponentRecord(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 245
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    invoke-virtual {v8, p1}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->addRecords(Lorg/apache/poi/hssf/model/RecordStream;)V

    goto/16 :goto_0

    .line 249
    :cond_e
    const/16 v8, 0xe5

    if-ne v5, v8, :cond_f

    .line 251
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    invoke-virtual {v8, p1}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->read(Lorg/apache/poi/hssf/model/RecordStream;)V

    goto/16 :goto_0

    .line 255
    :cond_f
    const/16 v8, 0x809

    if-ne v5, v8, :cond_10

    .line 256
    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    .line 261
    .local v1, "chartAgg":Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;
    invoke-static {v1, v6}, Lorg/apache/poi/hssf/model/InternalSheet;->spillAggregate(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;Ljava/util/List;)V

    goto/16 :goto_0

    .line 266
    .end local v1    # "chartAgg":Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;
    :cond_10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v4

    .line 267
    .restart local v4    # "rec":Lorg/apache/poi/hssf/record/Record;
    const/16 v8, 0x20b

    if-eq v5, v8, :cond_2

    .line 274
    const/16 v8, 0x5e

    if-ne v5, v8, :cond_11

    .line 276
    iput-boolean v10, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    goto/16 :goto_0

    .line 280
    :cond_11
    const/16 v8, 0x868

    if-eq v5, v8, :cond_12

    const/16 v8, 0x867

    if-ne v5, v8, :cond_13

    .line 282
    :cond_12
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 286
    :cond_13
    const/16 v8, 0xa

    if-ne v5, v8, :cond_15

    .line 287
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v4    # "rec":Lorg/apache/poi/hssf/record/Record;
    .end local v5    # "recSid":I
    :cond_14
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    if-nez v8, :cond_1f

    .line 335
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "WINDOW2 was not found"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 291
    .restart local v4    # "rec":Lorg/apache/poi/hssf/record/Record;
    .restart local v5    # "recSid":I
    :cond_15
    const/16 v8, 0x200

    if-ne v5, v8, :cond_18

    .line 294
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    if-nez v8, :cond_16

    .line 296
    new-instance v8, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-direct {v8}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    .line 297
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    move-object v8, v4

    .line 300
    check-cast v8, Lorg/apache/poi/hssf/record/DimensionsRecord;

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    .line 301
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 332
    :cond_17
    :goto_2
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 303
    :cond_18
    const/16 v8, 0x55

    if-ne v5, v8, :cond_19

    move-object v8, v4

    .line 305
    check-cast v8, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    goto :goto_2

    .line 307
    :cond_19
    const/16 v8, 0x225

    if-ne v5, v8, :cond_1a

    move-object v8, v4

    .line 309
    check-cast v8, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    goto :goto_2

    .line 311
    :cond_1a
    const/16 v8, 0x2b

    if-ne v5, v8, :cond_1b

    move-object v8, v4

    .line 313
    check-cast v8, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    goto :goto_2

    .line 315
    :cond_1b
    const/16 v8, 0x82

    if-ne v5, v8, :cond_1c

    move-object v8, v4

    .line 317
    check-cast v8, Lorg/apache/poi/hssf/record/GridsetRecord;

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    goto :goto_2

    .line 319
    :cond_1c
    const/16 v8, 0x1d

    if-ne v5, v8, :cond_1d

    move-object v8, v4

    .line 321
    check-cast v8, Lorg/apache/poi/hssf/record/SelectionRecord;

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    goto :goto_2

    .line 323
    :cond_1d
    if-ne v5, v13, :cond_1e

    move-object v8, v4

    .line 325
    check-cast v8, Lorg/apache/poi/hssf/record/WindowTwoRecord;

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    goto :goto_2

    .line 327
    :cond_1e
    if-ne v5, v12, :cond_17

    move-object v8, v4

    .line 329
    check-cast v8, Lorg/apache/poi/hssf/record/GutsRecord;

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

    goto :goto_2

    .line 337
    .end local v4    # "rec":Lorg/apache/poi/hssf/record/Record;
    .end local v5    # "recSid":I
    :cond_1f
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    if-nez v8, :cond_21

    .line 340
    if-nez v7, :cond_24

    .line 344
    new-instance v7, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    .end local v7    # "rra":Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;
    invoke-direct {v7}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;-><init>()V

    .line 351
    .restart local v7    # "rra":Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;
    :cond_20
    :goto_3
    invoke-virtual {p0, v13}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v2

    .line 352
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->createDimensions()Lorg/apache/poi/hssf/record/DimensionsRecord;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    .line 353
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-interface {v6, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 355
    :cond_21
    if-nez v7, :cond_22

    .line 356
    new-instance v7, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    .end local v7    # "rra":Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;
    invoke-direct {v7}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;-><init>()V

    .line 357
    .restart local v7    # "rra":Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;
    add-int/lit8 v8, v2, 0x1

    invoke-interface {v6, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 359
    :cond_22
    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    .line 361
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    invoke-static {v6, v8}, Lorg/apache/poi/hssf/model/RecordOrderer;->addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V

    .line 362
    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    invoke-static {v6, v8}, Lorg/apache/poi/hssf/model/RecordOrderer;->addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V

    .line 363
    sget-object v8, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v8, v10}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 364
    sget-object v8, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const-string v9, "sheet createSheet (existing file) exited"

    invoke-virtual {v8, v10, v9}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 365
    :cond_23
    return-void

    .line 346
    :cond_24
    sget-object v8, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v8, v11}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 347
    sget-object v8, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const-string v9, "DIMENSION record not found even though row/cells present"

    invoke-virtual {v8, v11, v9}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto :goto_3
.end method

.method static createBOF()Lorg/apache/poi/hssf/record/BOFRecord;
    .locals 2

    .prologue
    .line 840
    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>()V

    .line 842
    .local v0, "retval":Lorg/apache/poi/hssf/record/BOFRecord;
    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setVersion(I)V

    .line 843
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setType(I)V

    .line 845
    const/16 v1, 0xdbb

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setBuild(I)V

    .line 846
    const/16 v1, 0x7cc

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setBuildYear(I)V

    .line 847
    const/16 v1, 0xc1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setHistoryBitMask(I)V

    .line 848
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setRequiredVersion(I)V

    .line 849
    return-object v0
.end method

.method private static createCalcCount()Lorg/apache/poi/hssf/record/CalcCountRecord;
    .locals 2

    .prologue
    .line 866
    new-instance v0, Lorg/apache/poi/hssf/record/CalcCountRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CalcCountRecord;-><init>()V

    .line 868
    .local v0, "retval":Lorg/apache/poi/hssf/record/CalcCountRecord;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CalcCountRecord;->setIterations(S)V

    .line 869
    return-object v0
.end method

.method private static createCalcMode()Lorg/apache/poi/hssf/record/CalcModeRecord;
    .locals 2

    .prologue
    .line 856
    new-instance v0, Lorg/apache/poi/hssf/record/CalcModeRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CalcModeRecord;-><init>()V

    .line 858
    .local v0, "retval":Lorg/apache/poi/hssf/record/CalcModeRecord;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CalcModeRecord;->setCalcMode(S)V

    .line 859
    return-object v0
.end method

.method private static createDefaultColWidth()Lorg/apache/poi/hssf/record/DefaultColWidthRecord;
    .locals 2

    .prologue
    .line 987
    new-instance v0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>()V

    .line 988
    .local v0, "retval":Lorg/apache/poi/hssf/record/DefaultColWidthRecord;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->setColWidth(I)V

    .line 989
    return-object v0
.end method

.method private static createDefaultRowHeight()Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;
    .locals 2

    .prologue
    .line 964
    new-instance v0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;-><init>()V

    .line 966
    .local v0, "retval":Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->setOptionFlags(S)V

    .line 967
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->setRowHeight(S)V

    .line 968
    return-object v0
.end method

.method private static createDelta()Lorg/apache/poi/hssf/record/DeltaRecord;
    .locals 4

    .prologue
    .line 893
    new-instance v0, Lorg/apache/poi/hssf/record/DeltaRecord;

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/hssf/record/DeltaRecord;-><init>(D)V

    return-object v0
.end method

.method private static createDimensions()Lorg/apache/poi/hssf/record/DimensionsRecord;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1163
    new-instance v0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DimensionsRecord;-><init>()V

    .line 1165
    .local v0, "retval":Lorg/apache/poi/hssf/record/DimensionsRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstCol(S)V

    .line 1166
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastRow(I)V

    .line 1167
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstRow(I)V

    .line 1168
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastCol(S)V

    .line 1169
    return-object v0
.end method

.method private static createGridset()Lorg/apache/poi/hssf/record/GridsetRecord;
    .locals 2

    .prologue
    .line 931
    new-instance v0, Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/GridsetRecord;-><init>()V

    .line 933
    .local v0, "retval":Lorg/apache/poi/hssf/record/GridsetRecord;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/GridsetRecord;->setGridset(Z)V

    .line 934
    return-object v0
.end method

.method private static createGuts()Lorg/apache/poi/hssf/record/GutsRecord;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 941
    new-instance v0, Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/GutsRecord;-><init>()V

    .line 943
    .local v0, "retval":Lorg/apache/poi/hssf/record/GutsRecord;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/GutsRecord;->setLeftRowGutter(S)V

    .line 944
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/GutsRecord;->setTopColGutter(S)V

    .line 945
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/GutsRecord;->setRowLevelMax(S)V

    .line 946
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/GutsRecord;->setColLevelMax(S)V

    .line 947
    return-object v0
.end method

.method private static createIteration()Lorg/apache/poi/hssf/record/IterationRecord;
    .locals 2

    .prologue
    .line 886
    new-instance v0, Lorg/apache/poi/hssf/record/IterationRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/IterationRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createPrintGridlines()Lorg/apache/poi/hssf/record/PrintGridlinesRecord;
    .locals 2

    .prologue
    .line 921
    new-instance v0, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;-><init>()V

    .line 923
    .local v0, "retval":Lorg/apache/poi/hssf/record/PrintGridlinesRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;->setPrintGridlines(Z)V

    .line 924
    return-object v0
.end method

.method private static createPrintHeaders()Lorg/apache/poi/hssf/record/PrintHeadersRecord;
    .locals 2

    .prologue
    .line 910
    new-instance v0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;-><init>()V

    .line 912
    .local v0, "retval":Lorg/apache/poi/hssf/record/PrintHeadersRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->setPrintHeaders(Z)V

    .line 913
    return-object v0
.end method

.method private static createRefMode()Lorg/apache/poi/hssf/record/RefModeRecord;
    .locals 2

    .prologue
    .line 876
    new-instance v0, Lorg/apache/poi/hssf/record/RefModeRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/RefModeRecord;-><init>()V

    .line 878
    .local v0, "retval":Lorg/apache/poi/hssf/record/RefModeRecord;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RefModeRecord;->setMode(S)V

    .line 879
    return-object v0
.end method

.method private static createSaveRecalc()Lorg/apache/poi/hssf/record/SaveRecalcRecord;
    .locals 2

    .prologue
    .line 900
    new-instance v0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/SaveRecalcRecord;-><init>()V

    .line 902
    .local v0, "retval":Lorg/apache/poi/hssf/record/SaveRecalcRecord;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/SaveRecalcRecord;->setRecalc(Z)V

    .line 903
    return-object v0
.end method

.method private static createSelection()Lorg/apache/poi/hssf/record/SelectionRecord;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1197
    new-instance v0, Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/hssf/record/SelectionRecord;-><init>(II)V

    return-object v0
.end method

.method public static createSheet()Lorg/apache/poi/hssf/model/InternalSheet;
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-direct {v0}, Lorg/apache/poi/hssf/model/InternalSheet;-><init>()V

    return-object v0
.end method

.method public static createSheet(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/model/InternalSheet;
    .locals 1
    .param p0, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .prologue
    .line 156
    new-instance v0, Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/model/InternalSheet;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    return-object v0
.end method

.method private static createWSBool()Lorg/apache/poi/hssf/record/WSBoolRecord;
    .locals 2

    .prologue
    .line 975
    new-instance v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;-><init>()V

    .line 977
    .local v0, "retval":Lorg/apache/poi/hssf/record/WSBoolRecord;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setWSBool1(B)V

    .line 978
    const/16 v1, -0x3f

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setWSBool2(B)V

    .line 979
    return-object v0
.end method

.method private static createWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1182
    new-instance v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;-><init>()V

    .line 1184
    .local v0, "retval":Lorg/apache/poi/hssf/record/WindowTwoRecord;
    const/16 v1, 0x6b6

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setOptions(S)V

    .line 1185
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setTopRow(S)V

    .line 1186
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setLeftCol(S)V

    .line 1187
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setHeaderColor(I)V

    .line 1188
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setPageBreakZoom(S)V

    .line 1189
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setNormalZoom(S)V

    .line 1190
    return-object v0
.end method

.method private getGutsRecord()Lorg/apache/poi/hssf/record/GutsRecord;
    .locals 2

    .prologue
    .line 951
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

    if-nez v1, :cond_0

    .line 952
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createGuts()Lorg/apache/poi/hssf/record/GutsRecord;

    move-result-object v0

    .line 953
    .local v0, "result":Lorg/apache/poi/hssf/record/GutsRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/model/RecordOrderer;->addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V

    .line 954
    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

    .line 957
    .end local v0    # "result":Lorg/apache/poi/hssf/record/GutsRecord;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

    return-object v1
.end method

.method private getMergedRecords()Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    return-object v0
.end method

.method private getSizeOfInitialSheetRecords(I)I
    .locals 4
    .param p1, "bofRecordIndex"    # I

    .prologue
    .line 628
    const/4 v1, 0x0

    .line 630
    .local v1, "result":I
    add-int/lit8 v0, p1, 0x1

    .local v0, "j":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 631
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    .line 632
    .local v2, "tmpRec":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v3, v2, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    if-eqz v3, :cond_2

    .line 637
    .end local v2    # "tmpRec":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_0
    iget-boolean v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    if-eqz v3, :cond_1

    .line 638
    invoke-static {}, Lorg/apache/poi/hssf/record/UncalcedRecord;->getStaticRecordSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 640
    :cond_1
    return v1

    .line 635
    .restart local v2    # "tmpRec":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordBase;->getRecordSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private recalcRowGutter()V
    .locals 5

    .prologue
    .line 1629
    const/4 v2, 0x0

    .line 1630
    .local v2, "maxLevel":I
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1631
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/RowRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1632
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/RowRecord;

    .line 1633
    .local v3, "rowRecord":Lorg/apache/poi/hssf/record/RowRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1634
    goto :goto_0

    .line 1637
    .end local v3    # "rowRecord":Lorg/apache/poi/hssf/record/RowRecord;
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getGutsRecord()Lorg/apache/poi/hssf/record/GutsRecord;

    move-result-object v0

    .line 1639
    .local v0, "guts":Lorg/apache/poi/hssf/record/GutsRecord;
    add-int/lit8 v4, v2, 0x1

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/GutsRecord;->setRowLevelMax(S)V

    .line 1640
    mul-int/lit8 v4, v2, 0xc

    add-int/lit8 v4, v4, 0x1d

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/GutsRecord;->setLeftRowGutter(S)V

    .line 1641
    return-void
.end method

.method private setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "column"    # I
    .param p2, "xfStyle"    # Ljava/lang/Short;
    .param p3, "width"    # Ljava/lang/Integer;
    .param p4, "level"    # Ljava/lang/Integer;
    .param p5, "hidden"    # Ljava/lang/Boolean;
    .param p6, "collapsed"    # Ljava/lang/Boolean;

    .prologue
    .line 1130
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1131
    return-void
.end method

.method private static spillAggregate(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;Ljava/util/List;)V
    .locals 1
    .param p0, "ra"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "recs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    new-instance v0, Lorg/apache/poi/hssf/model/InternalSheet$1;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet$1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 371
    return-void
.end method


# virtual methods
.method public addMergedRegion(IIII)I
    .locals 4
    .param p1, "rowFrom"    # I
    .param p2, "colFrom"    # I
    .param p3, "rowTo"    # I
    .param p4, "colTo"    # I

    .prologue
    .line 512
    if-ge p3, p1, :cond_0

    .line 513
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The \'to\' row ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") must not be less than the \'from\' row ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_0
    if-ge p4, p2, :cond_1

    .line 517
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The \'to\' col ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") must not be less than the \'from\' col ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRecords()Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    move-result-object v0

    .line 522
    .local v0, "mrt":Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->addArea(IIII)V

    .line 523
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->getNumberOfMergedRegions()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public addRow(Lorg/apache/poi/hssf/record/RowRecord;)V
    .locals 5
    .param p1, "row"    # Lorg/apache/poi/hssf/record/RowRecord;

    .prologue
    const/4 v4, 0x1

    .line 723
    sget-object v2, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v2, v4}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    sget-object v2, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const-string v3, "addRow "

    invoke-virtual {v2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 725
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    .line 727
    .local v0, "d":Lorg/apache/poi/hssf/record/DimensionsRecord;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastRow()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 728
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastRow(I)V

    .line 730
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstRow()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 731
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstRow(I)V

    .line 735
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    .line 736
    .local v1, "existingRow":Lorg/apache/poi/hssf/record/RowRecord;
    if-eqz v1, :cond_3

    .line 737
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->removeRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 740
    :cond_3
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->insertRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 742
    sget-object v2, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v2, v4}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 743
    sget-object v2, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const-string v3, "exit addRow"

    invoke-virtual {v2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 744
    :cond_4
    return-void
.end method

.method public addValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "col"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .prologue
    const/4 v4, 0x1

    .line 657
    sget-object v1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v1, v4}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    sget-object v1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add value record  row"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 660
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    .line 662
    .local v0, "d":Lorg/apache/poi/hssf/record/DimensionsRecord;
    invoke-interface {p2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastCol()S

    move-result v2

    if-lt v1, v2, :cond_1

    .line 663
    invoke-interface {p2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastCol(S)V

    .line 665
    :cond_1
    invoke-interface {p2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstCol()S

    move-result v2

    if-ge v1, v2, :cond_2

    .line 666
    invoke-interface {p2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstCol(S)V

    .line 668
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->insertCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 669
    return-void
.end method

.method public aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I
    .locals 8
    .param p1, "drawingManager"    # Lorg/apache/poi/hssf/model/DrawingManager2;
    .param p2, "createIfMissing"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1550
    const/16 v7, 0xec

    invoke-virtual {p0, v7}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 1551
    .local v1, "loc":I
    if-ne v1, v5, :cond_0

    move v3, v6

    .line 1552
    .local v3, "noDrawingRecordsFound":Z
    :goto_0
    if-eqz v3, :cond_3

    .line 1553
    if-nez p2, :cond_1

    move v2, v1

    .line 1572
    .end local v1    # "loc":I
    .local v2, "loc":I
    :goto_1
    return v5

    .line 1551
    .end local v2    # "loc":I
    .end local v3    # "noDrawingRecordsFound":Z
    .restart local v1    # "loc":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1558
    .restart local v3    # "noDrawingRecordsFound":Z
    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-direct {v0, v6}, Lorg/apache/poi/hssf/record/EscherAggregate;-><init>(Z)V

    .line 1559
    .local v0, "aggregate":Lorg/apache/poi/hssf/record/EscherAggregate;
    const/16 v6, 0x2694

    invoke-virtual {p0, v6}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 1560
    if-ne v1, v5, :cond_2

    .line 1561
    const/16 v5, 0x23e

    invoke-virtual {p0, v5}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 1565
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v2, v1

    .end local v1    # "loc":I
    .restart local v2    # "loc":I
    move v5, v1

    .line 1566
    goto :goto_1

    .line 1563
    .end local v2    # "loc":I
    .restart local v1    # "loc":I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1568
    .end local v0    # "aggregate":Lorg/apache/poi/hssf/record/EscherAggregate;
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v4

    .line 1570
    .local v4, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-static {v4, v1}, Lorg/apache/poi/hssf/record/EscherAggregate;->createAggregate(Ljava/util/List;I)Lorg/apache/poi/hssf/record/EscherAggregate;

    move v2, v1

    .end local v1    # "loc":I
    .restart local v2    # "loc":I
    move v5, v1

    .line 1572
    goto :goto_1
.end method

.method public cloneSheet()Lorg/apache/poi/hssf/model/InternalSheet;
    .locals 6

    .prologue
    .line 405
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .local v0, "clonedRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 407
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    .line 408
    .local v2, "rb":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v4, v2, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 409
    check-cast v4, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    new-instance v5, Lorg/apache/poi/hssf/model/InternalSheet$RecordCloner;

    invoke-direct {v5, v0}, Lorg/apache/poi/hssf/model/InternalSheet$RecordCloner;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 406
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    :cond_0
    instance-of v4, v2, Lorg/apache/poi/hssf/record/EscherAggregate;

    if-eqz v4, :cond_1

    .line 416
    new-instance v2, Lorg/apache/poi/hssf/record/DrawingRecord;

    .end local v2    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    invoke-direct {v2}, Lorg/apache/poi/hssf/record/DrawingRecord;-><init>()V

    .restart local v2    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_1
    move-object v4, v2

    .line 418
    check-cast v4, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/Record;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    .line 419
    .local v3, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 421
    .end local v2    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v3    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_2
    new-instance v4, Lorg/apache/poi/hssf/model/RecordStream;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lorg/apache/poi/hssf/model/RecordStream;-><init>(Ljava/util/List;I)V

    invoke-static {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->createSheet(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v4

    return-object v4
.end method

.method public createFreezePane(IIII)V
    .locals 8
    .param p1, "colSplit"    # I
    .param p2, "rowSplit"    # I
    .param p3, "topRow"    # I
    .param p4, "leftmostColumn"    # I

    .prologue
    const/16 v7, 0x1d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1378
    const/16 v4, 0x41

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v2

    .line 1379
    .local v2, "paneLoc":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1380
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1383
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1384
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setFreezePanes(Z)V

    .line 1385
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setFreezePanesNoSplit(Z)V

    .line 1386
    invoke-virtual {p0, v7}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/SelectionRecord;

    .line 1387
    .local v3, "sel":Lorg/apache/poi/hssf/record/SelectionRecord;
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/SelectionRecord;->setPane(B)V

    .line 1414
    :goto_0
    return-void

    .line 1391
    .end local v3    # "sel":Lorg/apache/poi/hssf/record/SelectionRecord;
    :cond_1
    const/16 v4, 0x23e

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 1392
    .local v0, "loc":I
    new-instance v1, Lorg/apache/poi/hssf/record/PaneRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/PaneRecord;-><init>()V

    .line 1393
    .local v1, "pane":Lorg/apache/poi/hssf/record/PaneRecord;
    int-to-short v4, p1

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/record/PaneRecord;->setX(S)V

    .line 1394
    int-to-short v4, p2

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/record/PaneRecord;->setY(S)V

    .line 1395
    int-to-short v4, p3

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/record/PaneRecord;->setTopRow(S)V

    .line 1396
    int-to-short v4, p4

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/record/PaneRecord;->setLeftColumn(S)V

    .line 1397
    if-nez p2, :cond_2

    .line 1398
    invoke-virtual {v1, v5}, Lorg/apache/poi/hssf/record/PaneRecord;->setTopRow(S)V

    .line 1399
    invoke-virtual {v1, v6}, Lorg/apache/poi/hssf/record/PaneRecord;->setActivePane(S)V

    .line 1406
    :goto_1
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v4, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1408
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v4, v6}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setFreezePanes(Z)V

    .line 1409
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v4, v6}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setFreezePanesNoSplit(Z)V

    .line 1411
    invoke-virtual {p0, v7}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/SelectionRecord;

    .line 1412
    .restart local v3    # "sel":Lorg/apache/poi/hssf/record/SelectionRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/PaneRecord;->getActivePane()S

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/SelectionRecord;->setPane(B)V

    goto :goto_0

    .line 1400
    .end local v3    # "sel":Lorg/apache/poi/hssf/record/SelectionRecord;
    :cond_2
    if-nez p1, :cond_3

    .line 1401
    invoke-virtual {v1, v5}, Lorg/apache/poi/hssf/record/PaneRecord;->setLeftColumn(S)V

    .line 1402
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/record/PaneRecord;->setActivePane(S)V

    goto :goto_1

    .line 1404
    :cond_3
    invoke-virtual {v1, v5}, Lorg/apache/poi/hssf/record/PaneRecord;->setActivePane(S)V

    goto :goto_1
.end method

.method public createSplitPane(IIIII)V
    .locals 7
    .param p1, "xSplitPos"    # I
    .param p2, "ySplitPos"    # I
    .param p3, "topRow"    # I
    .param p4, "leftmostColumn"    # I
    .param p5, "activePane"    # I

    .prologue
    const/4 v6, 0x0

    .line 1430
    const/16 v4, 0x41

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 1431
    .local v1, "paneLoc":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 1432
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1434
    :cond_0
    const/16 v4, 0x23e

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 1435
    .local v0, "loc":I
    new-instance v2, Lorg/apache/poi/hssf/record/PaneRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/PaneRecord;-><init>()V

    .line 1436
    .local v2, "r":Lorg/apache/poi/hssf/record/PaneRecord;
    int-to-short v4, p1

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/record/PaneRecord;->setX(S)V

    .line 1437
    int-to-short v4, p2

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/record/PaneRecord;->setY(S)V

    .line 1438
    int-to-short v4, p3

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/record/PaneRecord;->setTopRow(S)V

    .line 1439
    int-to-short v4, p4

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/record/PaneRecord;->setLeftColumn(S)V

    .line 1440
    int-to-short v4, p5

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/record/PaneRecord;->setActivePane(S)V

    .line 1441
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v4, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1443
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v4, v6}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setFreezePanes(Z)V

    .line 1444
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v4, v6}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setFreezePanesNoSplit(Z)V

    .line 1446
    const/16 v4, 0x1d

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/SelectionRecord;

    .line 1447
    .local v3, "sel":Lorg/apache/poi/hssf/record/SelectionRecord;
    invoke-virtual {v3, v6}, Lorg/apache/poi/hssf/record/SelectionRecord;->setPane(B)V

    .line 1449
    return-void
.end method

.method public findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;
    .locals 2
    .param p1, "sid"    # S

    .prologue
    .line 1291
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 1292
    .local v0, "ix":I
    if-gez v0, :cond_0

    .line 1293
    const/4 v1, 0x0

    .line 1295
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    goto :goto_0
.end method

.method public findFirstRecordLocBySid(S)I
    .locals 5
    .param p1, "sid"    # S

    .prologue
    .line 1323
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 1324
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1325
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1326
    .local v2, "rb":Ljava/lang/Object;
    instance-of v4, v2, Lorg/apache/poi/hssf/record/Record;

    if-nez v4, :cond_1

    .line 1324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 1329
    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    .line 1330
    .local v3, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1334
    .end local v0    # "i":I
    .end local v2    # "rb":Ljava/lang/Object;
    .end local v3    # "record":Lorg/apache/poi/hssf/record/Record;
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getActiveCellCol()S
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    if-nez v0, :cond_0

    .line 1256
    const/4 v0, 0x0

    .line 1258
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellCol()I

    move-result v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method public getActiveCellRow()I
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    if-nez v0, :cond_0

    .line 1232
    const/4 v0, 0x0

    .line 1234
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellRow()I

    move-result v0

    goto :goto_0
.end method

.method public getCellValueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/poi/hssf/record/CellValueRecordInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getCellValueIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getColumnOutlineLevel(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 1672
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getOutlineLevel(I)I

    move-result v0

    return v0
.end method

.method public getColumnWidth(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 1056
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    .line 1057
    .local v0, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getColumnWidth()I

    move-result v1

    .line 1062
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->getColWidth()I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    goto :goto_0
.end method

.method public getConditionalFormattingTable()Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    .line 550
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/model/RecordOrderer;->addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    return-object v0
.end method

.method public getDefaultColumnWidth()I
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->getColWidth()I

    move-result v0

    return v0
.end method

.method public getDefaultRowHeight()S
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->getRowHeight()S

    move-result v0

    return v0
.end method

.method public getGridsetRecord()Lorg/apache/poi/hssf/record/GridsetRecord;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    return-object v0
.end method

.method public getLeftCol()S
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getLeftCol()S

    move-result v0

    goto :goto_0
.end method

.method public getMergedRegionAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 537
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRecords()Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    move-result-object v0

    .line 538
    .local v0, "mrt":Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->getNumberOfMergedRegions()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 539
    const/4 v1, 0x0

    .line 541
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->get(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    goto :goto_0
.end method

.method public getNextRow()Lorg/apache/poi/hssf/record/RowRecord;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->rowRecIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->rowRecIterator:Ljava/util/Iterator;

    .line 810
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->rowRecIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    const/4 v0, 0x0

    .line 814
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->rowRecIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/RowRecord;

    goto :goto_0
.end method

.method public getNoteRecords()[Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 6

    .prologue
    .line 1656
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1657
    .local v3, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/NoteRecord;>;"
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1658
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    .line 1659
    .local v1, "rec":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v4, v1, Lorg/apache/poi/hssf/record/NoteRecord;

    if-eqz v4, :cond_0

    .line 1660
    check-cast v1, Lorg/apache/poi/hssf/record/NoteRecord;

    .end local v1    # "rec":Lorg/apache/poi/hssf/record/RecordBase;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1663
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 1664
    sget-object v2, Lorg/apache/poi/hssf/record/NoteRecord;->EMPTY_ARRAY:[Lorg/apache/poi/hssf/record/NoteRecord;

    .line 1668
    :goto_1
    return-object v2

    .line 1666
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Lorg/apache/poi/hssf/record/NoteRecord;

    .line 1667
    .local v2, "result":[Lorg/apache/poi/hssf/record/NoteRecord;
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1
.end method

.method public getNumMergedRegions()I
    .locals 1

    .prologue
    .line 545
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRecords()Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->getNumberOfMergedRegions()I

    move-result v0

    return v0
.end method

.method public getOrCreateDataValidityTable()Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
    .locals 2

    .prologue
    .line 1644
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    if-nez v1, :cond_0

    .line 1645
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;-><init>()V

    .line 1646
    .local v0, "result":Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/model/RecordOrderer;->addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V

    .line 1647
    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    .line 1649
    .end local v0    # "result":Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    return-object v1
.end method

.method public getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;
    .locals 2

    .prologue
    .line 1591
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    if-nez v0, :cond_0

    .line 1592
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    .line 1593
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/model/RecordOrderer;->addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V

    .line 1595
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    return-object v0
.end method

.method public getPaneInformation()Lorg/apache/poi/hssf/util/PaneInformation;
    .locals 8

    .prologue
    .line 1456
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hssf/record/PaneRecord;

    .line 1457
    .local v7, "rec":Lorg/apache/poi/hssf/record/PaneRecord;
    if-nez v7, :cond_0

    .line 1458
    const/4 v0, 0x0

    .line 1460
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/util/PaneInformation;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/PaneRecord;->getX()S

    move-result v1

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/PaneRecord;->getY()S

    move-result v2

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/PaneRecord;->getTopRow()S

    move-result v3

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/PaneRecord;->getLeftColumn()S

    move-result v4

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/PaneRecord;->getActivePane()S

    move-result v5

    int-to-byte v5, v5

    iget-object v6, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getFreezePanes()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hssf/util/PaneInformation;-><init>(SSSSBZ)V

    goto :goto_0
.end method

.method public getPrintGridlines()Lorg/apache/poi/hssf/record/PrintGridlinesRecord;
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    return-object v0
.end method

.method public getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;
    .locals 1

    .prologue
    .line 1476
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1276
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    return-object v0
.end method

.method public getRow(I)Lorg/apache/poi/hssf/record/RowRecord;
    .locals 1
    .param p1, "rownum"    # I

    .prologue
    .line 833
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    return-object v0
.end method

.method public getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    return-object v0
.end method

.method public getSelection()Lorg/apache/poi/hssf/record/SelectionRecord;
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    return-object v0
.end method

.method public getTopRow()S
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getTopRow()S

    move-result v0

    goto :goto_0
.end method

.method public getUncalced()Z
    .locals 1

    .prologue
    .line 1530
    iget-boolean v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    return v0
.end method

.method public getValueRecords()[Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getValueRecords()[Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v0

    return-object v0
.end method

.method public getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    return-object v0
.end method

.method public getXFIndexForColAt(S)S
    .locals 2
    .param p1, "columnIndex"    # S

    .prologue
    .line 1080
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    .line 1081
    .local v0, "ci":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getXFIndex()I

    move-result v1

    int-to-short v1, v1

    .line 1084
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0xf

    goto :goto_0
.end method

.method public groupColumnRange(IIZ)V
    .locals 3
    .param p1, "fromColumn"    # I
    .param p2, "toColumn"    # I
    .param p3, "indent"    # Z

    .prologue
    .line 1144
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->groupColumnRange(IIZ)V

    .line 1147
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getMaxOutlineLevel()I

    move-result v1

    .line 1149
    .local v1, "maxLevel":I
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getGutsRecord()Lorg/apache/poi/hssf/record/GutsRecord;

    move-result-object v0

    .line 1150
    .local v0, "guts":Lorg/apache/poi/hssf/record/GutsRecord;
    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/GutsRecord;->setColLevelMax(S)V

    .line 1151
    if-nez v1, :cond_0

    .line 1152
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/GutsRecord;->setTopColGutter(S)V

    .line 1156
    :goto_0
    return-void

    .line 1154
    :cond_0
    add-int/lit8 v2, v1, -0x1

    mul-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x1d

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/GutsRecord;->setTopColGutter(S)V

    goto :goto_0
.end method

.method public groupRowRange(IIZ)V
    .locals 4
    .param p1, "fromRow"    # I
    .param p2, "toRow"    # I
    .param p3, "indent"    # Z

    .prologue
    .line 1610
    move v2, p1

    .local v2, "rowNum":I
    :goto_0
    if-gt v2, p2, :cond_2

    .line 1612
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    .line 1613
    .local v1, "row":Lorg/apache/poi/hssf/record/RowRecord;
    if-nez v1, :cond_0

    .line 1615
    invoke-static {v2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->createRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    .line 1616
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->addRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 1618
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v0

    .line 1619
    .local v0, "level":I
    if-eqz p3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1620
    :goto_1
    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1621
    const/4 v3, 0x7

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1622
    int-to-short v3, v0

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/RowRecord;->setOutlineLevel(S)V

    .line 1610
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1619
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1625
    .end local v0    # "level":I
    .end local v1    # "row":Lorg/apache/poi/hssf/record/RowRecord;
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->recalcRowGutter()V

    .line 1626
    return-void
.end method

.method public isColumnHidden(I)Z
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 1110
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    .line 1111
    .local v0, "cir":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    if-nez v0, :cond_0

    .line 1112
    const/4 v1, 0x0

    .line 1114
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v1

    goto :goto_0
.end method

.method public isDisplayFormulas()Z
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayFormulas()Z

    move-result v0

    return v0
.end method

.method public isDisplayGridlines()Z
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayGridlines()Z

    move-result v0

    return v0
.end method

.method public isDisplayRowColHeadings()Z
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayRowColHeadings()Z

    move-result v0

    return v0
.end method

.method public isGridsPrinted()Z
    .locals 3

    .prologue
    .line 1004
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    if-nez v1, :cond_0

    .line 1005
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createGridset()Lorg/apache/poi/hssf/record/GridsetRecord;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    .line 1007
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 1008
    .local v0, "loc":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1010
    .end local v0    # "loc":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/GridsetRecord;->getGridset()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public preSerialize()V
    .locals 3

    .prologue
    .line 1581
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    .line 1582
    .local v1, "r":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/EscherAggregate;

    if-eqz v2, :cond_0

    .line 1584
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordBase;->getRecordSize()I

    goto :goto_0

    .line 1587
    .end local v1    # "r":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_1
    return-void
.end method

.method public removeMergedRegion(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 528
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRecords()Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    move-result-object v0

    .line 529
    .local v0, "mrt":Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->getNumberOfMergedRegions()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 533
    :goto_0
    return-void

    .line 532
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->remove(I)V

    goto :goto_0
.end method

.method public removeRow(Lorg/apache/poi/hssf/record/RowRecord;)V
    .locals 1
    .param p1, "row"    # Lorg/apache/poi/hssf/record/RowRecord;

    .prologue
    .line 754
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->removeRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    .line 755
    return-void
.end method

.method public removeValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "col"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .prologue
    const/4 v4, 0x1

    .line 682
    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const-string v1, "remove value record row %"

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/poi/util/POILogger;->logFormatted(ILjava/lang/String;Ljava/lang/Object;)V

    .line 684
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->removeCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 685
    return-void
.end method

.method public replaceValueRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 3
    .param p1, "newval"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .prologue
    const/4 v2, 0x1

    .line 699
    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const-string v1, "replaceValueRecord "

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 706
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->removeCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 707
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->insertCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 708
    return-void
.end method

.method public setActiveCellCol(S)V
    .locals 1
    .param p1, "col"    # S

    .prologue
    .line 1269
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SelectionRecord;->setActiveCellCol(S)V

    .line 1273
    :cond_0
    return-void
.end method

.method public setActiveCellRow(I)V
    .locals 1
    .param p1, "row"    # I

    .prologue
    .line 1245
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SelectionRecord;->setActiveCellRow(I)V

    .line 1248
    :cond_0
    return-void
.end method

.method public setColumnGroupCollapsed(IZ)V
    .locals 1
    .param p1, "columnNumber"    # I
    .param p2, "collapsed"    # Z

    .prologue
    .line 1600
    if-eqz p2, :cond_0

    .line 1601
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->collapseColumn(I)V

    .line 1605
    :goto_0
    return-void

    .line 1603
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->expandColumn(I)V

    goto :goto_0
.end method

.method public setColumnHidden(IZ)V
    .locals 7
    .param p1, "column"    # I
    .param p2, "hidden"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1123
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1124
    return-void
.end method

.method public setColumnWidth(II)V
    .locals 7
    .param p1, "column"    # I
    .param p2, "width"    # I

    .prologue
    const/4 v2, 0x0

    .line 1096
    const v0, 0xff00

    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maximum column width for an individual cell is 255 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1098
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1099
    return-void
.end method

.method public setDefaultColumnStyle(II)V
    .locals 7
    .param p1, "column"    # I
    .param p2, "styleIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 1126
    int-to-short v0, p2

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1127
    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .locals 1
    .param p1, "dcw"    # I

    .prologue
    .line 1026
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->setColWidth(I)V

    .line 1027
    return-void
.end method

.method public setDefaultRowHeight(S)V
    .locals 2
    .param p1, "dch"    # S

    .prologue
    .line 1033
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->setRowHeight(S)V

    .line 1035
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->setOptionFlags(S)V

    .line 1036
    return-void
.end method

.method public setDimensions(ISIS)V
    .locals 4
    .param p1, "firstrow"    # I
    .param p2, "firstcol"    # S
    .param p3, "lastrow"    # I
    .param p4, "lastcol"    # S

    .prologue
    const/4 v3, 0x1

    .line 565
    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v3}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const-string v1, "Sheet.setDimensions"

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 568
    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "firstrow"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "firstcol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lastrow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lastcol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 574
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstCol(S)V

    .line 575
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstRow(I)V

    .line 576
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {v0, p4}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastCol(S)V

    .line 577
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {v0, p3}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastRow(I)V

    .line 578
    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v3}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const-string v1, "Sheet.setDimensions exiting"

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 580
    :cond_1
    return-void
.end method

.method public setDisplayFormulas(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1498
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setDisplayFormulas(Z)V

    .line 1499
    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1483
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setDisplayGridlines(Z)V

    .line 1484
    return-void
.end method

.method public setDisplayRowColHeadings(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1514
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setDisplayRowColHeadings(Z)V

    .line 1515
    return-void
.end method

.method public setGridsPrinted(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1018
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/GridsetRecord;->setGridset(Z)V

    .line 1019
    return-void

    .line 1018
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLeftCol(S)V
    .locals 1
    .param p1, "leftCol"    # S

    .prologue
    .line 1215
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setLeftCol(S)V

    .line 1218
    :cond_0
    return-void
.end method

.method public setPrintGridlines(Lorg/apache/poi/hssf/record/PrintGridlinesRecord;)V
    .locals 0
    .param p1, "newPrintGridlines"    # Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    .prologue
    .line 1356
    iput-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    .line 1357
    return-void
.end method

.method public setSCLRecord(Lorg/apache/poi/hssf/record/SCLRecord;)V
    .locals 4
    .param p1, "sclRecord"    # Lorg/apache/poi/hssf/record/SCLRecord;

    .prologue
    .line 1305
    const/16 v2, 0xa0

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 1306
    .local v0, "oldRecordLoc":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1308
    const/16 v2, 0x23e

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 1309
    .local v1, "windowRecordLoc":I
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1313
    .end local v1    # "windowRecordLoc":I
    :goto_0
    return-void

    .line 1311
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "sel"    # Z

    .prologue
    .line 1364
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setSelected(Z)V

    .line 1365
    return-void
.end method

.method public setSelection(Lorg/apache/poi/hssf/record/SelectionRecord;)V
    .locals 0
    .param p1, "selection"    # Lorg/apache/poi/hssf/record/SelectionRecord;

    .prologue
    .line 1469
    iput-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    .line 1470
    return-void
.end method

.method public setTopRow(S)V
    .locals 1
    .param p1, "topRow"    # S

    .prologue
    .line 1205
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setTopRow(S)V

    .line 1208
    :cond_0
    return-void
.end method

.method public setUncalced(Z)V
    .locals 0
    .param p1, "uncalced"    # Z

    .prologue
    .line 1536
    iput-boolean p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    .line 1537
    return-void
.end method

.method public updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V
    .locals 1
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .param p2, "externSheetIndex"    # I

    .prologue
    .line 503
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->updateFormulasAfterRowShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    .line 504
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getConditionalFormattingTable()Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    .line 508
    :cond_0
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;I)V
    .locals 8
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;
    .param p2, "offset"    # I

    .prologue
    .line 584
    new-instance v5, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;

    invoke-direct {v5, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;-><init>(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;I)V

    .line 586
    .local v5, "ptv":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;
    const/4 v2, 0x0

    .line 588
    .local v2, "haveSerializedIndex":Z
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    iget-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 589
    iget-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hssf/record/RecordBase;

    .line 591
    .local v6, "record":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v7, v6, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    if-eqz v7, :cond_2

    move-object v0, v6

    .line 592
    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    .line 593
    .local v0, "agg":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 599
    .end local v0    # "agg":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
    :goto_1
    instance-of v7, v6, Lorg/apache/poi/hssf/record/BOFRecord;

    if-eqz v7, :cond_1

    .line 600
    if-nez v2, :cond_1

    .line 601
    const/4 v2, 0x1

    .line 606
    iget-boolean v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    if-eqz v7, :cond_0

    .line 607
    new-instance v7, Lorg/apache/poi/hssf/record/UncalcedRecord;

    invoke-direct {v7}, Lorg/apache/poi/hssf/record/UncalcedRecord;-><init>()V

    invoke-virtual {v5, v7}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 611
    :cond_0
    iget-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    if-eqz v7, :cond_1

    .line 613
    invoke-direct {p0, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->getSizeOfInitialSheetRecords(I)I

    move-result v3

    .line 614
    .local v3, "initRecsSize":I
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->getPosition()I

    move-result v1

    .line 615
    .local v1, "currentPos":I
    iget-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v7, v1, v3}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->createIndexRecord(II)Lorg/apache/poi/hssf/record/IndexRecord;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 588
    .end local v1    # "currentPos":I
    .end local v3    # "initRecsSize":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v7, v6

    .line 595
    check-cast v7, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v5, v7}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_1

    .line 620
    .end local v6    # "record":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_3
    return-void
.end method
