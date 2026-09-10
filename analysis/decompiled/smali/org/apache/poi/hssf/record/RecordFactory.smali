.class public final Lorg/apache/poi/hssf/record/RecordFactory;
.super Ljava/lang/Object;
.source "RecordFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/RecordFactory$ReflectionMethodRecordCreator;,
        Lorg/apache/poi/hssf/record/RecordFactory$ReflectionConstructorRecordCreator;,
        Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;
    }
.end annotation


# static fields
.field private static final CONSTRUCTOR_ARGS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final NUM_RECORDS:I = 0x200

.field private static _allKnownRecordSIDs:[S

.field private static final _recordCreatorsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;",
            ">;"
        }
    .end annotation
.end field

.field private static final recordClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/hssf/record/RecordFactory;->CONSTRUCTOR_ARGS:[Ljava/lang/Class;

    .line 145
    const/16 v0, 0x88

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/apache/poi/hssf/record/ArrayRecord;

    aput-object v1, v0, v2

    const-class v1, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lorg/apache/poi/hssf/record/BackupRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/apache/poi/hssf/record/BlankRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lorg/apache/poi/hssf/record/BOFRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lorg/apache/poi/hssf/record/BookBoolRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lorg/apache/poi/hssf/record/BoolErrRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lorg/apache/poi/hssf/record/CalcCountRecord;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lorg/apache/poi/hssf/record/CalcModeRecord;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lorg/apache/poi/hssf/record/CFRuleRecord;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lorg/apache/poi/hssf/record/chart/ChartRecord;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lorg/apache/poi/hssf/record/CodepageRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lorg/apache/poi/hssf/record/ContinueRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lorg/apache/poi/hssf/record/CountryRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lorg/apache/poi/hssf/record/CRNCountRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lorg/apache/poi/hssf/record/CRNRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lorg/apache/poi/hssf/record/DateWindow1904Record;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lorg/apache/poi/hssf/record/DBCellRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lorg/apache/poi/hssf/record/DConRefRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lorg/apache/poi/hssf/record/DeltaRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lorg/apache/poi/hssf/record/DimensionsRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lorg/apache/poi/hssf/record/DrawingRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lorg/apache/poi/hssf/record/DSFRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lorg/apache/poi/hssf/record/DVALRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lorg/apache/poi/hssf/record/DVRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lorg/apache/poi/hssf/record/EOFRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lorg/apache/poi/hssf/record/FeatRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lorg/apache/poi/hssf/record/FeatHdrRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lorg/apache/poi/hssf/record/FilePassRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lorg/apache/poi/hssf/record/FileSharingRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lorg/apache/poi/hssf/record/FnGroupCountRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lorg/apache/poi/hssf/record/FontRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lorg/apache/poi/hssf/record/FooterRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lorg/apache/poi/hssf/record/FormatRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lorg/apache/poi/hssf/record/FormulaRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lorg/apache/poi/hssf/record/GridsetRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lorg/apache/poi/hssf/record/GutsRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lorg/apache/poi/hssf/record/HCenterRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lorg/apache/poi/hssf/record/HeaderRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lorg/apache/poi/hssf/record/HideObjRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lorg/apache/poi/hssf/record/IndexRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lorg/apache/poi/hssf/record/InterfaceEndRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lorg/apache/poi/hssf/record/IterationRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lorg/apache/poi/hssf/record/LabelRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lorg/apache/poi/hssf/record/chart/LegendRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lorg/apache/poi/hssf/record/MMSRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-class v2, Lorg/apache/poi/hssf/record/MulBlankRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-class v2, Lorg/apache/poi/hssf/record/MulRKRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-class v2, Lorg/apache/poi/hssf/record/NameRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-class v2, Lorg/apache/poi/hssf/record/NameCommentRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-class v2, Lorg/apache/poi/hssf/record/NoteRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-class v2, Lorg/apache/poi/hssf/record/NumberRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-class v2, Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-class v2, Lorg/apache/poi/hssf/record/ObjRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-class v2, Lorg/apache/poi/hssf/record/PaletteRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-class v2, Lorg/apache/poi/hssf/record/PaneRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-class v2, Lorg/apache/poi/hssf/record/PasswordRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-class v2, Lorg/apache/poi/hssf/record/PasswordRev4Record;

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-class v2, Lorg/apache/poi/hssf/record/PrecisionRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-class v2, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-class v2, Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-class v2, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-class v2, Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-class v2, Lorg/apache/poi/hssf/record/ProtectRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-class v2, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-class v2, Lorg/apache/poi/hssf/record/RefModeRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-class v2, Lorg/apache/poi/hssf/record/RefreshAllRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-class v2, Lorg/apache/poi/hssf/record/RightMarginRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-class v2, Lorg/apache/poi/hssf/record/RKRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-class v2, Lorg/apache/poi/hssf/record/RowRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-class v2, Lorg/apache/poi/hssf/record/SaveRecalcRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-class v2, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-class v2, Lorg/apache/poi/hssf/record/SelectionRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-class v2, Lorg/apache/poi/hssf/record/chart/SeriesRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-class v2, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-class v2, Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-class v2, Lorg/apache/poi/hssf/record/SSTRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-class v2, Lorg/apache/poi/hssf/record/StringRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-class v2, Lorg/apache/poi/hssf/record/StyleRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-class v2, Lorg/apache/poi/hssf/record/SupBookRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-class v2, Lorg/apache/poi/hssf/record/TabIdRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-class v2, Lorg/apache/poi/hssf/record/TableRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-class v2, Lorg/apache/poi/hssf/record/TableStylesRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-class v2, Lorg/apache/poi/hssf/record/TextObjectRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-class v2, Lorg/apache/poi/hssf/record/TopMarginRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-class v2, Lorg/apache/poi/hssf/record/UncalcedRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-class v2, Lorg/apache/poi/hssf/record/UseSelFSRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-class v2, Lorg/apache/poi/hssf/record/UserSViewBegin;

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-class v2, Lorg/apache/poi/hssf/record/UserSViewEnd;

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-class v2, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-class v2, Lorg/apache/poi/hssf/record/VCenterRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-class v2, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-class v2, Lorg/apache/poi/hssf/record/WindowOneRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-class v2, Lorg/apache/poi/hssf/record/WindowProtectRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-class v2, Lorg/apache/poi/hssf/record/WindowTwoRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-class v2, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-class v2, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-class v2, Lorg/apache/poi/hssf/record/WSBoolRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-class v2, Lorg/apache/poi/hssf/record/chart/BeginRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-class v2, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-class v2, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-class v2, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-class v2, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-class v2, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-class v2, Lorg/apache/poi/hssf/record/chart/CatLabRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-class v2, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-class v2, Lorg/apache/poi/hssf/record/chart/EndRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-class v2, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-class v2, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-class v2, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-class v2, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-class v2, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-class v2, Lorg/apache/poi/hssf/record/pivottable/StreamIDRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-class v2, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-class v2, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-class v2, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/hssf/record/RecordFactory;->recordClasses:[Ljava/lang/Class;

    .line 292
    sget-object v0, Lorg/apache/poi/hssf/record/RecordFactory;->recordClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/RecordFactory;->recordsToMap([Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RecordFactory;->_recordCreatorsById:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static convertBlankRecords(Lorg/apache/poi/hssf/record/MulBlankRecord;)[Lorg/apache/poi/hssf/record/BlankRecord;
    .locals 4
    .param p0, "mbk"    # Lorg/apache/poi/hssf/record/MulBlankRecord;

    .prologue
    .line 376
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getNumColumns()I

    move-result v3

    new-array v2, v3, [Lorg/apache/poi/hssf/record/BlankRecord;

    .line 377
    .local v2, "mulRecs":[Lorg/apache/poi/hssf/record/BlankRecord;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getNumColumns()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 378
    new-instance v0, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>()V

    .line 380
    .local v0, "br":Lorg/apache/poi/hssf/record/BlankRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getFirstColumn()I

    move-result v3

    add-int/2addr v3, v1

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/BlankRecord;->setColumn(S)V

    .line 381
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getRow()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/BlankRecord;->setRow(I)V

    .line 382
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getXFAt(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/BlankRecord;->setXFIndex(S)V

    .line 383
    aput-object v0, v2, v1

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v0    # "br":Lorg/apache/poi/hssf/record/BlankRecord;
    :cond_0
    return-object v2
.end method

.method public static convertRKRecords(Lorg/apache/poi/hssf/record/MulRKRecord;)[Lorg/apache/poi/hssf/record/NumberRecord;
    .locals 6
    .param p0, "mrk"    # Lorg/apache/poi/hssf/record/MulRKRecord;

    .prologue
    .line 359
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->getNumColumns()I

    move-result v3

    new-array v1, v3, [Lorg/apache/poi/hssf/record/NumberRecord;

    .line 360
    .local v1, "mulRecs":[Lorg/apache/poi/hssf/record/NumberRecord;
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->getNumColumns()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 361
    new-instance v2, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>()V

    .line 363
    .local v2, "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->getFirstColumn()S

    move-result v3

    add-int/2addr v3, v0

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/NumberRecord;->setColumn(S)V

    .line 364
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->getRow()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/NumberRecord;->setRow(I)V

    .line 365
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/MulRKRecord;->getXFAt(I)S

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/NumberRecord;->setXFIndex(S)V

    .line 366
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/MulRKRecord;->getRKNumberAt(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    .line 367
    aput-object v2, v1, v0

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v2    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    :cond_0
    return-object v1
.end method

.method public static convertToNumberRecord(Lorg/apache/poi/hssf/record/RKRecord;)Lorg/apache/poi/hssf/record/NumberRecord;
    .locals 4
    .param p0, "rk"    # Lorg/apache/poi/hssf/record/RKRecord;

    .prologue
    .line 346
    new-instance v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>()V

    .line 348
    .local v0, "num":Lorg/apache/poi/hssf/record/NumberRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RKRecord;->getColumn()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NumberRecord;->setColumn(S)V

    .line 349
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RKRecord;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NumberRecord;->setRow(I)V

    .line 350
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RKRecord;->getXFIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NumberRecord;->setXFIndex(S)V

    .line 351
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RKRecord;->getRKNumber()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    .line 352
    return-object v0
.end method

.method public static createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)[Lorg/apache/poi/hssf/record/Record;
    .locals 4
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 317
    invoke-static {p0}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    .line 318
    .local v0, "record":Lorg/apache/poi/hssf/record/Record;
    instance-of v1, v0, Lorg/apache/poi/hssf/record/DBCellRecord;

    if-eqz v1, :cond_0

    .line 320
    new-array v1, v2, [Lorg/apache/poi/hssf/record/Record;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    .line 328
    .end local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    :goto_0
    return-object v1

    .line 322
    .restart local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/hssf/record/RKRecord;

    if-eqz v1, :cond_1

    .line 323
    new-array v1, v2, [Lorg/apache/poi/hssf/record/Record;

    check-cast v0, Lorg/apache/poi/hssf/record/RKRecord;

    .end local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    invoke-static {v0}, Lorg/apache/poi/hssf/record/RecordFactory;->convertToNumberRecord(Lorg/apache/poi/hssf/record/RKRecord;)Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_0

    .line 325
    .restart local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/hssf/record/MulRKRecord;

    if-eqz v1, :cond_2

    .line 326
    check-cast v0, Lorg/apache/poi/hssf/record/MulRKRecord;

    .end local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    invoke-static {v0}, Lorg/apache/poi/hssf/record/RecordFactory;->convertRKRecords(Lorg/apache/poi/hssf/record/MulRKRecord;)[Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object v1

    goto :goto_0

    .line 328
    .restart local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_2
    new-array v1, v2, [Lorg/apache/poi/hssf/record/Record;

    aput-object v0, v1, v3

    goto :goto_0
.end method

.method public static createRecords(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordFormatException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 477
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 480
    .local v0, "recStream":Lorg/apache/poi/hssf/record/RecordFactoryInputStream;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->nextRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    .local v1, "record":Lorg/apache/poi/hssf/record/Record;
    if-eqz v1, :cond_0

    .line 481
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_0
    return-object v2
.end method

.method public static createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 332
    sget-object v1, Lorg/apache/poi/hssf/record/RecordFactory;->_recordCreatorsById:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;

    .line 334
    .local v0, "constructor":Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;
    if-nez v0, :cond_0

    .line 335
    new-instance v1, Lorg/apache/poi/hssf/record/UnknownRecord;

    invoke-direct {v1, p0}, Lorg/apache/poi/hssf/record/UnknownRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 338
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;->create(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    goto :goto_0
.end method

.method public static getAllKnownRecordSIDs()[S
    .locals 6

    .prologue
    .line 392
    sget-object v5, Lorg/apache/poi/hssf/record/RecordFactory;->_allKnownRecordSIDs:[S

    if-nez v5, :cond_1

    .line 393
    sget-object v5, Lorg/apache/poi/hssf/record/RecordFactory;->_recordCreatorsById:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [S

    .line 394
    .local v3, "results":[S
    const/4 v0, 0x0

    .line 396
    .local v0, "i":I
    sget-object v5, Lorg/apache/poi/hssf/record/RecordFactory;->_recordCreatorsById:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 399
    .local v4, "sid":Ljava/lang/Integer;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v4}, Ljava/lang/Integer;->shortValue()S

    move-result v5

    aput-short v5, v3, v0

    move v0, v1

    .line 400
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 401
    .end local v4    # "sid":Ljava/lang/Integer;
    :cond_0
    invoke-static {v3}, Ljava/util/Arrays;->sort([S)V

    .line 402
    sput-object v3, Lorg/apache/poi/hssf/record/RecordFactory;->_allKnownRecordSIDs:[S

    .line 405
    :cond_1
    sget-object v5, Lorg/apache/poi/hssf/record/RecordFactory;->_allKnownRecordSIDs:[S

    invoke-virtual {v5}, [S->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S

    return-object v5
.end method

.method public static getRecordClass(I)Ljava/lang/Class;
    .locals 3
    .param p0, "sid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    sget-object v1, Lorg/apache/poi/hssf/record/RecordFactory;->_recordCreatorsById:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;

    .line 306
    .local v0, "rc":Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;
    if-nez v0, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 309
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;->getRecordClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRecordCreator(Ljava/lang/Class;)Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)",
            "Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, "recClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    :try_start_0
    sget-object v3, Lorg/apache/poi/hssf/record/RecordFactory;->CONSTRUCTOR_ARGS:[Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 453
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v3, Lorg/apache/poi/hssf/record/RecordFactory$ReflectionConstructorRecordCreator;

    invoke-direct {v3, v0}, Lorg/apache/poi/hssf/record/RecordFactory$ReflectionConstructorRecordCreator;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/hssf/record/Record;>;"
    :goto_0
    return-object v3

    .line 454
    :catch_0
    move-exception v3

    .line 458
    :try_start_1
    const-string v3, "create"

    sget-object v4, Lorg/apache/poi/hssf/record/RecordFactory;->CONSTRUCTOR_ARGS:[Ljava/lang/Class;

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 459
    .local v2, "m":Ljava/lang/reflect/Method;
    new-instance v3, Lorg/apache/poi/hssf/record/RecordFactory$ReflectionMethodRecordCreator;

    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/record/RecordFactory$ReflectionMethodRecordCreator;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 460
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find constructor or create method for ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static recordsToMap([Ljava/lang/Class;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "records":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 415
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;>;"
    new-instance v7, Ljava/util/HashSet;

    array-length v8, p0

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 417
    .local v7, "uniqueRecClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, p0

    if-ge v0, v8, :cond_4

    .line 419
    aget-object v4, p0, v0

    .line 420
    .local v4, "recClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    const-class v8, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v8, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 421
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid record sub-class ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 423
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 424
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid record class ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") - must not be abstract"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 426
    :cond_1
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 427
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "duplicate record class ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 432
    :cond_2
    :try_start_0
    const-string v8, "sid"

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 437
    .local v6, "sid":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 438
    .local v2, "key":Ljava/lang/Integer;
    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 439
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;

    invoke-interface {v8}, Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;->getRecordClass()Ljava/lang/Class;

    move-result-object v3

    .line 440
    .local v3, "prevClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "duplicate record sid 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for classes ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") and ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 433
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "prevClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "sid":I
    :catch_0
    move-exception v1

    .line 434
    .local v1, "illegalArgumentException":Ljava/lang/Exception;
    new-instance v8, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v9, "Unable to determine record types"

    invoke-direct {v8, v9}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 443
    .end local v1    # "illegalArgumentException":Ljava/lang/Exception;
    .restart local v2    # "key":Ljava/lang/Integer;
    .restart local v6    # "sid":I
    :cond_3
    invoke-static {v4}, Lorg/apache/poi/hssf/record/RecordFactory;->getRecordCreator(Ljava/lang/Class;)Lorg/apache/poi/hssf/record/RecordFactory$I_RecordCreator;

    move-result-object v8

    invoke-interface {v5, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 446
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v4    # "recClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    .end local v6    # "sid":I
    :cond_4
    return-object v5
.end method
