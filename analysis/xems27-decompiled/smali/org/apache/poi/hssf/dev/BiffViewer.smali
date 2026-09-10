.class public final Lorg/apache/poi/hssf/dev/BiffViewer;
.super Ljava/lang/Object;
.source "BiffViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;,
        Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;,
        Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;,
        Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;,
        Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    }
.end annotation


# static fields
.field private static final COLUMN_SEPARATOR:[C

.field private static final DUMP_LINE_LEN:I = 0x10

.field static final NEW_LINE_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/dev/BiffViewer;->NEW_LINE_CHARS:[C

    .line 583
    const-string v0, " | "

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/dev/BiffViewer;->COLUMN_SEPARATOR:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 2
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 113
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_7

    const/16 v1, 0x23

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 273
    new-instance v0, Lorg/apache/poi/hssf/record/UnknownRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/UnknownRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 254
    :pswitch_0
    new-instance v0, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WriteProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 131
    :pswitch_1
    new-instance v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 246
    :pswitch_2
    new-instance v0, Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/VCenterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 179
    :pswitch_3
    new-instance v0, Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HCenterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 177
    :pswitch_4
    new-instance v0, Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/GridsetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 249
    :pswitch_5
    new-instance v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 178
    :pswitch_6
    new-instance v0, Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/GutsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 224
    :pswitch_7
    new-instance v0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SaveRecalcRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 243
    :pswitch_8
    new-instance v0, Lorg/apache/poi/hssf/record/UncalcedRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/UncalcedRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 202
    :pswitch_9
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 253
    :pswitch_a
    new-instance v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 168
    :pswitch_b
    new-instance v0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 139
    :pswitch_c
    new-instance v0, Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 205
    :pswitch_d
    new-instance v0, Lorg/apache/poi/hssf/record/PaneRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PaneRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 124
    :pswitch_e
    new-instance v0, Lorg/apache/poi/hssf/record/BackupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BackupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 211
    :pswitch_f
    new-instance v0, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 212
    :pswitch_10
    new-instance v0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 130
    :pswitch_11
    new-instance v0, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BottomMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 242
    :pswitch_12
    new-instance v0, Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TopMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 220
    :pswitch_13
    new-instance v0, Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RightMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 190
    :pswitch_14
    new-instance v0, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/LeftMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 225
    :pswitch_15
    new-instance v0, Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SelectionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 200
    :pswitch_16
    new-instance v0, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NoteRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 182
    :pswitch_17
    new-instance v0, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 248
    :pswitch_18
    new-instance v0, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 251
    :pswitch_19
    new-instance v0, Lorg/apache/poi/hssf/record/WindowProtectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WindowProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 198
    :pswitch_1a
    new-instance v0, Lorg/apache/poi/hssf/record/NameRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NameRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 163
    :pswitch_1b
    new-instance v0, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 226
    :sswitch_0
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 209
    :sswitch_1
    new-instance v0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 145
    :sswitch_2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/DatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 118
    :sswitch_3
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 170
    :sswitch_4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 193
    :sswitch_5
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 121
    :sswitch_6
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisUsedRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisUsedRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 230
    :sswitch_7
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 232
    :sswitch_8
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 119
    :sswitch_9
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 208
    :sswitch_a
    new-instance v0, Lorg/apache/poi/hssf/record/chart/PlotAreaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/PlotAreaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 160
    :sswitch_b
    new-instance v0, Lorg/apache/poi/hssf/record/chart/EndRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/EndRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 126
    :sswitch_c
    new-instance v0, Lorg/apache/poi/hssf/record/chart/BeginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/BeginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 176
    :sswitch_d
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 203
    :sswitch_e
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 171
    :sswitch_f
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FontIndexRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/FontIndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 240
    :sswitch_10
    new-instance v0, Lorg/apache/poi/hssf/record/chart/TextRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/TextRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 150
    :sswitch_11
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 117
    :sswitch_12
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 136
    :sswitch_13
    new-instance v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 247
    :sswitch_14
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 241
    :sswitch_15
    new-instance v0, Lorg/apache/poi/hssf/record/chart/TickRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 120
    :sswitch_16
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 115
    :sswitch_17
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 125
    :sswitch_18
    new-instance v0, Lorg/apache/poi/hssf/record/chart/BarRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 227
    :sswitch_19
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 191
    :sswitch_1a
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 137
    :sswitch_1b
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 229
    :sswitch_1c
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 114
    :sswitch_1d
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 192
    :sswitch_1e
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 146
    :sswitch_1f
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 228
    :sswitch_20
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 138
    :sswitch_21
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 244
    :sswitch_22
    new-instance v0, Lorg/apache/poi/hssf/record/chart/UnitsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/UnitsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 199
    :sswitch_23
    new-instance v0, Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NameCommentRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 237
    :sswitch_24
    new-instance v0, Lorg/apache/poi/hssf/record/TableStylesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 165
    :sswitch_25
    new-instance v0, Lorg/apache/poi/hssf/record/FeatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FeatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 166
    :sswitch_26
    new-instance v0, Lorg/apache/poi/hssf/record/FeatHdrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 257
    :sswitch_27
    new-instance v0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 259
    :sswitch_28
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 262
    :sswitch_29
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 258
    :sswitch_2a
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 261
    :sswitch_2b
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 260
    :sswitch_2c
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 123
    :sswitch_2d
    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 231
    :sswitch_2e
    new-instance v0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 174
    :sswitch_2f
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 234
    :sswitch_30
    new-instance v0, Lorg/apache/poi/hssf/record/StyleRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/StyleRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 216
    :sswitch_31
    new-instance v0, Lorg/apache/poi/hssf/record/RKRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 252
    :sswitch_32
    new-instance v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 238
    :sswitch_33
    new-instance v0, Lorg/apache/poi/hssf/record/TableRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TableRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 151
    :sswitch_34
    new-instance v0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 116
    :sswitch_35
    new-instance v0, Lorg/apache/poi/hssf/record/ArrayRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ArrayRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 184
    :sswitch_36
    new-instance v0, Lorg/apache/poi/hssf/record/IndexRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/IndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 221
    :sswitch_37
    new-instance v0, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 233
    :sswitch_38
    new-instance v0, Lorg/apache/poi/hssf/record/StringRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/StringRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 129
    :sswitch_39
    new-instance v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 188
    :sswitch_3a
    new-instance v0, Lorg/apache/poi/hssf/record/LabelRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/LabelRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 201
    :sswitch_3b
    new-instance v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 127
    :sswitch_3c
    new-instance v0, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 153
    :sswitch_3d
    new-instance v0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 217
    :sswitch_3e
    new-instance v0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 157
    :sswitch_3f
    new-instance v0, Lorg/apache/poi/hssf/record/DVRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DVRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 207
    :sswitch_40
    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRev4Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PasswordRev4Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 183
    :sswitch_41
    new-instance v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 219
    :sswitch_42
    new-instance v0, Lorg/apache/poi/hssf/record/RefreshAllRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RefreshAllRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 239
    :sswitch_43
    new-instance v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 158
    :sswitch_44
    new-instance v0, Lorg/apache/poi/hssf/record/DVALRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DVALRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 133
    :sswitch_45
    new-instance v0, Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 132
    :sswitch_46
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 215
    :sswitch_47
    new-instance v0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 235
    :sswitch_48
    new-instance v0, Lorg/apache/poi/hssf/record/SupBookRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SupBookRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 144
    :sswitch_49
    new-instance v0, Lorg/apache/poi/hssf/record/DSFRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DSFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 245
    :sswitch_4a
    new-instance v0, Lorg/apache/poi/hssf/record/UseSelFSRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 236
    :sswitch_4b
    new-instance v0, Lorg/apache/poi/hssf/record/TabIdRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TabIdRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 271
    :sswitch_4c
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 161
    :sswitch_4d
    new-instance v0, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 189
    :sswitch_4e
    new-instance v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 223
    :sswitch_4f
    new-instance v0, Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SSTRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 156
    :sswitch_50
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 155
    :sswitch_51
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 154
    :sswitch_52
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 195
    :sswitch_53
    new-instance v0, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 266
    :sswitch_54
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 185
    :sswitch_55
    invoke-static {p0}, Lorg/apache/poi/hssf/record/InterfaceEndRecord;->create(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    return-object v0

    .line 186
    :sswitch_56
    new-instance v0, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 162
    :sswitch_57
    new-instance v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 128
    :sswitch_58
    new-instance v0, Lorg/apache/poi/hssf/record/BookBoolRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BookBoolRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 143
    :sswitch_59
    new-instance v0, Lorg/apache/poi/hssf/record/DBCellRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DBCellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 265
    :sswitch_5a
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/StreamIDRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/StreamIDRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 270
    :sswitch_5b
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 194
    :sswitch_5c
    new-instance v0, Lorg/apache/poi/hssf/record/MMSRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MMSRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 196
    :sswitch_5d
    new-instance v0, Lorg/apache/poi/hssf/record/MulBlankRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 197
    :sswitch_5e
    new-instance v0, Lorg/apache/poi/hssf/record/MulRKRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MulRKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 267
    :sswitch_5f
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 269
    :sswitch_60
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 268
    :sswitch_61
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 213
    :sswitch_62
    new-instance v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 222
    :sswitch_63
    new-instance v0, Lorg/apache/poi/hssf/record/SCLRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SCLRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 204
    :sswitch_64
    new-instance v0, Lorg/apache/poi/hssf/record/PaletteRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PaletteRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 140
    :sswitch_65
    new-instance v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 149
    :sswitch_66
    new-instance v0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 148
    :sswitch_67
    new-instance v0, Lorg/apache/poi/hssf/record/DConRefRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DConRefRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 172
    :sswitch_68
    new-instance v0, Lorg/apache/poi/hssf/record/FontRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FontRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 167
    :sswitch_69
    new-instance v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FilePassRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 173
    :sswitch_6a
    new-instance v0, Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FooterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 180
    :sswitch_6b
    new-instance v0, Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HeaderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 206
    :sswitch_6c
    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PasswordRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 214
    :sswitch_6d
    new-instance v0, Lorg/apache/poi/hssf/record/ProtectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 187
    :sswitch_6e
    new-instance v0, Lorg/apache/poi/hssf/record/IterationRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/IterationRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 152
    :sswitch_6f
    new-instance v0, Lorg/apache/poi/hssf/record/DeltaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DeltaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 218
    :sswitch_70
    new-instance v0, Lorg/apache/poi/hssf/record/RefModeRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RefModeRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 210
    :sswitch_71
    new-instance v0, Lorg/apache/poi/hssf/record/PrecisionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrecisionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 135
    :sswitch_72
    new-instance v0, Lorg/apache/poi/hssf/record/CalcModeRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CalcModeRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 134
    :sswitch_73
    new-instance v0, Lorg/apache/poi/hssf/record/CalcCountRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CalcCountRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 159
    :sswitch_74
    new-instance v0, Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/EOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 175
    :sswitch_75
    new-instance v0, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 169
    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/FnGroupCountRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FnGroupCountRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 181
    :cond_2
    new-instance v0, Lorg/apache/poi/hssf/record/HideObjRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HideObjRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 142
    :cond_3
    new-instance v0, Lorg/apache/poi/hssf/record/CountryRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CountryRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 250
    :cond_4
    new-instance v0, Lorg/apache/poi/hssf/record/WindowOneRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 141
    :cond_5
    new-instance v0, Lorg/apache/poi/hssf/record/ContinueRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ContinueRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 164
    :cond_6
    new-instance v0, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    .line 147
    :cond_7
    new-instance v0, Lorg/apache/poi/hssf/record/DateWindow1904Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DateWindow1904Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_75
        0xa -> :sswitch_74
        0xc -> :sswitch_73
        0xd -> :sswitch_72
        0xe -> :sswitch_71
        0xf -> :sswitch_70
        0x10 -> :sswitch_6f
        0x11 -> :sswitch_6e
        0x12 -> :sswitch_6d
        0x13 -> :sswitch_6c
        0x14 -> :sswitch_6b
        0x15 -> :sswitch_6a
        0x2f -> :sswitch_69
        0x31 -> :sswitch_68
        0x51 -> :sswitch_67
        0x55 -> :sswitch_66
        0x7d -> :sswitch_65
        0x92 -> :sswitch_64
        0xa0 -> :sswitch_63
        0xa1 -> :sswitch_62
        0xb0 -> :sswitch_61
        0xb1 -> :sswitch_60
        0xb6 -> :sswitch_5f
        0xbd -> :sswitch_5e
        0xbe -> :sswitch_5d
        0xc1 -> :sswitch_5c
        0xc5 -> :sswitch_5b
        0xd5 -> :sswitch_5a
        0xd7 -> :sswitch_59
        0xda -> :sswitch_58
        0xe0 -> :sswitch_57
        0xe1 -> :sswitch_56
        0xe2 -> :sswitch_55
        0xe3 -> :sswitch_54
        0xe5 -> :sswitch_53
        0xeb -> :sswitch_52
        0xec -> :sswitch_51
        0xed -> :sswitch_50
        0xfc -> :sswitch_4f
        0xfd -> :sswitch_4e
        0xff -> :sswitch_4d
        0x100 -> :sswitch_4c
        0x13d -> :sswitch_4b
        0x160 -> :sswitch_4a
        0x161 -> :sswitch_49
        0x1ae -> :sswitch_48
        0x1af -> :sswitch_47
        0x1b0 -> :sswitch_46
        0x1b1 -> :sswitch_45
        0x1b2 -> :sswitch_44
        0x1b6 -> :sswitch_43
        0x1b7 -> :sswitch_42
        0x1b8 -> :sswitch_41
        0x1bc -> :sswitch_40
        0x1be -> :sswitch_3f
        0x1c1 -> :sswitch_3e
        0x200 -> :sswitch_3d
        0x201 -> :sswitch_3c
        0x203 -> :sswitch_3b
        0x204 -> :sswitch_3a
        0x205 -> :sswitch_39
        0x207 -> :sswitch_38
        0x208 -> :sswitch_37
        0x20b -> :sswitch_36
        0x221 -> :sswitch_35
        0x225 -> :sswitch_34
        0x236 -> :sswitch_33
        0x23e -> :sswitch_32
        0x27e -> :sswitch_31
        0x293 -> :sswitch_30
        0x41e -> :sswitch_2f
        0x4bc -> :sswitch_2e
        0x809 -> :sswitch_2d
        0x850 -> :sswitch_2c
        0x852 -> :sswitch_2b
        0x853 -> :sswitch_2a
        0x854 -> :sswitch_29
        0x855 -> :sswitch_28
        0x856 -> :sswitch_27
        0x867 -> :sswitch_26
        0x868 -> :sswitch_25
        0x88e -> :sswitch_24
        0x894 -> :sswitch_23
        0x1001 -> :sswitch_22
        0x1002 -> :sswitch_21
        0x1003 -> :sswitch_20
        0x1006 -> :sswitch_1f
        0x1007 -> :sswitch_1e
        0x100a -> :sswitch_1d
        0x100d -> :sswitch_1c
        0x1014 -> :sswitch_1b
        0x1015 -> :sswitch_1a
        0x1016 -> :sswitch_19
        0x1017 -> :sswitch_18
        0x101a -> :sswitch_17
        0x101d -> :sswitch_16
        0x101e -> :sswitch_15
        0x101f -> :sswitch_14
        0x1020 -> :sswitch_13
        0x1021 -> :sswitch_12
        0x1024 -> :sswitch_11
        0x1025 -> :sswitch_10
        0x1026 -> :sswitch_f
        0x1027 -> :sswitch_e
        0x1032 -> :sswitch_d
        0x1033 -> :sswitch_c
        0x1034 -> :sswitch_b
        0x1035 -> :sswitch_a
        0x1041 -> :sswitch_9
        0x1044 -> :sswitch_8
        0x1045 -> :sswitch_7
        0x1046 -> :sswitch_6
        0x1051 -> :sswitch_5
        0x1060 -> :sswitch_4
        0x1062 -> :sswitch_3
        0x1063 -> :sswitch_2
        0x1064 -> :sswitch_1
        0x1065 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x80
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createRecords(Ljava/io/InputStream;Ljava/io/PrintStream;Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;Z)[Lorg/apache/poi/hssf/record/Record;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "ps"    # Ljava/io/PrintStream;
    .param p2, "recListener"    # Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;
    .param p3, "dumpInterpretedRecords"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordFormatException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v1, p0}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .local v1, "recStream":Lorg/apache/poi/hssf/record/RecordInputStream;
    const/4 v2, 0x0

    .line 68
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .local v2, "hasNext":Z
    goto :goto_1

    .line 69
    .end local v2    # "hasNext":Z
    :catch_0
    move-exception v3

    .line 70
    .restart local v2    # "hasNext":Z
    .local v3, "e":Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;->printStackTrace()V

    .line 71
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes and continuing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    .line 73
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v2

    .line 75
    .end local v3    # "e":Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;
    :goto_1
    if-nez v2, :cond_0

    .line 76
    nop

    .line 101
    .end local v2    # "hasNext":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/hssf/record/Record;

    .line 102
    .local v2, "result":[Lorg/apache/poi/hssf/record/Record;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    return-object v2

    .line 78
    .local v2, "hasNext":Z
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 79
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v3

    if-nez v3, :cond_1

    .line 80
    goto :goto_0

    .line 83
    :cond_1
    if-eqz p3, :cond_4

    .line 84
    invoke-static {v1}, Lorg/apache/poi/hssf/dev/BiffViewer;->createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    .line 85
    .local v3, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_2

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    if-eqz p3, :cond_5

    .line 91
    invoke-virtual {p2}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->getRecentHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 92
    .local v5, "header":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    .end local v5    # "header":Ljava/lang/String;
    goto :goto_2

    .line 94
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 97
    .end local v3    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    .line 99
    :cond_5
    :goto_3
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 100
    .end local v2    # "hasNext":Z
    goto/16 :goto_0
.end method

.method protected static getPOIFSInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 423
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 424
    .local v0, "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "workbookName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    return-object v2
.end method

.method private static getPrintableChar(B)C
    .locals 2
    .param p0, "b"    # B

    .line 677
    and-int/lit16 v0, p0, 0xff

    int-to-char v0, v0

    .line 678
    .local v0, "ib":C
    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7e

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    return v0

    .line 679
    :cond_1
    :goto_0
    const/16 v1, 0x2e

    return v1
.end method

.method static hexDumpAligned(Ljava/io/Writer;[BIIZ)V
    .locals 18
    .param p0, "w"    # Ljava/io/Writer;
    .param p1, "data"    # [B
    .param p2, "dumpLen"    # I
    .param p3, "globalOffset"    # I
    .param p4, "zeroAlignEachRecord"    # Z

    .line 591
    const/4 v0, 0x0

    .line 594
    .local v0, "baseDataOffset":I
    add-int v1, p3, v0

    .line 595
    .local v1, "globalStart":I
    add-int v2, p3, v0

    add-int v2, v2, p2

    .line 596
    .local v2, "globalEnd":I
    rem-int/lit8 v3, v1, 0x10

    .line 597
    .local v3, "startDelta":I
    rem-int/lit8 v4, v2, 0x10

    .line 598
    .local v4, "endDelta":I
    if-eqz p4, :cond_1

    .line 599
    sub-int/2addr v4, v3

    .line 600
    if-gez v4, :cond_0

    .line 601
    add-int/lit8 v4, v4, 0x10

    .line 603
    :cond_0
    const/4 v3, 0x0

    move v14, v4

    goto :goto_0

    .line 598
    :cond_1
    move v14, v4

    .line 607
    .end local v4    # "endDelta":I
    .local v14, "endDelta":I
    :goto_0
    if-eqz p4, :cond_2

    .line 608
    sub-int v4, v2, v14

    sub-int v5, v1, v3

    sub-int/2addr v4, v5

    .line 609
    .local v4, "endLineAddr":I
    const/4 v5, 0x0

    move v15, v4

    move v4, v5

    .local v5, "startLineAddr":I
    goto :goto_1

    .line 611
    .end local v4    # "endLineAddr":I
    .end local v5    # "startLineAddr":I
    :cond_2
    sub-int v5, v1, v3

    .line 612
    .restart local v5    # "startLineAddr":I
    sub-int v4, v2, v14

    move v15, v4

    move v4, v5

    .line 615
    .end local v5    # "startLineAddr":I
    .local v4, "startLineAddr":I
    .local v15, "endLineAddr":I
    :goto_1
    sub-int v16, v0, v3

    .line 616
    .local v16, "lineDataOffset":I
    move v7, v4

    .line 619
    .local v7, "lineAddr":I
    if-ne v4, v15, :cond_3

    .line 620
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, v16

    move v9, v3

    move v10, v14

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpLine(Ljava/io/Writer;[BIIII)V

    .line 621
    return-void

    .line 623
    :cond_3
    const/16 v13, 0x10

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v7

    move/from16 v11, v16

    move v12, v3

    invoke-static/range {v8 .. v13}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpLine(Ljava/io/Writer;[BIIII)V

    .line 627
    :goto_2
    add-int/lit8 v13, v7, 0x10

    .line 628
    .end local v7    # "lineAddr":I
    .local v13, "lineAddr":I
    add-int/lit8 v16, v16, 0x10

    .line 629
    if-lt v13, v15, :cond_5

    .line 630
    nop

    .line 637
    if-eqz v14, :cond_4

    .line 638
    const/4 v8, 0x0

    move/from16 v17, v4

    .end local v4    # "startLineAddr":I
    .local v17, "startLineAddr":I
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v13

    move/from16 v7, v16

    move v9, v14

    invoke-static/range {v4 .. v9}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpLine(Ljava/io/Writer;[BIIII)V

    goto :goto_3

    .line 637
    .end local v17    # "startLineAddr":I
    .restart local v4    # "startLineAddr":I
    :cond_4
    move/from16 v17, v4

    .line 640
    .end local v4    # "startLineAddr":I
    .restart local v17    # "startLineAddr":I
    :goto_3
    return-void

    .line 632
    .end local v17    # "startLineAddr":I
    .restart local v4    # "startLineAddr":I
    :cond_5
    move/from16 v17, v4

    .end local v4    # "startLineAddr":I
    .restart local v17    # "startLineAddr":I
    const/4 v12, 0x0

    const/16 v4, 0x10

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v13

    move/from16 v11, v16

    move v5, v13

    .end local v13    # "lineAddr":I
    .local v5, "lineAddr":I
    move v13, v4

    invoke-static/range {v8 .. v13}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpLine(Ljava/io/Writer;[BIIII)V

    move v7, v5

    move/from16 v4, v17

    goto :goto_2
.end method

.method private static hexDumpLine(Ljava/io/Writer;[BIIII)V
    .locals 4
    .param p0, "w"    # Ljava/io/Writer;
    .param p1, "data"    # [B
    .param p2, "lineStartAddress"    # I
    .param p3, "lineDataOffset"    # I
    .param p4, "startDelta"    # I
    .param p5, "endDelta"    # I

    .line 643
    if-ge p4, p5, :cond_5

    .line 647
    const/16 v0, 0x8

    :try_start_0
    invoke-static {p0, p2, v0}, Lorg/apache/poi/hssf/dev/BiffViewer;->writeHex(Ljava/io/Writer;II)V

    .line 648
    sget-object v0, Lorg/apache/poi/hssf/dev/BiffViewer;->COLUMN_SEPARATOR:[C

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const-string v1, " "

    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    .line 651
    if-lez v0, :cond_0

    .line 652
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 654
    :cond_0
    if-lt v0, p4, :cond_1

    if-ge v0, p5, :cond_1

    .line 655
    add-int v1, p3, v0

    aget-byte v1, p1, v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lorg/apache/poi/hssf/dev/BiffViewer;->writeHex(Ljava/io/Writer;II)V

    goto :goto_1

    .line 657
    :cond_1
    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 650
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    .end local v0    # "i":I
    :cond_2
    sget-object v0, Lorg/apache/poi/hssf/dev/BiffViewer;->COLUMN_SEPARATOR:[C

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write([C)V

    .line 663
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 664
    if-lt v0, p4, :cond_3

    if-ge v0, p5, :cond_3

    .line 665
    add-int v3, p3, v0

    aget-byte v3, p1, v3

    invoke-static {v3}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPrintableChar(B)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    .line 667
    :cond_3
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 663
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 670
    .end local v0    # "i":I
    :cond_4
    sget-object v0, Lorg/apache/poi/hssf/dev/BiffViewer;->NEW_LINE_CHARS:[C

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write([C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 673
    nop

    .line 674
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 644
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad start/end delta"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 384
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->parse([Ljava/lang/String;)Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 388
    .local v0, "cmdArgs":Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    nop

    .line 393
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->shouldOutputToFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 395
    .local v1, "os":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 396
    .local v1, "ps":Ljava/io/PrintStream;
    goto :goto_0

    .line 397
    .end local v1    # "ps":Ljava/io/PrintStream;
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 400
    .restart local v1    # "ps":Ljava/io/PrintStream;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPOIFSInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v2

    move-object v8, v2

    .line 402
    .local v8, "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->shouldOutputRawHexOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 404
    .local v2, "size":I
    new-array v3, v2, [B

    .line 406
    .local v3, "data":[B
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    .line 407
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;I)V

    .line 408
    .end local v2    # "size":I
    .end local v3    # "data":[B
    goto :goto_1

    .line 409
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->shouldDumpRecordInterpretations()Z

    move-result v4

    .line 410
    .local v4, "dumpInterpretedRecords":Z
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->shouldDumpBiffHex()Z

    move-result v5

    .line 411
    .local v5, "dumpHex":Z
    move v6, v4

    .line 412
    .local v6, "zeroAlignHexDump":Z
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->suppressHeader()Z

    move-result v7

    move-object v2, v1

    move-object v3, v8

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/hssf/dev/BiffViewer;->runBiffViewer(Ljava/io/PrintStream;Ljava/io/InputStream;ZZZZ)V

    .line 415
    .end local v4    # "dumpInterpretedRecords":Z
    .end local v5    # "dumpHex":Z
    .end local v6    # "zeroAlignHexDump":Z
    :goto_1
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 418
    .end local v1    # "ps":Ljava/io/PrintStream;
    .end local v8    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 385
    .end local v0    # "cmdArgs":Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 386
    .local v0, "e":Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;
    .local v1, "cmdArgs":Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;->printStackTrace()V

    .line 387
    return-void
.end method

.method protected static runBiffViewer(Ljava/io/PrintStream;Ljava/io/InputStream;ZZZZ)V
    .locals 2
    .param p0, "ps"    # Ljava/io/PrintStream;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "dumpInterpretedRecords"    # Z
    .param p3, "dumpHex"    # Z
    .param p4, "zeroAlignHexDump"    # Z
    .param p5, "suppressHeader"    # Z

    .line 431
    new-instance v0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;

    if-eqz p3, :cond_0

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1, p4, p5}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;-><init>(Ljava/io/Writer;ZZ)V

    .line 432
    .local v0, "recListener":Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;
    new-instance v1, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;)V

    move-object p1, v1

    .line 433
    invoke-static {p1, p0, v0, p2}, Lorg/apache/poi/hssf/dev/BiffViewer;->createRecords(Ljava/io/InputStream;Ljava/io/PrintStream;Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;Z)[Lorg/apache/poi/hssf/record/Record;

    .line 434
    return-void
.end method

.method private static writeHex(Ljava/io/Writer;II)V
    .locals 6
    .param p0, "w"    # Ljava/io/Writer;
    .param p1, "value"    # I
    .param p2, "nDigits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    new-array v0, p2, [C

    .line 686
    .local v0, "buf":[C
    move v1, p1

    .line 687
    .local v1, "acc":I
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 688
    and-int/lit8 v3, v1, 0xf

    .line 689
    .local v3, "digit":I
    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x30

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v3, 0x41

    add-int/lit8 v4, v5, -0xa

    :goto_1
    int-to-char v4, v4

    aput-char v4, v0, v2

    .line 690
    shr-int/lit8 v1, v1, 0x4

    .line 687
    .end local v3    # "digit":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 692
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write([C)V

    .line 693
    return-void
.end method
