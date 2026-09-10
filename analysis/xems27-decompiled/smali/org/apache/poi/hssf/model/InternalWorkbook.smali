.class public final Lorg/apache/poi/hssf/model/InternalWorkbook;
.super Ljava/lang/Object;
.source "InternalWorkbook.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final CODEPAGE:S = 0x4b0s

.field private static final DEBUG:I = 0x1

.field private static final MAX_SENSITIVE_SHEET_NAME_LEN:I = 0x1f

.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final boundsheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final commentRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/record/NameCommentRecord;",
            ">;"
        }
    .end annotation
.end field

.field private drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

.field private escherBSERecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherBSERecord;",
            ">;"
        }
    .end annotation
.end field

.field private fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

.field private final formats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/FormatRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final hyperlinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/HyperlinkRecord;",
            ">;"
        }
    .end annotation
.end field

.field private linkTable:Lorg/apache/poi/hssf/model/LinkTable;

.field private maxformatid:I

.field private numfonts:I

.field private numxfs:I

.field private final records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

.field protected sst:Lorg/apache/poi/hssf/record/SSTRecord;

.field private uses1904datewindowing:Z

.field private windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

.field private writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

.field private writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    const-class v0, Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-direct {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->hyperlinks:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    .line 184
    iput v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 185
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    .line 186
    iput-boolean v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->uses1904datewindowing:Z

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    .line 189
    return-void
.end method

.method private checkSheets(I)V
    .locals 3
    .param p1, "sheetnum"    # I

    .line 732
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 733
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_0

    .line 736
    invoke-static {p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBoundSheet(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    .line 738
    .local v0, "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 739
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    .line 740
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(I)I

    .line 742
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->fixTabIdRecord()I

    goto :goto_0

    .line 734
    .end local v0    # "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sheet number out of bounds!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_1
    :goto_0
    return-void
.end method

.method private static createBOF()Lorg/apache/poi/hssf/record/BOFRecord;
    .locals 2

    .line 1109
    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>()V

    .line 1111
    .local v0, "retval":Lorg/apache/poi/hssf/record/BOFRecord;
    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setVersion(I)V

    .line 1112
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setType(I)V

    .line 1113
    const/16 v1, 0x10d3

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setBuild(I)V

    .line 1114
    const/16 v1, 0x7cc

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setBuildYear(I)V

    .line 1115
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setHistoryBitMask(I)V

    .line 1116
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setRequiredVersion(I)V

    .line 1117
    return-object v0
.end method

.method private static createBackup()Lorg/apache/poi/hssf/record/BackupRecord;
    .locals 2

    .line 1248
    new-instance v0, Lorg/apache/poi/hssf/record/BackupRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BackupRecord;-><init>()V

    .line 1250
    .local v0, "retval":Lorg/apache/poi/hssf/record/BackupRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BackupRecord;->setBackup(S)V

    .line 1251
    return-object v0
.end method

.method private static createBookBool()Lorg/apache/poi/hssf/record/BookBoolRecord;
    .locals 2

    .line 1293
    new-instance v0, Lorg/apache/poi/hssf/record/BookBoolRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BookBoolRecord;-><init>()V

    .line 1294
    .local v0, "retval":Lorg/apache/poi/hssf/record/BookBoolRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BookBoolRecord;->setSaveLinkValues(S)V

    .line 1295
    return-object v0
.end method

.method private static createBoundSheet(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .locals 3
    .param p0, "id"    # I

    .line 1764
    new-instance v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sheet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createCodepage()Lorg/apache/poi/hssf/record/CodepageRecord;
    .locals 2

    .line 1151
    new-instance v0, Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>()V

    .line 1153
    .local v0, "retval":Lorg/apache/poi/hssf/record/CodepageRecord;
    const/16 v1, 0x4b0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CodepageRecord;->setCodepage(S)V

    .line 1154
    return-object v0
.end method

.method private static createCountry()Lorg/apache/poi/hssf/record/CountryRecord;
    .locals 4

    .line 1772
    new-instance v0, Lorg/apache/poi/hssf/record/CountryRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CountryRecord;-><init>()V

    .line 1774
    .local v0, "retval":Lorg/apache/poi/hssf/record/CountryRecord;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CountryRecord;->setDefaultCountry(S)V

    .line 1777
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ru_RU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1778
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CountryRecord;->setCurrentCountry(S)V

    goto :goto_0

    .line 1781
    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CountryRecord;->setCurrentCountry(S)V

    .line 1784
    :goto_0
    return-object v0
.end method

.method private static createDSF()Lorg/apache/poi/hssf/record/DSFRecord;
    .locals 2

    .line 1158
    new-instance v0, Lorg/apache/poi/hssf/record/DSFRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/DSFRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createDateWindow1904()Lorg/apache/poi/hssf/record/DateWindow1904Record;
    .locals 2

    .line 1267
    new-instance v0, Lorg/apache/poi/hssf/record/DateWindow1904Record;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DateWindow1904Record;-><init>()V

    .line 1269
    .local v0, "retval":Lorg/apache/poi/hssf/record/DateWindow1904Record;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DateWindow1904Record;->setWindowing(S)V

    .line 1270
    return-object v0
.end method

.method private static createExtendedFormat()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 3

    .line 1674
    new-instance v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;-><init>()V

    .line 1676
    .local v0, "retval":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1677
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1678
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1679
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1680
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1681
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1682
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1683
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1684
    const/16 v1, 0x20c0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1685
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setTopBorderPaletteIdx(S)V

    .line 1686
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBottomBorderPaletteIdx(S)V

    .line 1687
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setLeftBorderPaletteIdx(S)V

    .line 1688
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setRightBorderPaletteIdx(S)V

    .line 1689
    return-object v0
.end method

.method private static createExtendedFormat(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 12
    .param p0, "id"    # I

    .line 1347
    new-instance v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;-><init>()V

    .line 1349
    .local v0, "retval":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    const/16 v1, 0x8

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/16 v4, 0x5c00

    const/16 v5, -0x800

    const/4 v6, 0x1

    const/16 v7, -0xc00

    const/16 v8, -0xb

    const/16 v9, 0x20c0

    const/16 v10, 0x20

    const/4 v11, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 1655
    :pswitch_0
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1656
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1657
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1658
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1659
    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1660
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1661
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1662
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1663
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    goto/16 :goto_0

    .line 1643
    :pswitch_1
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1644
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1645
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1646
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1647
    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1648
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1649
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1650
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1651
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1652
    goto/16 :goto_0

    .line 1631
    :pswitch_2
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1632
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1633
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1634
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1635
    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1636
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1637
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1638
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1639
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1640
    goto/16 :goto_0

    .line 1619
    :pswitch_3
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1620
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1621
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1622
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1623
    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1624
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1625
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1626
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1627
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1628
    goto/16 :goto_0

    .line 1607
    :pswitch_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1608
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1609
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1610
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1611
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1612
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1613
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1614
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1615
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1616
    goto/16 :goto_0

    .line 1594
    :pswitch_5
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1595
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1596
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1597
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1598
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1599
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1600
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1601
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1602
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1603
    goto/16 :goto_0

    .line 1582
    :pswitch_6
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1583
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1584
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1585
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1586
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1587
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1588
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1589
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1590
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1591
    goto/16 :goto_0

    .line 1570
    :pswitch_7
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1571
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1572
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1573
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1574
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1575
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1576
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1577
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1578
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1579
    goto/16 :goto_0

    .line 1558
    :pswitch_8
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1559
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1560
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1561
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1562
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1563
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1564
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1565
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1566
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1567
    goto/16 :goto_0

    .line 1546
    :pswitch_9
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1547
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1548
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1549
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1550
    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1551
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1552
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1553
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1554
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1555
    goto/16 :goto_0

    .line 1533
    :pswitch_a
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1534
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1535
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1536
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1537
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1538
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1539
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1540
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1541
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1542
    goto/16 :goto_0

    .line 1520
    :pswitch_b
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1521
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1522
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1523
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1524
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1525
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1526
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1527
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1528
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1529
    goto/16 :goto_0

    .line 1508
    :pswitch_c
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1509
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1510
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1511
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1512
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1513
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1514
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1515
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1516
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1517
    goto/16 :goto_0

    .line 1496
    :pswitch_d
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1497
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1498
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1499
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1500
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1501
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1502
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1503
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1504
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1505
    goto/16 :goto_0

    .line 1484
    :pswitch_e
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1485
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1486
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1487
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1488
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1489
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1490
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1491
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1492
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1493
    goto/16 :goto_0

    .line 1472
    :pswitch_f
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1473
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1474
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1475
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1476
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1477
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1478
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1479
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1480
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1481
    goto/16 :goto_0

    .line 1460
    :pswitch_10
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1461
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1462
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1463
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1464
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1465
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1466
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1467
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1468
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1469
    goto/16 :goto_0

    .line 1448
    :pswitch_11
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1449
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1450
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1451
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1452
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1453
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1454
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1455
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1456
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1457
    goto/16 :goto_0

    .line 1436
    :pswitch_12
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1437
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1438
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1439
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1440
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1441
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1442
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1443
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1444
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1445
    goto/16 :goto_0

    .line 1424
    :pswitch_13
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1425
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1426
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1427
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1428
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1429
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1430
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1431
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1432
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1433
    goto/16 :goto_0

    .line 1412
    :pswitch_14
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1413
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1414
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1415
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1416
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1417
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1418
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1419
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1420
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1421
    goto/16 :goto_0

    .line 1400
    :pswitch_15
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1401
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1402
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1403
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1404
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1405
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1406
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1407
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1408
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1409
    goto :goto_0

    .line 1388
    :pswitch_16
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1389
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1390
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1391
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1392
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1393
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1394
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1395
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1396
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1397
    goto :goto_0

    .line 1376
    :pswitch_17
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1377
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1378
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1379
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1380
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1381
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1382
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1383
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1384
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1385
    goto :goto_0

    .line 1364
    :pswitch_18
    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1365
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1366
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1367
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1368
    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1369
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1370
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1371
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1372
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1373
    goto :goto_0

    .line 1352
    :pswitch_19
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 1353
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFormatIndex(S)V

    .line 1354
    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setCellOptions(S)V

    .line 1355
    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAlignmentOptions(S)V

    .line 1356
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1357
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setBorderOptions(S)V

    .line 1358
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setPaletteOptions(S)V

    .line 1359
    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setAdtlPaletteOptions(S)V

    .line 1360
    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFillPaletteOptions(S)V

    .line 1361
    nop

    .line 1666
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createExtendedSST()Lorg/apache/poi/hssf/record/ExtSSTRecord;
    .locals 2

    .line 1793
    new-instance v0, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;-><init>()V

    .line 1794
    .local v0, "retval":Lorg/apache/poi/hssf/record/ExtSSTRecord;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->setNumStringsPerBucket(S)V

    .line 1795
    return-object v0
.end method

.method private static createFnGroupCount()Lorg/apache/poi/hssf/record/FnGroupCountRecord;
    .locals 2

    .line 1172
    new-instance v0, Lorg/apache/poi/hssf/record/FnGroupCountRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FnGroupCountRecord;-><init>()V

    .line 1174
    .local v0, "retval":Lorg/apache/poi/hssf/record/FnGroupCountRecord;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FnGroupCountRecord;->setCount(S)V

    .line 1175
    return-object v0
.end method

.method private static createFont()Lorg/apache/poi/hssf/record/FontRecord;
    .locals 2

    .line 1308
    new-instance v0, Lorg/apache/poi/hssf/record/FontRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FontRecord;-><init>()V

    .line 1310
    .local v0, "retval":Lorg/apache/poi/hssf/record/FontRecord;
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setFontHeight(S)V

    .line 1311
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setAttributes(S)V

    .line 1312
    const/16 v1, 0x7fff

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setColorPaletteIndex(S)V

    .line 1313
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setBoldWeight(S)V

    .line 1314
    const-string v1, "Arial"

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setFontName(Ljava/lang/String;)V

    .line 1315
    return-object v0
.end method

.method private static createFormat(I)Lorg/apache/poi/hssf/record/FormatRecord;
    .locals 3
    .param p0, "id"    # I

    .line 1328
    packed-switch p0, :pswitch_data_0

    .line 1338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1336
    :pswitch_0
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    const/16 v1, 0x2b

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1335
    :pswitch_1
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    const/16 v1, 0x2c

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1334
    :pswitch_2
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    const/16 v1, 0x29

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1333
    :pswitch_3
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    const/16 v1, 0x2a

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1332
    :pswitch_4
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1331
    :pswitch_5
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1330
    :pswitch_6
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1329
    :pswitch_7
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createHideObj()Lorg/apache/poi/hssf/record/HideObjRecord;
    .locals 2

    .line 1258
    new-instance v0, Lorg/apache/poi/hssf/record/HideObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HideObjRecord;-><init>()V

    .line 1259
    .local v0, "retval":Lorg/apache/poi/hssf/record/HideObjRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/HideObjRecord;->setHideObj(S)V

    .line 1260
    return-object v0
.end method

.method private static createMMS()Lorg/apache/poi/hssf/record/MMSRecord;
    .locals 2

    .line 1122
    new-instance v0, Lorg/apache/poi/hssf/record/MMSRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/MMSRecord;-><init>()V

    .line 1124
    .local v0, "retval":Lorg/apache/poi/hssf/record/MMSRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/MMSRecord;->setAddMenuCount(B)V

    .line 1125
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/MMSRecord;->setDelMenuCount(B)V

    .line 1126
    return-object v0
.end method

.method private static createPalette()Lorg/apache/poi/hssf/record/PaletteRecord;
    .locals 1

    .line 1745
    new-instance v0, Lorg/apache/poi/hssf/record/PaletteRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PaletteRecord;-><init>()V

    return-object v0
.end method

.method private static createPassword()Lorg/apache/poi/hssf/record/PasswordRecord;
    .locals 2

    .line 1200
    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/PasswordRecord;-><init>(I)V

    return-object v0
.end method

.method private static createPasswordRev4()Lorg/apache/poi/hssf/record/PasswordRev4Record;
    .locals 2

    .line 1214
    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRev4Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/PasswordRev4Record;-><init>(I)V

    return-object v0
.end method

.method private static createPrecision()Lorg/apache/poi/hssf/record/PrecisionRecord;
    .locals 2

    .line 1277
    new-instance v0, Lorg/apache/poi/hssf/record/PrecisionRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PrecisionRecord;-><init>()V

    .line 1278
    .local v0, "retval":Lorg/apache/poi/hssf/record/PrecisionRecord;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrecisionRecord;->setFullPrecision(Z)V

    .line 1279
    return-object v0
.end method

.method private static createProtect()Lorg/apache/poi/hssf/record/ProtectRecord;
    .locals 2

    .line 1193
    new-instance v0, Lorg/apache/poi/hssf/record/ProtectRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/ProtectRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createProtectionRev4()Lorg/apache/poi/hssf/record/ProtectionRev4Record;
    .locals 2

    .line 1207
    new-instance v0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;-><init>(Z)V

    return-object v0
.end method

.method private static createRefreshAll()Lorg/apache/poi/hssf/record/RefreshAllRecord;
    .locals 2

    .line 1286
    new-instance v0, Lorg/apache/poi/hssf/record/RefreshAllRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RefreshAllRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createStyle(I)Lorg/apache/poi/hssf/record/StyleRecord;
    .locals 5
    .param p0, "id"    # I

    .line 1698
    new-instance v0, Lorg/apache/poi/hssf/record/StyleRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/StyleRecord;-><init>()V

    .line 1700
    .local v0, "retval":Lorg/apache/poi/hssf/record/StyleRecord;
    const/4 v1, 0x3

    const/4 v2, -0x1

    if-eqz p0, :cond_5

    const/4 v3, 0x1

    if-eq p0, v3, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq p0, v3, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v4, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 1733
    :cond_0
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/StyleRecord;->setXFIndex(I)V

    .line 1734
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/StyleRecord;->setBuiltinStyle(I)V

    .line 1735
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/StyleRecord;->setOutlineStyleLevel(I)V

    goto :goto_0

    .line 1727
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/StyleRecord;->setXFIndex(I)V

    .line 1728
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/StyleRecord;->setBuiltinStyle(I)V

    .line 1729
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/StyleRecord;->setOutlineStyleLevel(I)V

    .line 1730
    goto :goto_0

    .line 1721
    :cond_2
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/StyleRecord;->setXFIndex(I)V

    .line 1722
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/StyleRecord;->setBuiltinStyle(I)V

    .line 1723
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/StyleRecord;->setOutlineStyleLevel(I)V

    .line 1724
    goto :goto_0

    .line 1715
    :cond_3
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/StyleRecord;->setXFIndex(I)V

    .line 1716
    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/record/StyleRecord;->setBuiltinStyle(I)V

    .line 1717
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/StyleRecord;->setOutlineStyleLevel(I)V

    .line 1718
    goto :goto_0

    .line 1709
    :cond_4
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/StyleRecord;->setXFIndex(I)V

    .line 1710
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/StyleRecord;->setBuiltinStyle(I)V

    .line 1711
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/StyleRecord;->setOutlineStyleLevel(I)V

    .line 1712
    goto :goto_0

    .line 1703
    :cond_5
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/StyleRecord;->setXFIndex(I)V

    .line 1704
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/StyleRecord;->setBuiltinStyle(I)V

    .line 1705
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/StyleRecord;->setOutlineStyleLevel(I)V

    .line 1706
    nop

    .line 1738
    :goto_0
    return-object v0
.end method

.method private static createTabId()Lorg/apache/poi/hssf/record/TabIdRecord;
    .locals 1

    .line 1165
    new-instance v0, Lorg/apache/poi/hssf/record/TabIdRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/TabIdRecord;-><init>()V

    return-object v0
.end method

.method private static createUseSelFS()Lorg/apache/poi/hssf/record/UseSelFSRecord;
    .locals 2

    .line 1752
    new-instance v0, Lorg/apache/poi/hssf/record/UseSelFSRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;
    .locals 2

    .line 1230
    new-instance v0, Lorg/apache/poi/hssf/record/WindowOneRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WindowOneRecord;-><init>()V

    .line 1232
    .local v0, "retval":Lorg/apache/poi/hssf/record/WindowOneRecord;
    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setHorizontalHold(S)V

    .line 1233
    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setVerticalHold(S)V

    .line 1234
    const/16 v1, 0x3a5c

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setWidth(S)V

    .line 1235
    const/16 v1, 0x23be

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setHeight(S)V

    .line 1236
    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setOptions(S)V

    .line 1237
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setActiveSheetIndex(I)V

    .line 1238
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setFirstVisibleTab(I)V

    .line 1239
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setNumSelectedTabs(S)V

    .line 1240
    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setTabWidthRatio(S)V

    .line 1241
    return-object v0
.end method

.method private static createWindowProtect()Lorg/apache/poi/hssf/record/WindowProtectRecord;
    .locals 2

    .line 1184
    new-instance v0, Lorg/apache/poi/hssf/record/WindowProtectRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/WindowProtectRecord;-><init>(Z)V

    return-object v0
.end method

.method public static createWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 9

    .line 354
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const-string v2, "creating new workbook from scratch"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 356
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;-><init>()V

    .line 357
    .local v0, "retval":Lorg/apache/poi/hssf/model/InternalWorkbook;
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    iget-object v3, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setRecords(Ljava/util/List;)V

    .line 359
    iget-object v3, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    .line 361
    .local v3, "formats":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/FormatRecord;>;"
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBOF()Lorg/apache/poi/hssf/record/BOFRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v4, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;

    const/16 v5, 0x4b0

    invoke-direct {v4, v5}, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createMMS()Lorg/apache/poi/hssf/record/MMSRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v4, Lorg/apache/poi/hssf/record/InterfaceEndRecord;->instance:Lorg/apache/poi/hssf/record/InterfaceEndRecord;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCodepage()Lorg/apache/poi/hssf/record/CodepageRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDSF()Lorg/apache/poi/hssf/record/DSFRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createTabId()Lorg/apache/poi/hssf/record/TabIdRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v4, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setTabpos(I)V

    .line 370
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFnGroupCount()Lorg/apache/poi/hssf/record/FnGroupCountRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWindowProtect()Lorg/apache/poi/hssf/record/WindowProtectRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createProtect()Lorg/apache/poi/hssf/record/ProtectRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v4, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setProtpos(I)V

    .line 374
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createPassword()Lorg/apache/poi/hssf/record/PasswordRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createProtectionRev4()Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createPasswordRev4()Lorg/apache/poi/hssf/record/PasswordRev4Record;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    .line 378
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBackup()Lorg/apache/poi/hssf/record/BackupRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v4, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBackuppos(I)V

    .line 381
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createHideObj()Lorg/apache/poi/hssf/record/HideObjRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDateWindow1904()Lorg/apache/poi/hssf/record/DateWindow1904Record;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createPrecision()Lorg/apache/poi/hssf/record/PrecisionRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createRefreshAll()Lorg/apache/poi/hssf/record/RefreshAllRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBookBool()Lorg/apache/poi/hssf/record/BookBoolRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v4, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    .line 391
    const/4 v4, 0x4

    iput v4, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 394
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x7

    if-gt v4, v5, :cond_2

    .line 395
    invoke-static {v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFormat(I)Lorg/apache/poi/hssf/record/FormatRecord;

    move-result-object v5

    .line 396
    .local v5, "rec":Lorg/apache/poi/hssf/record/FormatRecord;
    iget v6, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v7

    if-lt v6, v7, :cond_1

    iget v6, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v6

    :goto_1
    iput v6, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    .line 397
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v5    # "rec":Lorg/apache/poi/hssf/record/FormatRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 401
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    const/16 v5, 0x15

    if-ge v4, v5, :cond_3

    .line 402
    invoke-static {v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    iget v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/2addr v5, v1

    iput v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    .line 401
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 405
    .end local v4    # "k":I
    :cond_3
    iget-object v4, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    .line 406
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_3
    const/4 v5, 0x6

    if-ge v4, v5, :cond_4

    .line 407
    invoke-static {v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createStyle(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 409
    .end local v4    # "k":I
    :cond_4
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createUseSelFS()Lorg/apache/poi/hssf/record/UseSelFSRecord;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    const/4 v4, 0x1

    .line 412
    .local v4, "nBoundSheets":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_4
    if-ge v5, v4, :cond_5

    .line 413
    invoke-static {v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBoundSheet(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v6

    .line 415
    .local v6, "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    .line 412
    .end local v6    # "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 419
    .end local v5    # "k":I
    :cond_5
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCountry()Lorg/apache/poi/hssf/record/CountryRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    const/4 v5, 0x0

    .restart local v5    # "k":I
    :goto_5
    if-ge v5, v4, :cond_6

    .line 421
    invoke-direct {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(I)I

    .line 420
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 423
    .end local v5    # "k":I
    :cond_6
    new-instance v5, Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-direct {v5}, Lorg/apache/poi/hssf/record/SSTRecord;-><init>()V

    iput-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    .line 424
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedSST()Lorg/apache/poi/hssf/record/ExtSSTRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v5, Lorg/apache/poi/hssf/record/EOFRecord;->instance:Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 429
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const-string v6, "exit create new workbook from scratch"

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 430
    :cond_7
    return-object v0
.end method

.method public static createWorkbook(Ljava/util/List;)Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)",
            "Lorg/apache/poi/hssf/model/InternalWorkbook;"
        }
    .end annotation

    .line 204
    .local p0, "recs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Workbook (readfile) created with reclen="

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 207
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;-><init>()V

    .line 208
    .local v0, "retval":Lorg/apache/poi/hssf/model/InternalWorkbook;
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    iget-object v3, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setRecords(Ljava/util/List;)V

    .line 212
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    .line 213
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/Record;

    .line 215
    .local v4, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 216
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 218
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found workbook eof record at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 221
    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_3

    .line 315
    :sswitch_0
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/hssf/record/NameCommentRecord;

    .line 316
    .local v5, "ncr":Lorg/apache/poi/hssf/record/NameCommentRecord;
    sget-object v6, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v6, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 317
    sget-object v6, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found NameComment at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 318
    :cond_2
    iget-object v6, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getNameText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 278
    .end local v5    # "ncr":Lorg/apache/poi/hssf/record/NameCommentRecord;
    :sswitch_1
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found format record at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 280
    :cond_3
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    move-object v6, v4

    check-cast v6, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v6

    if-lt v5, v6, :cond_4

    iget v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    goto :goto_1

    :cond_4
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v5

    :goto_1
    iput v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    .line 282
    goto/16 :goto_3

    .line 251
    :sswitch_2
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 252
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found tabid record at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 253
    :cond_5
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v5, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setTabpos(I)V

    .line 254
    goto/16 :goto_3

    .line 231
    :sswitch_3
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 232
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found sst record at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 233
    :cond_6
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/hssf/record/SSTRecord;

    iput-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    .line 234
    goto/16 :goto_3

    .line 244
    :sswitch_4
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 245
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found XF record at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 246
    :cond_7
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v5, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    .line 247
    iget v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/2addr v5, v1

    iput v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    .line 248
    goto/16 :goto_3

    .line 289
    :sswitch_5
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 290
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found palette record at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 291
    :cond_8
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v5, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setPalettepos(I)V

    .line 292
    goto/16 :goto_3

    .line 304
    :sswitch_6
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 305
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found WriteProtect at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 306
    :cond_9
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    iput-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    .line 307
    goto/16 :goto_3

    .line 224
    :sswitch_7
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 225
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found boundsheet record at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 226
    :cond_a
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v5, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    .line 228
    goto/16 :goto_3

    .line 299
    :sswitch_8
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 300
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found WriteAccess at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 301
    :cond_b
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    iput-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    .line 302
    goto/16 :goto_3

    .line 309
    :sswitch_9
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 310
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found FileSharing at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 311
    :cond_c
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/hssf/record/FileSharingRecord;

    iput-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    .line 312
    goto/16 :goto_3

    .line 263
    :sswitch_a
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 264
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found backup record at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 265
    :cond_d
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v5, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBackuppos(I)V

    .line 266
    goto/16 :goto_3

    .line 294
    :sswitch_b
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 295
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found WindowOneRecord at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 296
    :cond_e
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/hssf/record/WindowOneRecord;

    iput-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    .line 297
    goto/16 :goto_3

    .line 237
    :sswitch_c
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 238
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found font record at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 239
    :cond_f
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v5, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    .line 240
    iget v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/2addr v5, v1

    iput v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 241
    goto/16 :goto_3

    .line 284
    :sswitch_d
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 285
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found datewindow1904 record at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 286
    :cond_10
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/hssf/record/DateWindow1904Record;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/DateWindow1904Record;->getWindowing()S

    move-result v5

    if-ne v5, v1, :cond_11

    const/4 v5, 0x1

    goto :goto_2

    :cond_11
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->uses1904datewindowing:Z

    .line 287
    goto :goto_3

    .line 272
    :sswitch_e
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 273
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found SupBook record at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 274
    :cond_12
    new-instance v5, Lorg/apache/poi/hssf/model/LinkTable;

    iget-object v6, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-direct {v5, p0, v3, v6, v7}, Lorg/apache/poi/hssf/model/LinkTable;-><init>(Ljava/util/List;ILorg/apache/poi/hssf/model/WorkbookRecordList;Ljava/util/Map;)V

    iput-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    .line 275
    invoke-virtual {v5}, Lorg/apache/poi/hssf/model/LinkTable;->getRecordCount()I

    move-result v5

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    .line 276
    goto :goto_4

    .line 268
    :sswitch_f
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v5, "Extern sheet is part of LinkTable"

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :sswitch_10
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 258
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found protect record at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 259
    :cond_13
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v5, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setProtpos(I)V

    .line 260
    nop

    .line 321
    :goto_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v4    # "rec":Lorg/apache/poi/hssf/record/Record;
    :goto_4
    add-int/2addr v3, v1

    goto/16 :goto_0

    .line 331
    :cond_14
    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_16

    .line 332
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/Record;

    .line 333
    .restart local v4    # "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v5

    const/16 v6, 0x1b8

    if-eq v5, v6, :cond_15

    goto :goto_6

    .line 335
    :cond_15
    iget-object v5, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->hyperlinks:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v4    # "rec":Lorg/apache/poi/hssf/record/Record;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 340
    :cond_16
    iget-object v4, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    if-nez v4, :cond_17

    .line 341
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    .line 343
    :cond_17
    sget-object v4, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v4, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 344
    sget-object v4, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const-string v5, "exit create workbook from existing file function"

    invoke-virtual {v4, v1, v5}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 345
    :cond_18
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_10
        0x17 -> :sswitch_f
        0x18 -> :sswitch_e
        0x22 -> :sswitch_d
        0x31 -> :sswitch_c
        0x3d -> :sswitch_b
        0x40 -> :sswitch_a
        0x5b -> :sswitch_9
        0x5c -> :sswitch_8
        0x85 -> :sswitch_7
        0x86 -> :sswitch_6
        0x92 -> :sswitch_5
        0xe0 -> :sswitch_4
        0xfc -> :sswitch_3
        0x13d -> :sswitch_2
        0x1ae -> :sswitch_e
        0x41e -> :sswitch_1
        0x894 -> :sswitch_0
    .end sparse-switch
.end method

.method private static createWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;
    .locals 3

    .line 1133
    new-instance v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;-><init>()V

    .line 1135
    .local v0, "retval":Lorg/apache/poi/hssf/record/WriteAccessRecord;
    const-string v1, "POI"

    .line 1137
    .local v1, "defaultUserName":Ljava/lang/String;
    :try_start_0
    const-string v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1139
    .local v2, "username":Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v2, v1

    .line 1141
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    .end local v2    # "username":Ljava/lang/String;
    goto :goto_0

    .line 1142
    :catch_0
    move-exception v2

    .line 1145
    .local v2, "e":Ljava/security/AccessControlException;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    .line 1147
    .end local v2    # "e":Ljava/security/AccessControlException;
    :goto_0
    return-object v0
.end method

.method private findSheetNameFromIndex(I)Ljava/lang/String;
    .locals 2
    .param p1, "internalSheetIndex"    # I

    .line 1827
    const-string v0, ""

    if-gez p1, :cond_0

    .line 1830
    return-object v0

    .line 1832
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1834
    return-object v0

    .line 1836
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fixTabIdRecord()I
    .locals 5

    .line 792
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/TabIdRecord;

    .line 793
    .local v0, "tir":Lorg/apache/poi/hssf/record/TabIdRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/TabIdRecord;->getRecordSize()I

    move-result v1

    .line 794
    .local v1, "sz":I
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [S

    .line 796
    .local v2, "tia":[S
    const/4 v3, 0x0

    .local v3, "k":S
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 797
    aput-short v3, v2, v3

    .line 796
    add-int/lit8 v4, v3, 0x1

    int-to-short v3, v4

    goto :goto_0

    .line 799
    .end local v3    # "k":S
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/TabIdRecord;->setTabIdArray([S)V

    .line 800
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/TabIdRecord;->getRecordSize()I

    move-result v3

    sub-int/2addr v3, v1

    return v3
.end method

.method private getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 558
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    return-object v0
.end method

.method private getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;
    .locals 3

    .line 1803
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    if-nez v0, :cond_0

    .line 1804
    new-instance v0, Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumSheets()I

    move-result v1

    int-to-short v1, v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/model/LinkTable;-><init>(ILorg/apache/poi/hssf/model/WorkbookRecordList;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    .line 1806
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    return-object v0
.end method


# virtual methods
.method public addBSERecord(Lorg/apache/poi/ddf/EscherBSERecord;)I
    .locals 6
    .param p1, "e"    # Lorg/apache/poi/ddf/EscherBSERecord;

    .line 2284
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDrawingGroup()V

    .line 2287
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2289
    const/16 v0, 0xeb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 2290
    .local v0, "dgLoc":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 2292
    .local v1, "drawingGroup":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherRecord(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 2294
    .local v2, "dggContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v4

    const/16 v5, -0xfff

    if-ne v4, v5, :cond_0

    .line 2296
    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    .local v3, "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    goto :goto_0

    .line 2300
    .end local v3    # "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    :cond_0
    new-instance v4, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 2301
    .local v4, "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 2302
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v5

    .line 2303
    .local v5, "childRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-interface {v5, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2304
    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->setChildRecords(Ljava/util/List;)V

    move-object v3, v4

    .line 2306
    .end local v4    # "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v5    # "childRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    .restart local v3    # "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    :goto_0
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    or-int/lit8 v4, v4, 0xf

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 2308
    invoke-virtual {v3, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 2310
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    return v4
.end method

.method public addName(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1
    .param p1, "name"    # Lorg/apache/poi/hssf/record/NameRecord;

    .line 1948
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    .line 1949
    .local v0, "linkTable":Lorg/apache/poi/hssf/model/LinkTable;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->addName(Lorg/apache/poi/hssf/record/NameRecord;)V

    .line 1951
    return-object p1
.end method

.method public addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I
    .locals 3
    .param p1, "string"    # Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 951
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const-string v2, "insert to sst string=\'"

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 953
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    if-nez v0, :cond_1

    .line 954
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->insertSST()V

    .line 956
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SSTRecord;->addString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v0

    return v0
.end method

.method public changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "oldUrl"    # Ljava/lang/String;
    .param p2, "newUrl"    # Ljava/lang/String;

    .line 2558
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkExternSheet(I)S
    .locals 1
    .param p1, "sheetNumber"    # I

    .line 1887
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public checkExternSheet(II)S
    .locals 1
    .param p1, "firstSheetNumber"    # I
    .param p2, "lastSheetNumber"    # I

    .line 1897
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(II)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public cloneDrawings(Lorg/apache/poi/hssf/model/InternalSheet;)V
    .locals 20
    .param p1, "sheet"    # Lorg/apache/poi/hssf/model/InternalSheet;

    .line 2432
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    .line 2434
    iget-object v2, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    if-nez v2, :cond_0

    .line 2436
    return-void

    .line 2440
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v2

    .line 2441
    .local v2, "aggLoc":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    .line 2442
    const/16 v4, 0x2694

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/EscherAggregate;

    .line 2443
    .local v4, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/EscherAggregate;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v5

    .line 2444
    .local v5, "escherContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    if-nez v5, :cond_1

    .line 2445
    return-void

    .line 2448
    :cond_1
    iget-object v6, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/DrawingManager2;->getDgg()Lorg/apache/poi/ddf/EscherDggRecord;

    move-result-object v6

    .line 2451
    .local v6, "dgg":Lorg/apache/poi/ddf/EscherDggRecord;
    iget-object v7, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/model/DrawingManager2;->findNewDrawingGroupId()S

    move-result v7

    .line 2452
    .local v7, "dgId":I
    invoke-virtual {v6, v7, v3}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(II)V

    .line 2453
    invoke-virtual {v6}, Lorg/apache/poi/ddf/EscherDggRecord;->getDrawingsSaved()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    .line 2455
    const/4 v3, 0x0

    .line 2456
    .local v3, "dg":Lorg/apache/poi/ddf/EscherDgRecord;
    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildIterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2457
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/ddf/EscherRecord;

    .line 2458
    .local v9, "er":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v10, v9, Lorg/apache/poi/ddf/EscherDgRecord;

    if-eqz v10, :cond_2

    .line 2459
    move-object v3, v9

    check-cast v3, Lorg/apache/poi/ddf/EscherDgRecord;

    .line 2461
    shl-int/lit8 v10, v7, 0x4

    int-to-short v10, v10

    invoke-virtual {v3, v10}, Lorg/apache/poi/ddf/EscherDgRecord;->setOptions(S)V

    move/from16 v16, v2

    move-object/from16 v17, v4

    goto/16 :goto_5

    .line 2462
    :cond_2
    instance-of v10, v9, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v10, :cond_8

    .line 2464
    move-object v10, v9

    check-cast v10, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 2465
    .local v10, "cp":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v10}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "spIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2466
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 2467
    .local v12, "shapeContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v12}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/poi/ddf/EscherRecord;

    .line 2468
    .local v14, "shapeChildRecord":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v14}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v15

    .line 2469
    .local v15, "recordId":I
    const/16 v1, -0xff6

    if-ne v15, v1, :cond_3

    .line 2470
    move-object v1, v14

    check-cast v1, Lorg/apache/poi/ddf/EscherSpRecord;

    .line 2471
    .local v1, "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    move/from16 v16, v2

    .end local v2    # "aggLoc":I
    .local v16, "aggLoc":I
    iget-object v2, v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    move-object/from16 v17, v4

    .end local v4    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    .local v17, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    int-to-short v4, v7

    invoke-virtual {v2, v4, v3}, Lorg/apache/poi/hssf/model/DrawingManager2;->allocateShapeId(SLorg/apache/poi/ddf/EscherDgRecord;)I

    move-result v2

    .line 2473
    .local v2, "shapeId":I
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherDgRecord;->getNumShapes()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    .line 2474
    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    .end local v1    # "sp":Lorg/apache/poi/ddf/EscherSpRecord;
    .end local v2    # "shapeId":I
    goto :goto_3

    .line 2475
    .end local v16    # "aggLoc":I
    .end local v17    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    .local v2, "aggLoc":I
    .restart local v4    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    :cond_3
    move/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "aggLoc":I
    .end local v4    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    .restart local v16    # "aggLoc":I
    .restart local v17    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    const/16 v1, -0xff5

    if-ne v15, v1, :cond_5

    .line 2476
    move-object v1, v14

    check-cast v1, Lorg/apache/poi/ddf/EscherOptRecord;

    .line 2477
    .local v1, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    const/16 v2, 0x104

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    .line 2479
    .local v2, "prop":Lorg/apache/poi/ddf/EscherSimpleProperty;
    if-eqz v2, :cond_4

    .line 2480
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v4

    .line 2482
    .local v4, "pictureIndex":I
    move-object/from16 v18, v1

    .end local v1    # "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    .local v18, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v1

    .line 2483
    .local v1, "bse":Lorg/apache/poi/ddf/EscherBSERecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v19

    add-int/lit8 v0, v19, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    goto :goto_4

    .line 2479
    .end local v4    # "pictureIndex":I
    .end local v18    # "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    .local v1, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    :cond_4
    move-object/from16 v18, v1

    .end local v1    # "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    .restart local v18    # "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    goto :goto_4

    .line 2475
    .end local v2    # "prop":Lorg/apache/poi/ddf/EscherSimpleProperty;
    .end local v18    # "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    :cond_5
    :goto_3
    nop

    .line 2487
    .end local v14    # "shapeChildRecord":Lorg/apache/poi/ddf/EscherRecord;
    .end local v15    # "recordId":I
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_2

    .line 2467
    .end local v16    # "aggLoc":I
    .end local v17    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    .local v2, "aggLoc":I
    .local v4, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    :cond_6
    move/from16 v16, v2

    move-object/from16 v17, v4

    .line 2488
    .end local v2    # "aggLoc":I
    .end local v4    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    .end local v12    # "shapeContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "aggLoc":I
    .restart local v17    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    .line 2465
    .end local v16    # "aggLoc":I
    .end local v17    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    .restart local v2    # "aggLoc":I
    .restart local v4    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    :cond_7
    move/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "aggLoc":I
    .end local v4    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    .restart local v16    # "aggLoc":I
    .restart local v17    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    goto :goto_5

    .line 2462
    .end local v10    # "cp":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v11    # "spIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    .end local v16    # "aggLoc":I
    .end local v17    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    .restart local v2    # "aggLoc":I
    .restart local v4    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    :cond_8
    move/from16 v16, v2

    move-object/from16 v17, v4

    .line 2490
    .end local v2    # "aggLoc":I
    .end local v4    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    .end local v9    # "er":Lorg/apache/poi/ddf/EscherRecord;
    .restart local v16    # "aggLoc":I
    .restart local v17    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    .line 2456
    .end local v16    # "aggLoc":I
    .end local v17    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    .restart local v2    # "aggLoc":I
    .restart local v4    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    :cond_9
    move/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "aggLoc":I
    .end local v4    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    .restart local v16    # "aggLoc":I
    .restart local v17    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    goto :goto_6

    .line 2441
    .end local v3    # "dg":Lorg/apache/poi/ddf/EscherDgRecord;
    .end local v5    # "escherContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v6    # "dgg":Lorg/apache/poi/ddf/EscherDggRecord;
    .end local v7    # "dgId":I
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    .end local v16    # "aggLoc":I
    .end local v17    # "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    .restart local v2    # "aggLoc":I
    :cond_a
    move/from16 v16, v2

    .line 2492
    .end local v2    # "aggLoc":I
    .restart local v16    # "aggLoc":I
    :goto_6
    return-void
.end method

.method public cloneFilter(II)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 6
    .param p1, "filterDbNameIndex"    # I
    .param p2, "newSheetIndex"    # I

    .line 2495
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 2497
    .local v0, "origNameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v1

    .line 2498
    .local v1, "newExtSheetIx":I
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 2499
    .local v2, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 2500
    aget-object v4, v2, v3

    .line 2502
    .local v4, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v5, :cond_0

    .line 2503
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 2504
    .local v5, "a3p":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    invoke-virtual {v5, v1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->setExternSheetIndex(I)V

    .line 2505
    aput-object v5, v2, v3

    .end local v5    # "a3p":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    goto :goto_1

    .line 2506
    :cond_0
    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v5, :cond_1

    .line 2507
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 2508
    .local v5, "r3p":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    invoke-virtual {v5, v1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    .line 2509
    aput-object v5, v2, v3

    goto :goto_2

    .line 2506
    .end local v5    # "r3p":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_1
    :goto_1
    nop

    .line 2499
    .end local v4    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2512
    .end local v3    # "i":I
    :cond_2
    const/16 v3, 0xd

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v3

    .line 2513
    .local v3, "newNameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2514
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/NameRecord;->setHidden(Z)V

    .line 2515
    return-object v3
.end method

.method public createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 4
    .param p1, "builtInName"    # B
    .param p2, "sheetNumber"    # I

    .line 1959
    if-ltz p2, :cond_1

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1

    .line 1963
    new-instance v0, Lorg/apache/poi/hssf/record/NameRecord;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hssf/record/NameRecord;-><init>(BI)V

    .line 1965
    .local v0, "name":Lorg/apache/poi/hssf/record/NameRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/LinkTable;->nameAlreadyExists(Lorg/apache/poi/hssf/record/NameRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1969
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addName(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameRecord;

    .line 1970
    return-object v0

    .line 1966
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Builtin ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") already exists for sheet ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1960
    .end local v0    # "name":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sheet number ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]is not valid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCellXF()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 3

    .line 878
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedFormat()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    .line 880
    .local v0, "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 881
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    .line 882
    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    .line 883
    return-object v0
.end method

.method public createDrawingGroup()V
    .locals 10

    .line 2216
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    if-nez v0, :cond_3

    .line 2217
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 2218
    .local v0, "dggContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    new-instance v1, Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherDggRecord;-><init>()V

    .line 2219
    .local v1, "dgg":Lorg/apache/poi/ddf/EscherDggRecord;
    new-instance v2, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    .line 2220
    .local v2, "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    new-instance v3, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;-><init>()V

    .line 2222
    .local v3, "splitMenuColors":Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;
    const/16 v4, -0x1000

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 2223
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 2224
    const/16 v5, -0xffa

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setRecordId(S)V

    .line 2225
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setOptions(S)V

    .line 2226
    const/16 v6, 0x400

    invoke-virtual {v1, v6}, Lorg/apache/poi/ddf/EscherDggRecord;->setShapeIdMax(I)V

    .line 2227
    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setNumShapesSaved(I)V

    .line 2228
    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    .line 2229
    new-array v5, v5, [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherDggRecord;->setFileIdClusters([Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V

    .line 2230
    new-instance v5, Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-direct {v5, v1}, Lorg/apache/poi/hssf/model/DrawingManager2;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;)V

    iput-object v5, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    .line 2231
    const/4 v5, 0x0

    .line 2232
    .local v5, "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    iget-object v6, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 2234
    new-instance v6, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v6}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    move-object v5, v6

    .line 2235
    const/16 v6, -0xfff

    invoke-virtual {v5, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 2236
    iget-object v6, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v4, v6

    int-to-short v4, v4

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 2237
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ddf/EscherRecord;

    .line 2238
    .local v6, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v5, v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 2239
    .end local v6    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 2241
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    const/16 v4, -0xff5

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setRecordId(S)V

    .line 2242
    const/16 v4, 0x33

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->setOptions(S)V

    .line 2243
    new-instance v4, Lorg/apache/poi/ddf/EscherBoolProperty;

    const/16 v6, 0xbf

    const v7, 0x80008

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 2244
    new-instance v4, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v6, 0x181

    const v7, 0x8000041

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 2245
    new-instance v4, Lorg/apache/poi/ddf/EscherRGBProperty;

    const/16 v6, 0x1c0

    const v7, 0x8000040

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/ddf/EscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 2246
    const/16 v4, -0xee2

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setRecordId(S)V

    .line 2247
    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setOptions(S)V

    .line 2248
    const v4, 0x800000d

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setColor1(I)V

    .line 2249
    const v4, 0x800000c

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setColor2(I)V

    .line 2250
    const v4, 0x8000017

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setColor3(I)V

    .line 2251
    const v4, 0x100000f7

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->setColor4(I)V

    .line 2253
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 2254
    if-eqz v5, :cond_1

    .line 2255
    invoke-virtual {v0, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 2256
    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 2257
    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 2259
    const/16 v4, 0xeb

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v4

    .line 2260
    .local v4, "dgLoc":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 2261
    new-instance v6, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-direct {v6}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;-><init>()V

    .line 2262
    .local v6, "drawingGroup":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    invoke-virtual {v6, v0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->addEscherRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    .line 2263
    const/16 v7, 0x8c

    invoke-virtual {p0, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v7

    .line 2265
    .local v7, "loc":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v8, v9, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2266
    .end local v6    # "drawingGroup":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    .end local v7    # "loc":I
    goto :goto_1

    .line 2267
    :cond_2
    new-instance v6, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-direct {v6}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;-><init>()V

    .line 2268
    .restart local v6    # "drawingGroup":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    invoke-virtual {v6, v0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->addEscherRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    .line 2269
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2273
    .end local v0    # "dggContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v1    # "dgg":Lorg/apache/poi/ddf/EscherDggRecord;
    .end local v2    # "opt":Lorg/apache/poi/ddf/EscherOptRecord;
    .end local v3    # "splitMenuColors":Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;
    .end local v4    # "dgLoc":I
    .end local v5    # "bstoreContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v6    # "drawingGroup":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    :cond_3
    :goto_1
    return-void
.end method

.method public createFormat(Ljava/lang/String;)I
    .locals 4
    .param p1, "formatString"    # Ljava/lang/String;

    .line 2039
    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    const/16 v1, 0xa4

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :cond_0
    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    .line 2040
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(ILjava/lang/String;)V

    .line 2042
    .local v0, "rec":Lorg/apache/poi/hssf/record/FormatRecord;
    const/4 v1, 0x0

    .line 2043
    .local v1, "pos":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    const/16 v3, 0x41e

    if-eq v2, v3, :cond_1

    .line 2044
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2045
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 2046
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2047
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 2048
    iget v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->maxformatid:I

    return v2
.end method

.method public createName()Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1

    .line 1938
    new-instance v0, Lorg/apache/poi/hssf/record/NameRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NameRecord;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addName(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    return-object v0
.end method

.method public createNewFont()Lorg/apache/poi/hssf/record/FontRecord;
    .locals 3

    .line 512
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFont()Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v0

    .line 514
    .local v0, "rec":Lorg/apache/poi/hssf/record/FontRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 515
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    .line 516
    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 517
    return-object v0
.end method

.method public createStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;
    .locals 5
    .param p1, "xfIndex"    # I

    .line 917
    new-instance v0, Lorg/apache/poi/hssf/record/StyleRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/StyleRecord;-><init>()V

    .line 918
    .local v0, "newSR":Lorg/apache/poi/hssf/record/StyleRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/StyleRecord;->setXFIndex(I)V

    .line 921
    const/4 v1, -0x1

    .line 922
    .local v1, "addAt":I
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v2

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2

    if-ne v1, v4, :cond_2

    .line 924
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    .line 925
    .local v3, "r":Lorg/apache/poi/hssf/record/Record;
    instance-of v4, v3, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/apache/poi/hssf/record/StyleRecord;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 929
    :cond_0
    move v1, v2

    .line 923
    .end local v3    # "r":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 932
    .end local v2    # "i":I
    :cond_2
    if-eq v1, v4, :cond_3

    .line 935
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 937
    return-object v0

    .line 933
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No XF Records found!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public doesContainsSheetName(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "excludeSheetIdx"    # I

    .line 597
    move-object v0, p1

    .line 598
    .local v0, "aName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-le v1, v3, :cond_0

    .line 599
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 602
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v4

    .line 603
    .local v4, "boundSheetRecord":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    if-ne p2, v1, :cond_1

    .line 604
    goto :goto_1

    .line 606
    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v5

    .line 607
    .local v5, "bName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_2

    .line 608
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 610
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 611
    const/4 v2, 0x1

    return v2

    .line 601
    .end local v4    # "boundSheetRecord":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .end local v5    # "bName":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    .end local v1    # "i":I
    :cond_4
    return v2
.end method

.method public findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;
    .locals 10

    .line 2142
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    if-eqz v0, :cond_0

    .line 2144
    return-object v0

    .line 2149
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, -0xfff

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    .line 2150
    .local v1, "r":Lorg/apache/poi/hssf/record/Record;
    instance-of v3, v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    if-eqz v3, :cond_7

    .line 2151
    move-object v3, v1

    check-cast v3, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 2152
    .local v3, "dg":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->processChildRecords()V

    .line 2154
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v4

    .line 2156
    .local v4, "cr":Lorg/apache/poi/ddf/EscherContainerRecord;
    if-nez v4, :cond_1

    .line 2157
    goto :goto_0

    .line 2160
    :cond_1
    const/4 v5, 0x0

    .line 2161
    .local v5, "dgg":Lorg/apache/poi/ddf/EscherDggRecord;
    const/4 v6, 0x0

    .line 2162
    .local v6, "bStore":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildIterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2163
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ddf/EscherRecord;

    .line 2164
    .local v8, "er":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v9, v8, Lorg/apache/poi/ddf/EscherDggRecord;

    if-eqz v9, :cond_2

    .line 2165
    move-object v5, v8

    check-cast v5, Lorg/apache/poi/ddf/EscherDggRecord;

    goto :goto_2

    .line 2166
    :cond_2
    invoke-virtual {v8}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v9

    if-ne v9, v2, :cond_3

    .line 2167
    move-object v6, v8

    check-cast v6, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 2169
    .end local v8    # "er":Lorg/apache/poi/ddf/EscherRecord;
    :cond_3
    :goto_2
    goto :goto_1

    .line 2171
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_4
    if-eqz v5, :cond_7

    .line 2172
    new-instance v2, Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-direct {v2, v5}, Lorg/apache/poi/hssf/model/DrawingManager2;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;)V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    .line 2173
    if-eqz v6, :cond_6

    .line 2174
    invoke-virtual {v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ddf/EscherRecord;

    .line 2175
    .local v7, "bs":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v8, v7, Lorg/apache/poi/ddf/EscherBSERecord;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    move-object v9, v7

    check-cast v9, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2176
    .end local v7    # "bs":Lorg/apache/poi/ddf/EscherRecord;
    :cond_5
    goto :goto_3

    .line 2178
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    return-object v2

    .line 2181
    .end local v1    # "r":Lorg/apache/poi/hssf/record/Record;
    .end local v3    # "dg":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    .end local v4    # "cr":Lorg/apache/poi/ddf/EscherContainerRecord;
    .end local v5    # "dgg":Lorg/apache/poi/ddf/EscherDggRecord;
    .end local v6    # "bStore":Lorg/apache/poi/ddf/EscherContainerRecord;
    :cond_7
    goto :goto_0

    .line 2184
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_8
    const/16 v0, 0xeb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 2187
    .local v0, "dgLoc":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 2188
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 2189
    .local v1, "dg":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    const/4 v3, 0x0

    .line 2190
    .local v3, "dgg":Lorg/apache/poi/ddf/EscherDggRecord;
    const/4 v4, 0x0

    .line 2191
    .local v4, "bStore":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ddf/EscherRecord;

    .line 2192
    .local v6, "er":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v7, v6, Lorg/apache/poi/ddf/EscherDggRecord;

    if-eqz v7, :cond_9

    .line 2193
    move-object v3, v6

    check-cast v3, Lorg/apache/poi/ddf/EscherDggRecord;

    goto :goto_5

    .line 2194
    :cond_9
    invoke-virtual {v6}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v7

    if-ne v7, v2, :cond_a

    .line 2195
    move-object v4, v6

    check-cast v4, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 2197
    .end local v6    # "er":Lorg/apache/poi/ddf/EscherRecord;
    :cond_a
    :goto_5
    goto :goto_4

    .line 2199
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_b
    if-eqz v3, :cond_d

    .line 2200
    new-instance v2, Lorg/apache/poi/hssf/model/DrawingManager2;

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/model/DrawingManager2;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;)V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    .line 2201
    if-eqz v4, :cond_d

    .line 2202
    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ddf/EscherRecord;

    .line 2203
    .local v5, "bs":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v6, v5, Lorg/apache/poi/ddf/EscherBSERecord;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    move-object v7, v5

    check-cast v7, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2204
    .end local v5    # "bs":Lorg/apache/poi/ddf/EscherRecord;
    :cond_c
    goto :goto_6

    .line 2208
    .end local v1    # "dg":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "dgg":Lorg/apache/poi/ddf/EscherDggRecord;
    .end local v4    # "bStore":Lorg/apache/poi/ddf/EscherContainerRecord;
    :cond_d
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    return-object v1
.end method

.method public findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;
    .locals 3
    .param p1, "sid"    # S

    .line 2057
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    .line 2058
    .local v1, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2059
    return-object v1

    .line 2061
    .end local v1    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    goto :goto_0

    .line 2062
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFirstRecordLocBySid(S)I
    .locals 4
    .param p1, "sid"    # S

    .line 2071
    const/4 v0, 0x0

    .line 2072
    .local v0, "index":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 2073
    .local v2, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2074
    return v0

    .line 2076
    :cond_0
    nop

    .end local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    add-int/lit8 v0, v0, 0x1

    .line 2077
    goto :goto_0

    .line 2078
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public findNextRecordBySid(SI)Lorg/apache/poi/hssf/record/Record;
    .locals 4
    .param p1, "sid"    # S
    .param p2, "pos"    # I

    .line 2085
    const/4 v0, 0x0

    .line 2086
    .local v0, "matches":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 2087
    .local v2, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2088
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "matches":I
    .local v3, "matches":I
    if-ne v0, p2, :cond_0

    .line 2089
    return-object v2

    .line 2088
    :cond_0
    move v0, v3

    .line 2091
    .end local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    .end local v3    # "matches":I
    .restart local v0    # "matches":I
    :cond_1
    goto :goto_0

    .line 2092
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public findSheetFirstNameFromExternSheet(I)Ljava/lang/String;
    .locals 2
    .param p1, "externSheetIndex"    # I

    .line 1819
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getFirstInternalSheetIndexForExtIndex(I)I

    move-result v0

    .line 1820
    .local v0, "indexToSheet":I
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetNameFromIndex(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public findSheetLastNameFromExternSheet(I)Ljava/lang/String;
    .locals 2
    .param p1, "externSheetIndex"    # I

    .line 1823
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getLastInternalSheetIndexForExtIndex(I)I

    move-result v0

    .line 1824
    .local v0, "indexToSheet":I
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetNameFromIndex(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;
    .locals 2
    .param p1, "pictureIndex"    # I

    .line 2280
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->escherBSERecords:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherBSERecord;

    return-object v0
.end method

.method public getBackupRecord()Lorg/apache/poi/hssf/record/BackupRecord;
    .locals 2

    .line 566
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBackuppos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/BackupRecord;

    return-object v0
.end method

.method public getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;
    .locals 5

    .line 2121
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getPalettepos()I

    move-result v0

    .line 2122
    .local v0, "palettePos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2123
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    .line 2124
    .local v1, "rec":Lorg/apache/poi/hssf/record/Record;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/PaletteRecord;

    if-eqz v2, :cond_0

    .line 2125
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/PaletteRecord;

    .line 2127
    .end local v1    # "rec":Lorg/apache/poi/hssf/record/Record;
    .local v2, "palette":Lorg/apache/poi/hssf/record/PaletteRecord;
    goto :goto_0

    .line 2126
    .end local v2    # "palette":Lorg/apache/poi/hssf/record/PaletteRecord;
    .restart local v1    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InternalError: Expected PaletteRecord but got a \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2130
    .end local v1    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object v2

    .line 2132
    .restart local v2    # "palette":Lorg/apache/poi/hssf/record/PaletteRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 2133
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setPalettepos(I)V

    .line 2135
    :goto_0
    return-object v2
.end method

.method public getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;
    .locals 1

    .line 2315
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->drawingManager:Lorg/apache/poi/hssf/model/DrawingManager2;

    return-object v0
.end method

.method public getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 2
    .param p1, "index"    # I

    .line 836
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    .line 838
    .local v0, "xfptr":I
    add-int/2addr v0, p1

    .line 839
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 842
    .local v1, "retval":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    return-object v1
.end method

.method public getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 3
    .param p1, "externSheetIndex"    # I
    .param p2, "externNameIndex"    # I

    .line 1851
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/poi/hssf/model/LinkTable;->resolveNameXText(IILorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;

    move-result-object v0

    .line 1852
    .local v0, "nameName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1853
    const/4 v1, 0x0

    return-object v1

    .line 1855
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->resolveNameXIx(II)I

    move-result v1

    .line 1856
    .local v1, "ix":I
    new-instance v2, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    invoke-direct {v2, v0, p2, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method

.method public getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 5
    .param p1, "externSheetIndex"    # I

    .line 1840
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalBookAndSheetName(I)[Ljava/lang/String;

    move-result-object v0

    .line 1841
    .local v0, "extNames":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1842
    const/4 v1, 0x0

    return-object v1

    .line 1844
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1845
    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    aget-object v3, v0, v3

    aget-object v2, v0, v2

    invoke-direct {v1, v3, v2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1847
    :cond_1
    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    aget-object v3, v0, v3

    aget-object v2, v0, v2

    aget-object v4, v0, v4

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "sheetName"    # Ljava/lang/String;

    .line 1901
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "firstSheetName"    # Ljava/lang/String;
    .param p3, "lastSheetName"    # Ljava/lang/String;

    .line 1904
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFileSharing()Lorg/apache/poi/hssf/record/FileSharingRecord;
    .locals 4

    .line 2345
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    if-nez v0, :cond_1

    .line 2346
    new-instance v0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FileSharingRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    .line 2347
    const/4 v0, 0x0

    .line 2348
    .local v0, "i":I
    const/4 v0, 0x0

    .line 2349
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    if-nez v1, :cond_0

    .line 2350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2352
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 2354
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    return-object v0
.end method

.method public getFirstSheetIndexFromExternSheetIndex(I)I
    .locals 1
    .param p1, "externSheetNumber"    # I

    .line 1866
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getFirstInternalSheetIndexForExtIndex(I)I

    move-result v0

    return v0
.end method

.method public getFontIndex(Lorg/apache/poi/hssf/record/FontRecord;)I
    .locals 4
    .param p1, "font"    # Lorg/apache/poi/hssf/record/FontRecord;

    .line 489
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    if-gt v0, v1, :cond_2

    .line 490
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/FontRecord;

    .line 492
    .local v1, "thisFont":Lorg/apache/poi/hssf/record/FontRecord;
    if-ne v1, p1, :cond_1

    .line 494
    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 495
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 497
    :cond_0
    return v0

    .line 489
    .end local v1    # "thisFont":Lorg/apache/poi/hssf/record/FontRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not find that font!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;
    .locals 4
    .param p1, "idx"    # I

    .line 469
    move v0, p1

    .line 471
    .local v0, "index":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 472
    add-int/lit8 v0, v0, -0x1

    .line 474
    :cond_0
    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .line 479
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/FontRecord;

    .line 482
    .local v1, "retval":Lorg/apache/poi/hssf/record/FontRecord;
    return-object v1

    .line 475
    .end local v1    # "retval":Lorg/apache/poi/hssf/record/FontRecord;
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There are only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " font records, you asked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFormat(Ljava/lang/String;Z)S
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "createIfNotFound"    # Z

    .line 2009
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/FormatRecord;

    .line 2010
    .local v1, "r":Lorg/apache/poi/hssf/record/FormatRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2011
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v2

    int-to-short v2, v2

    return v2

    .line 2013
    .end local v1    # "r":Lorg/apache/poi/hssf/record/FormatRecord;
    :cond_0
    goto :goto_0

    .line 2015
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz p2, :cond_2

    .line 2016
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createFormat(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    return v0

    .line 2019
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/FormatRecord;",
            ">;"
        }
    .end annotation

    .line 2027
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->formats:Ljava/util/List;

    return-object v0
.end method

.method public getHyperlinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/HyperlinkRecord;",
            ">;"
        }
    .end annotation

    .line 2097
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->hyperlinks:Ljava/util/List;

    return-object v0
.end method

.method public getLastSheetIndexFromExternSheetIndex(I)I
    .locals 1
    .param p1, "externSheetNumber"    # I

    .line 1877
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getLastInternalSheetIndexForExtIndex(I)I

    move-result v0

    return v0
.end method

.method public getNameCommentRecord(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameCommentRecord;
    .locals 2
    .param p1, "nameRecord"    # Lorg/apache/poi/hssf/record/NameRecord;

    .line 1931
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/NameCommentRecord;

    return-object v0
.end method

.method public getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1
    .param p1, "index"    # I

    .line 1923
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    return-object v0
.end method

.method public getNameXPtg(Ljava/lang/String;ILorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheetRefIndex"    # I
    .param p3, "udf"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 2410
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    .line 2411
    .local v0, "lnk":Lorg/apache/poi/hssf/model/LinkTable;
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getNameXPtg(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object v1

    .line 2413
    .local v1, "xptg":Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    if-nez v1, :cond_0

    invoke-interface {p3, p1}, Lorg/apache/poi/ss/formula/udf/UDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2416
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->addNameXPtg(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object v1

    .line 2418
    :cond_0
    return-object v1
.end method

.method public getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "udf"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 2421
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameXPtg(Ljava/lang/String;ILorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object v0

    return-object v0
.end method

.method public getNumExFormats()I
    .locals 4

    .line 823
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    iget v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "getXF="

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 825
    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    return v0
.end method

.method public getNumNames()I
    .locals 1

    .line 1912
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    if-nez v0, :cond_0

    .line 1913
    const/4 v0, 0x0

    return v0

    .line 1915
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/LinkTable;->getNumNames()I

    move-result v0

    return v0
.end method

.method public getNumRecords()I
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v0

    return v0
.end method

.method public getNumSheets()I
    .locals 4

    .line 811
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "getNumSheets="

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 813
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfFontRecords()I
    .locals 1

    .line 538
    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    return v0
.end method

.method public getRecalcId()Lorg/apache/poi/hssf/record/RecalcIdRecord;
    .locals 4

    .line 2537
    const/16 v0, 0x1c1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    .line 2538
    .local v0, "record":Lorg/apache/poi/hssf/record/RecalcIdRecord;
    if-nez v0, :cond_0

    .line 2539
    new-instance v1, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/RecalcIdRecord;-><init>()V

    move-object v0, v1

    .line 2541
    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 2542
    .local v1, "pos":I
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 2544
    .end local v1    # "pos":I
    :cond_0
    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    .line 2101
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 7
    .param p1, "str"    # I

    .line 965
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    if-nez v0, :cond_0

    .line 966
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->insertSST()V

    .line 968
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SSTRecord;->getString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    .line 970
    .local v0, "retval":Lorg/apache/poi/hssf/record/common/UnicodeString;
    sget-object v1, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 971
    sget-object v1, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v3, "Returning SST for index="

    const-string v5, " String= "

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 973
    :cond_1
    return-object v0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 714
    const/4 v0, -0x1

    .line 716
    .local v0, "retval":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 717
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, "sheet":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 720
    move v0, v1

    .line 721
    goto :goto_1

    .line 716
    .end local v2    # "sheet":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    .end local v1    # "k":I
    :cond_1
    :goto_1
    return v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 643
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 6

    .line 1090
    const/4 v0, 0x0

    .line 1092
    .local v0, "retval":I
    const/4 v1, 0x0

    .line 1093
    .local v1, "sst":Lorg/apache/poi/hssf/record/SSTRecord;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1095
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    .line 1096
    .local v3, "record":Lorg/apache/poi/hssf/record/Record;
    instance-of v4, v3, Lorg/apache/poi/hssf/record/SSTRecord;

    if-eqz v4, :cond_0

    .line 1097
    move-object v1, v3

    check-cast v1, Lorg/apache/poi/hssf/record/SSTRecord;

    .line 1099
    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_1

    if-eqz v1, :cond_1

    .line 1100
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SSTRecord;->calcExtSSTRecordSize()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 1102
    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->getRecordSize()I

    move-result v4

    add-int/2addr v0, v4

    .line 1093
    .end local v3    # "record":Lorg/apache/poi/hssf/record/Record;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1105
    .end local v2    # "k":I
    :cond_2
    return v0
.end method

.method public getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1
    .param p1, "name"    # B
    .param p2, "sheetNumber"    # I

    .line 442
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    return-object v0
.end method

.method public getStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;
    .locals 4
    .param p1, "xfIndex"    # I

    .line 894
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 895
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    .line 896
    .local v1, "r":Lorg/apache/poi/hssf/record/Record;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-eqz v2, :cond_0

    .line 897
    goto :goto_1

    .line 899
    :cond_0
    instance-of v2, v1, Lorg/apache/poi/hssf/record/StyleRecord;

    if-nez v2, :cond_1

    .line 900
    goto :goto_1

    .line 902
    :cond_1
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/StyleRecord;

    .line 903
    .local v2, "sr":Lorg/apache/poi/hssf/record/StyleRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/StyleRecord;->getXFIndex()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 904
    return-object v2

    .line 894
    .end local v1    # "r":Lorg/apache/poi/hssf/record/Record;
    .end local v2    # "sr":Lorg/apache/poi/hssf/record/StyleRecord;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 907
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;
    .locals 1

    .line 2276
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->windowOne:Lorg/apache/poi/hssf/record/WindowOneRecord;

    return-object v0
.end method

.method public getWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;
    .locals 4

    .line 2332
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    if-nez v0, :cond_1

    .line 2333
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    .line 2334
    const/4 v0, 0x0

    .line 2335
    .local v0, "i":I
    const/4 v0, 0x0

    .line 2336
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/hssf/record/InterfaceEndRecord;

    if-nez v1, :cond_0

    .line 2337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2339
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 2341
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeAccess:Lorg/apache/poi/hssf/record/WriteAccessRecord;

    return-object v0
.end method

.method public getWriteProtect()Lorg/apache/poi/hssf/record/WriteProtectRecord;
    .locals 4

    .line 2319
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    if-nez v0, :cond_1

    .line 2320
    new-instance v0, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WriteProtectRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    .line 2321
    const/4 v0, 0x0

    .line 2322
    .local v0, "i":I
    const/4 v0, 0x0

    .line 2323
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/hssf/record/BOFRecord;

    if-nez v1, :cond_0

    .line 2324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2326
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 2328
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    return-object v0
.end method

.method public insertSST()V
    .locals 3

    .line 984
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const-string v2, "creating new SST via insertSST!"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 986
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/SSTRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    .line 987
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createExtendedSST()Lorg/apache/poi/hssf/record/ExtSSTRecord;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 988
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->sst:Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 989
    return-void
.end method

.method public isSheetHidden(I)Z
    .locals 1
    .param p1, "sheetnum"    # I

    .line 656
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isSheetVeryHidden(I)Z
    .locals 1
    .param p1, "sheetnum"    # I

    .line 669
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isVeryHidden()Z

    move-result v0

    return v0
.end method

.method public isUsing1904DateWindowing()Z
    .locals 1

    .line 2111
    iget-boolean v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->uses1904datewindowing:Z

    return v0
.end method

.method public isWriteProtected()Z
    .locals 4

    .line 2361
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2362
    return v1

    .line 2364
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFileSharing()Lorg/apache/poi/hssf/record/FileSharingRecord;

    move-result-object v0

    .line 2365
    .local v0, "frec":Lorg/apache/poi/hssf/record/FileSharingRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getReadOnly()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "externalWorkbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 1810
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getOrCreateLinkTable()Lorg/apache/poi/hssf/model/LinkTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I

    move-result v0

    return v0
.end method

.method public preSerialize()V
    .locals 3

    .line 1080
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v0

    if-lez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/TabIdRecord;

    .line 1082
    .local v0, "tir":Lorg/apache/poi/hssf/record/TabIdRecord;
    iget-object v1, v0, Lorg/apache/poi/hssf/record/TabIdRecord;->_tabids:[S

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1083
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->fixTabIdRecord()I

    .line 1086
    .end local v0    # "tir":Lorg/apache/poi/hssf/record/TabIdRecord;
    :cond_0
    return-void
.end method

.method public removeBuiltinRecord(BI)V
    .locals 1
    .param p1, "name"    # B
    .param p2, "sheetIndex"    # I

    .line 451
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->removeBuiltinRecord(BI)V

    .line 453
    return-void
.end method

.method public removeExFormatRecord(I)V
    .locals 2
    .param p1, "index"    # I

    .line 864
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 865
    .local v0, "xfptr":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    .line 866
    iget v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    .line 867
    return-void
.end method

.method public removeExFormatRecord(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V
    .locals 1
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 852
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    .line 853
    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numxfs:I

    .line 854
    return-void
.end method

.method public removeFontRecord(Lorg/apache/poi/hssf/record/FontRecord;)V
    .locals 1
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/FontRecord;

    .line 527
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    .line 528
    iget v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->numfonts:I

    .line 529
    return-void
.end method

.method public removeName(I)V
    .locals 3
    .param p1, "nameIndex"    # I

    .line 1979
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/LinkTable;->getNumNames()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1980
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 1981
    .local v0, "idx":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int v2, v0, p1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    .line 1982
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/LinkTable;->removeName(I)V

    .line 1984
    .end local v0    # "idx":I
    :cond_0
    return-void
.end method

.method public removeSheet(I)V
    .locals 4
    .param p1, "sheetIndex"    # I

    .line 750
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 751
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    .line 752
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 753
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->fixTabIdRecord()I

    .line 763
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 764
    .local v0, "sheetNum1Based":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 765
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v2

    .line 767
    .local v2, "nr":Lorg/apache/poi/hssf/record/NameRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 769
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/NameRecord;->setSheetNumber(I)V

    goto :goto_1

    .line 770
    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 773
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/NameRecord;->setSheetNumber(I)V

    .line 764
    .end local v2    # "nr":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 777
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    if-eqz v1, :cond_4

    .line 780
    add-int/lit8 v1, p1, 0x1

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumSheets()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_4

    .line 781
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/LinkTable;->removeSheet(I)V

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 784
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public resolveNameXText(II)Ljava/lang/String;
    .locals 1
    .param p1, "refIndex"    # I
    .param p2, "definedNameIndex"    # I

    .line 2399
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkTable:Lorg/apache/poi/hssf/model/LinkTable;

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/poi/hssf/model/LinkTable;->resolveNameXText(IILorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialize(I[B)I
    .locals 11
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 1028
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const-string v2, "Serializing Workbook with offsets"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 1031
    :cond_0
    const/4 v0, 0x0

    .line 1033
    .local v0, "pos":I
    const/4 v2, 0x0

    .line 1034
    .local v2, "sst":Lorg/apache/poi/hssf/record/SSTRecord;
    const/4 v3, 0x0

    .line 1035
    .local v3, "sstPos":I
    const/4 v4, 0x0

    .line 1036
    .local v4, "wroteBoundSheets":Z
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    iget-object v6, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 1039
    iget-object v6, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v6, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v6

    .line 1040
    .local v6, "record":Lorg/apache/poi/hssf/record/Record;
    const/4 v7, 0x0

    .line 1041
    .local v7, "len":I
    instance-of v8, v6, Lorg/apache/poi/hssf/record/SSTRecord;

    if-eqz v8, :cond_1

    .line 1043
    move-object v2, v6

    check-cast v2, Lorg/apache/poi/hssf/record/SSTRecord;

    .line 1044
    move v3, v0

    .line 1046
    :cond_1
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v8

    const/16 v9, 0xff

    if-ne v8, v9, :cond_2

    if-eqz v2, :cond_2

    .line 1048
    add-int v8, v3, p1

    invoke-virtual {v2, v8}, Lorg/apache/poi/hssf/record/SSTRecord;->createExtSSTRecord(I)Lorg/apache/poi/hssf/record/ExtSSTRecord;

    move-result-object v6

    .line 1050
    :cond_2
    instance-of v8, v6, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    if-eqz v8, :cond_4

    .line 1051
    if-nez v4, :cond_5

    .line 1052
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v9, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1053
    invoke-direct {p0, v8}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v9

    add-int v10, v0, p1

    add-int/2addr v10, v7

    invoke-virtual {v9, v10, p2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->serialize(I[B)I

    move-result v9

    add-int/2addr v7, v9

    .line 1052
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1056
    .end local v8    # "i":I
    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    .line 1059
    :cond_4
    add-int v8, v0, p1

    invoke-virtual {v6, v8, p2}, Lorg/apache/poi/hssf/record/Record;->serialize(I[B)I

    move-result v7

    .line 1065
    :cond_5
    :goto_2
    add-int/2addr v0, v7

    .line 1036
    .end local v6    # "record":Lorg/apache/poi/hssf/record/Record;
    .end local v7    # "len":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1067
    .end local v5    # "k":I
    :cond_6
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v5, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1068
    sget-object v5, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const-string v6, "Exiting serialize workbook"

    invoke-virtual {v5, v1, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 1069
    :cond_7
    return v0
.end method

.method public setSheetBof(II)V
    .locals 7
    .param p1, "sheetIndex"    # I
    .param p2, "pos"    # I

    .line 549
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    sget-object v1, Lorg/apache/poi/hssf/model/InternalWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v3, "setting bof for sheetnum ="

    const-string v5, " at pos="

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 552
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkSheets(I)V

    .line 553
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setPositionOfBof(I)V

    .line 555
    return-void
.end method

.method public setSheetHidden(II)V
    .locals 6
    .param p1, "sheetnum"    # I
    .param p2, "hidden"    # I

    .line 692
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    .line 693
    .local v0, "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    const/4 v1, 0x0

    .line 694
    .local v1, "h":Z
    const/4 v2, 0x0

    .line 695
    .local v2, "vh":Z
    if-nez p2, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 697
    const/4 v1, 0x1

    goto :goto_0

    .line 698
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 699
    const/4 v2, 0x1

    .line 703
    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setHidden(Z)V

    .line 704
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setVeryHidden(Z)V

    .line 705
    return-void

    .line 701
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hidden flag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " given, must be 0, 1 or 2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setSheetHidden(IZ)V
    .locals 1
    .param p1, "sheetnum"    # I
    .param p2, "hidden"    # Z

    .line 679
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBoundSheetRec(I)Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setHidden(Z)V

    .line 680
    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 2
    .param p1, "sheetnum"    # I
    .param p2, "sheetname"    # Ljava/lang/String;

    .line 579
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkSheets(I)V

    .line 582
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 584
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .line 585
    .local v0, "sheet":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setSheetname(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 5
    .param p1, "sheetname"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 625
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 627
    .local v0, "sheetNumber":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 630
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->boundsheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    .line 631
    .local v1, "pos0":I
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->get(I)Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    .line 632
    .local v2, "removed":Lorg/apache/poi/hssf/record/Record;
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int v4, v1, v0

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    .line 633
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int v4, v1, p2

    invoke-virtual {v3, v4, v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 634
    return-void
.end method

.method public unwriteProtectWorkbook()V
    .locals 2

    .line 2387
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    .line 2388
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->records:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(Ljava/lang/Object;)V

    .line 2389
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->fileShare:Lorg/apache/poi/hssf/record/FileSharingRecord;

    .line 2390
    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtect:Lorg/apache/poi/hssf/record/WriteProtectRecord;

    .line 2391
    return-void
.end method

.method public updateNameCommentRecordCache(Lorg/apache/poi/hssf/record/NameCommentRecord;)V
    .locals 4
    .param p1, "commentRecord"    # Lorg/apache/poi/hssf/record/NameCommentRecord;

    .line 1991
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1992
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1993
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/hssf/record/NameCommentRecord;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1994
    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    goto :goto_1

    .line 1997
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/hssf/record/NameCommentRecord;>;"
    :cond_0
    goto :goto_0

    .line 1999
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalWorkbook;->commentRecords:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    return-void
.end method

.method public updateNamesAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 4
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;

    .line 2522
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2523
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v1

    .line 2524
    .local v1, "nr":Lorg/apache/poi/hssf/record/NameRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 2525
    .local v2, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2526
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 2522
    .end local v1    # "nr":Lorg/apache/poi/hssf/record/NameRecord;
    .end local v2    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2529
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public writeProtectWorkbook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;

    .line 2374
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFileSharing()Lorg/apache/poi/hssf/record/FileSharingRecord;

    move-result-object v0

    .line 2375
    .local v0, "frec":Lorg/apache/poi/hssf/record/FileSharingRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWriteAccess()Lorg/apache/poi/hssf/record/WriteAccessRecord;

    move-result-object v1

    .line 2376
    .local v1, "waccess":Lorg/apache/poi/hssf/record/WriteAccessRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWriteProtect()Lorg/apache/poi/hssf/record/WriteProtectRecord;

    .line 2377
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setReadOnly(S)V

    .line 2378
    invoke-static {p1}, Lorg/apache/poi/hssf/record/FileSharingRecord;->hashPassword(Ljava/lang/String;)S

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setPassword(S)V

    .line 2379
    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setUsername(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    .line 2381
    return-void
.end method
