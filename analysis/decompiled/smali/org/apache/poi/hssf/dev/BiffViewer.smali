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

    .prologue
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

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;
    .locals 1
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 273
    new-instance v0, Lorg/apache/poi/hssf/record/UnknownRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/UnknownRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    :goto_0
    return-object v0

    .line 114
    :sswitch_0
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 115
    :sswitch_1
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 116
    :sswitch_2
    new-instance v0, Lorg/apache/poi/hssf/record/ArrayRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ArrayRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 117
    :sswitch_3
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 118
    :sswitch_4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 119
    :sswitch_5
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 120
    :sswitch_6
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 121
    :sswitch_7
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisUsedRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisUsedRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 122
    :sswitch_8
    new-instance v0, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 123
    :sswitch_9
    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 124
    :sswitch_a
    new-instance v0, Lorg/apache/poi/hssf/record/BackupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BackupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 125
    :sswitch_b
    new-instance v0, Lorg/apache/poi/hssf/record/chart/BarRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 126
    :sswitch_c
    new-instance v0, Lorg/apache/poi/hssf/record/chart/BeginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/BeginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 127
    :sswitch_d
    new-instance v0, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 128
    :sswitch_e
    new-instance v0, Lorg/apache/poi/hssf/record/BookBoolRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BookBoolRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 129
    :sswitch_f
    new-instance v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 130
    :sswitch_10
    new-instance v0, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BottomMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 131
    :sswitch_11
    new-instance v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 132
    :sswitch_12
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 133
    :sswitch_13
    new-instance v0, Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 134
    :sswitch_14
    new-instance v0, Lorg/apache/poi/hssf/record/CalcCountRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CalcCountRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0

    .line 135
    :sswitch_15
    new-instance v0, Lorg/apache/poi/hssf/record/CalcModeRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CalcModeRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 136
    :sswitch_16
    new-instance v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 137
    :sswitch_17
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 138
    :sswitch_18
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 139
    :sswitch_19
    new-instance v0, Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 140
    :sswitch_1a
    new-instance v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 141
    :sswitch_1b
    new-instance v0, Lorg/apache/poi/hssf/record/ContinueRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ContinueRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 142
    :sswitch_1c
    new-instance v0, Lorg/apache/poi/hssf/record/CountryRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CountryRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 143
    :sswitch_1d
    new-instance v0, Lorg/apache/poi/hssf/record/DBCellRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DBCellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 144
    :sswitch_1e
    new-instance v0, Lorg/apache/poi/hssf/record/DSFRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DSFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 145
    :sswitch_1f
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/DatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 146
    :sswitch_20
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 147
    :sswitch_21
    new-instance v0, Lorg/apache/poi/hssf/record/DateWindow1904Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DateWindow1904Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 148
    :sswitch_22
    new-instance v0, Lorg/apache/poi/hssf/record/DConRefRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DConRefRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 149
    :sswitch_23
    new-instance v0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 150
    :sswitch_24
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 151
    :sswitch_25
    new-instance v0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 152
    :sswitch_26
    new-instance v0, Lorg/apache/poi/hssf/record/DeltaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DeltaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 153
    :sswitch_27
    new-instance v0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 154
    :sswitch_28
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 155
    :sswitch_29
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 156
    :sswitch_2a
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 157
    :sswitch_2b
    new-instance v0, Lorg/apache/poi/hssf/record/DVRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DVRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 158
    :sswitch_2c
    new-instance v0, Lorg/apache/poi/hssf/record/DVALRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DVALRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 159
    :sswitch_2d
    new-instance v0, Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/EOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 160
    :sswitch_2e
    new-instance v0, Lorg/apache/poi/hssf/record/chart/EndRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/EndRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 161
    :sswitch_2f
    new-instance v0, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 162
    :sswitch_30
    new-instance v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 163
    :sswitch_31
    new-instance v0, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 164
    :sswitch_32
    new-instance v0, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 165
    :sswitch_33
    new-instance v0, Lorg/apache/poi/hssf/record/FeatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FeatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 166
    :sswitch_34
    new-instance v0, Lorg/apache/poi/hssf/record/FeatHdrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 167
    :sswitch_35
    new-instance v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FilePassRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 168
    :sswitch_36
    new-instance v0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 169
    :sswitch_37
    new-instance v0, Lorg/apache/poi/hssf/record/FnGroupCountRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FnGroupCountRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 170
    :sswitch_38
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 171
    :sswitch_39
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FontIndexRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/FontIndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 172
    :sswitch_3a
    new-instance v0, Lorg/apache/poi/hssf/record/FontRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FontRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 173
    :sswitch_3b
    new-instance v0, Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FooterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 174
    :sswitch_3c
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 175
    :sswitch_3d
    new-instance v0, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 176
    :sswitch_3e
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 177
    :sswitch_3f
    new-instance v0, Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/GridsetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 178
    :sswitch_40
    new-instance v0, Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/GutsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 179
    :sswitch_41
    new-instance v0, Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HCenterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 180
    :sswitch_42
    new-instance v0, Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HeaderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 181
    :sswitch_43
    new-instance v0, Lorg/apache/poi/hssf/record/HideObjRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HideObjRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 182
    :sswitch_44
    new-instance v0, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 183
    :sswitch_45
    new-instance v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 184
    :sswitch_46
    new-instance v0, Lorg/apache/poi/hssf/record/IndexRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/IndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 185
    :sswitch_47
    invoke-static {p0}, Lorg/apache/poi/hssf/record/InterfaceEndRecord;->create(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    goto/16 :goto_0

    .line 186
    :sswitch_48
    new-instance v0, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 187
    :sswitch_49
    new-instance v0, Lorg/apache/poi/hssf/record/IterationRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/IterationRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 188
    :sswitch_4a
    new-instance v0, Lorg/apache/poi/hssf/record/LabelRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/LabelRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 189
    :sswitch_4b
    new-instance v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 190
    :sswitch_4c
    new-instance v0, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/LeftMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 191
    :sswitch_4d
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 192
    :sswitch_4e
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 193
    :sswitch_4f
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 194
    :sswitch_50
    new-instance v0, Lorg/apache/poi/hssf/record/MMSRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MMSRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 195
    :sswitch_51
    new-instance v0, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 196
    :sswitch_52
    new-instance v0, Lorg/apache/poi/hssf/record/MulBlankRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 197
    :sswitch_53
    new-instance v0, Lorg/apache/poi/hssf/record/MulRKRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/MulRKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 198
    :sswitch_54
    new-instance v0, Lorg/apache/poi/hssf/record/NameRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NameRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 199
    :sswitch_55
    new-instance v0, Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NameCommentRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 200
    :sswitch_56
    new-instance v0, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NoteRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 201
    :sswitch_57
    new-instance v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 202
    :sswitch_58
    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 203
    :sswitch_59
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 204
    :sswitch_5a
    new-instance v0, Lorg/apache/poi/hssf/record/PaletteRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PaletteRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 205
    :sswitch_5b
    new-instance v0, Lorg/apache/poi/hssf/record/PaneRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PaneRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 206
    :sswitch_5c
    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PasswordRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 207
    :sswitch_5d
    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRev4Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PasswordRev4Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 208
    :sswitch_5e
    new-instance v0, Lorg/apache/poi/hssf/record/chart/PlotAreaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/PlotAreaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 209
    :sswitch_5f
    new-instance v0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 210
    :sswitch_60
    new-instance v0, Lorg/apache/poi/hssf/record/PrecisionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrecisionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 211
    :sswitch_61
    new-instance v0, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 212
    :sswitch_62
    new-instance v0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 213
    :sswitch_63
    new-instance v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 214
    :sswitch_64
    new-instance v0, Lorg/apache/poi/hssf/record/ProtectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 215
    :sswitch_65
    new-instance v0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 216
    :sswitch_66
    new-instance v0, Lorg/apache/poi/hssf/record/RKRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 217
    :sswitch_67
    new-instance v0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 218
    :sswitch_68
    new-instance v0, Lorg/apache/poi/hssf/record/RefModeRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RefModeRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 219
    :sswitch_69
    new-instance v0, Lorg/apache/poi/hssf/record/RefreshAllRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RefreshAllRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 220
    :sswitch_6a
    new-instance v0, Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RightMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 221
    :sswitch_6b
    new-instance v0, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 222
    :sswitch_6c
    new-instance v0, Lorg/apache/poi/hssf/record/SCLRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SCLRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 223
    :sswitch_6d
    new-instance v0, Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SSTRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 224
    :sswitch_6e
    new-instance v0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SaveRecalcRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 225
    :sswitch_6f
    new-instance v0, Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SelectionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 226
    :sswitch_70
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 227
    :sswitch_71
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 228
    :sswitch_72
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 229
    :sswitch_73
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesTextRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 230
    :sswitch_74
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 231
    :sswitch_75
    new-instance v0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 232
    :sswitch_76
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 233
    :sswitch_77
    new-instance v0, Lorg/apache/poi/hssf/record/StringRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/StringRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 234
    :sswitch_78
    new-instance v0, Lorg/apache/poi/hssf/record/StyleRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/StyleRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 235
    :sswitch_79
    new-instance v0, Lorg/apache/poi/hssf/record/SupBookRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SupBookRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 236
    :sswitch_7a
    new-instance v0, Lorg/apache/poi/hssf/record/TabIdRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TabIdRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 237
    :sswitch_7b
    new-instance v0, Lorg/apache/poi/hssf/record/TableStylesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TableStylesRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 238
    :sswitch_7c
    new-instance v0, Lorg/apache/poi/hssf/record/TableRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TableRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 239
    :sswitch_7d
    new-instance v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 240
    :sswitch_7e
    new-instance v0, Lorg/apache/poi/hssf/record/chart/TextRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/TextRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 241
    :sswitch_7f
    new-instance v0, Lorg/apache/poi/hssf/record/chart/TickRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 242
    :sswitch_80
    new-instance v0, Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TopMarginRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 243
    :sswitch_81
    new-instance v0, Lorg/apache/poi/hssf/record/UncalcedRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/UncalcedRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 244
    :sswitch_82
    new-instance v0, Lorg/apache/poi/hssf/record/chart/UnitsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/UnitsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 245
    :sswitch_83
    new-instance v0, Lorg/apache/poi/hssf/record/UseSelFSRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 246
    :sswitch_84
    new-instance v0, Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/VCenterRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 247
    :sswitch_85
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 248
    :sswitch_86
    new-instance v0, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 249
    :sswitch_87
    new-instance v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 250
    :sswitch_88
    new-instance v0, Lorg/apache/poi/hssf/record/WindowOneRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 251
    :sswitch_89
    new-instance v0, Lorg/apache/poi/hssf/record/WindowProtectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WindowProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 252
    :sswitch_8a
    new-instance v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 253
    :sswitch_8b
    new-instance v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 254
    :sswitch_8c
    new-instance v0, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WriteProtectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 257
    :sswitch_8d
    new-instance v0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/CatLabRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 258
    :sswitch_8e
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 259
    :sswitch_8f
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartEndObjectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 260
    :sswitch_90
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 261
    :sswitch_91
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 262
    :sswitch_92
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 265
    :sswitch_93
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/StreamIDRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/StreamIDRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 266
    :sswitch_94
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 267
    :sswitch_95
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 268
    :sswitch_96
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 269
    :sswitch_97
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 270
    :sswitch_98
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/DataItemRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 271
    :sswitch_99
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ExtendedPivotTableViewFieldsRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_3d
        0xa -> :sswitch_2d
        0xc -> :sswitch_14
        0xd -> :sswitch_15
        0xe -> :sswitch_60
        0xf -> :sswitch_68
        0x10 -> :sswitch_26
        0x11 -> :sswitch_49
        0x12 -> :sswitch_64
        0x13 -> :sswitch_5c
        0x14 -> :sswitch_42
        0x15 -> :sswitch_3b
        0x17 -> :sswitch_31
        0x18 -> :sswitch_54
        0x19 -> :sswitch_89
        0x1a -> :sswitch_86
        0x1b -> :sswitch_44
        0x1c -> :sswitch_56
        0x1d -> :sswitch_6f
        0x22 -> :sswitch_21
        0x23 -> :sswitch_32
        0x26 -> :sswitch_4c
        0x27 -> :sswitch_6a
        0x28 -> :sswitch_80
        0x29 -> :sswitch_10
        0x2a -> :sswitch_62
        0x2b -> :sswitch_61
        0x2f -> :sswitch_35
        0x31 -> :sswitch_3a
        0x3c -> :sswitch_1b
        0x3d -> :sswitch_88
        0x40 -> :sswitch_a
        0x41 -> :sswitch_5b
        0x42 -> :sswitch_19
        0x51 -> :sswitch_22
        0x55 -> :sswitch_23
        0x5b -> :sswitch_36
        0x5c -> :sswitch_8b
        0x5d -> :sswitch_58
        0x5e -> :sswitch_81
        0x5f -> :sswitch_6e
        0x7d -> :sswitch_1a
        0x80 -> :sswitch_40
        0x81 -> :sswitch_87
        0x82 -> :sswitch_3f
        0x83 -> :sswitch_41
        0x84 -> :sswitch_84
        0x85 -> :sswitch_11
        0x86 -> :sswitch_8c
        0x8c -> :sswitch_1c
        0x8d -> :sswitch_43
        0x92 -> :sswitch_5a
        0x9c -> :sswitch_37
        0x9d -> :sswitch_8
        0xa0 -> :sswitch_6c
        0xa1 -> :sswitch_63
        0xb0 -> :sswitch_96
        0xb1 -> :sswitch_97
        0xb6 -> :sswitch_95
        0xbd -> :sswitch_53
        0xbe -> :sswitch_52
        0xc1 -> :sswitch_50
        0xc5 -> :sswitch_98
        0xd5 -> :sswitch_93
        0xd7 -> :sswitch_1d
        0xda -> :sswitch_e
        0xe0 -> :sswitch_30
        0xe1 -> :sswitch_48
        0xe2 -> :sswitch_47
        0xe3 -> :sswitch_94
        0xe5 -> :sswitch_51
        0xeb -> :sswitch_28
        0xec -> :sswitch_29
        0xed -> :sswitch_2a
        0xfc -> :sswitch_6d
        0xfd -> :sswitch_4b
        0xff -> :sswitch_2f
        0x100 -> :sswitch_99
        0x13d -> :sswitch_7a
        0x160 -> :sswitch_83
        0x161 -> :sswitch_1e
        0x1ae -> :sswitch_79
        0x1af -> :sswitch_65
        0x1b0 -> :sswitch_12
        0x1b1 -> :sswitch_13
        0x1b2 -> :sswitch_2c
        0x1b6 -> :sswitch_7d
        0x1b7 -> :sswitch_69
        0x1b8 -> :sswitch_45
        0x1bc -> :sswitch_5d
        0x1be -> :sswitch_2b
        0x1c1 -> :sswitch_67
        0x200 -> :sswitch_27
        0x201 -> :sswitch_d
        0x203 -> :sswitch_57
        0x204 -> :sswitch_4a
        0x205 -> :sswitch_f
        0x207 -> :sswitch_77
        0x208 -> :sswitch_6b
        0x20b -> :sswitch_46
        0x221 -> :sswitch_2
        0x225 -> :sswitch_25
        0x236 -> :sswitch_7c
        0x23e -> :sswitch_8a
        0x27e -> :sswitch_66
        0x293 -> :sswitch_78
        0x41e -> :sswitch_3c
        0x4bc -> :sswitch_75
        0x809 -> :sswitch_9
        0x850 -> :sswitch_90
        0x852 -> :sswitch_91
        0x853 -> :sswitch_8e
        0x854 -> :sswitch_92
        0x855 -> :sswitch_8f
        0x856 -> :sswitch_8d
        0x867 -> :sswitch_34
        0x868 -> :sswitch_33
        0x88e -> :sswitch_7b
        0x894 -> :sswitch_55
        0x1001 -> :sswitch_82
        0x1002 -> :sswitch_18
        0x1003 -> :sswitch_72
        0x1006 -> :sswitch_20
        0x1007 -> :sswitch_4e
        0x100a -> :sswitch_0
        0x100d -> :sswitch_73
        0x1014 -> :sswitch_17
        0x1015 -> :sswitch_4d
        0x1016 -> :sswitch_71
        0x1017 -> :sswitch_b
        0x101a -> :sswitch_1
        0x101d -> :sswitch_6
        0x101e -> :sswitch_7f
        0x101f -> :sswitch_85
        0x1020 -> :sswitch_16
        0x1021 -> :sswitch_3
        0x1024 -> :sswitch_24
        0x1025 -> :sswitch_7e
        0x1026 -> :sswitch_39
        0x1027 -> :sswitch_59
        0x1032 -> :sswitch_3e
        0x1033 -> :sswitch_c
        0x1034 -> :sswitch_2e
        0x1035 -> :sswitch_5e
        0x1041 -> :sswitch_5
        0x1044 -> :sswitch_76
        0x1045 -> :sswitch_74
        0x1046 -> :sswitch_7
        0x1051 -> :sswitch_4f
        0x1060 -> :sswitch_38
        0x1062 -> :sswitch_4
        0x1063 -> :sswitch_1f
        0x1064 -> :sswitch_5f
        0x1065 -> :sswitch_70
    .end sparse-switch
.end method

.method public static createRecords(Ljava/io/InputStream;Ljava/io/PrintStream;Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;Z)[Lorg/apache/poi/hssf/record/Record;
    .locals 11
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "ps"    # Ljava/io/PrintStream;
    .param p2, "recListener"    # Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;
    .param p3, "dumpInterpretedRecords"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordFormatException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v7, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v4, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v4, p0}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v4, "recStream":Lorg/apache/poi/hssf/record/RecordInputStream;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z
    :try_end_0
    .catch Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    .local v1, "hasNext":Z
    :goto_1
    if-nez v1, :cond_1

    .line 101
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v6, v8, [Lorg/apache/poi/hssf/record/Record;

    .line 102
    .local v6, "result":[Lorg/apache/poi/hssf/record/Record;
    invoke-interface {v7, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    return-object v6

    .line 69
    .end local v1    # "hasNext":Z
    .end local v6    # "result":[Lorg/apache/poi/hssf/record/Record;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;->printStackTrace()V

    .line 71
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Discarding "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes and continuing"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    .line 73
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v1

    .restart local v1    # "hasNext":Z
    goto :goto_1

    .line 78
    .end local v0    # "e":Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;
    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 79
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v8

    if-eqz v8, :cond_0

    .line 83
    if-eqz p3, :cond_4

    .line 84
    invoke-static {v4}, Lorg/apache/poi/hssf/dev/BiffViewer;->createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v5

    .line 85
    .local v5, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v8

    const/16 v9, 0x3c

    if-eq v8, v9, :cond_0

    .line 88
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    if-eqz p3, :cond_3

    .line 91
    invoke-virtual {p2}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->getRecentHeaders()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    .local v2, "header":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 94
    .end local v2    # "header":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/Record;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 99
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_3
    :goto_3
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    goto :goto_3
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

    .prologue
    .line 423
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 424
    .local v0, "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;

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

    .prologue
    .line 677
    and-int/lit16 v1, p0, 0xff

    int-to-char v0, v1

    .line 678
    .local v0, "ib":C
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7e

    if-le v0, v1, :cond_1

    .line 679
    :cond_0
    const/16 v0, 0x2e

    .line 681
    .end local v0    # "ib":C
    :cond_1
    return v0
.end method

.method static hexDumpAligned(Ljava/io/Writer;[BIIZ)V
    .locals 18
    .param p0, "w"    # Ljava/io/Writer;
    .param p1, "data"    # [B
    .param p2, "dumpLen"    # I
    .param p3, "globalOffset"    # I
    .param p4, "zeroAlignEachRecord"    # Z

    .prologue
    .line 591
    const/4 v13, 0x0

    .line 594
    .local v13, "baseDataOffset":I
    add-int v16, p3, v13

    .line 595
    .local v16, "globalStart":I
    add-int v1, p3, v13

    add-int v15, v1, p2

    .line 596
    .local v15, "globalEnd":I
    rem-int/lit8 v5, v16, 0x10

    .line 597
    .local v5, "startDelta":I
    rem-int/lit8 v6, v15, 0x10

    .line 598
    .local v6, "endDelta":I
    if-eqz p4, :cond_1

    .line 599
    sub-int/2addr v6, v5

    .line 600
    if-gez v6, :cond_0

    .line 601
    add-int/lit8 v6, v6, 0x10

    .line 603
    :cond_0
    const/4 v5, 0x0

    .line 607
    :cond_1
    if-eqz p4, :cond_3

    .line 608
    sub-int v1, v15, v6

    sub-int v2, v16, v5

    sub-int v14, v1, v2

    .line 609
    .local v14, "endLineAddr":I
    const/16 v17, 0x0

    .line 615
    .local v17, "startLineAddr":I
    :goto_0
    sub-int v4, v13, v5

    .line 616
    .local v4, "lineDataOffset":I
    move/from16 v3, v17

    .line 619
    .local v3, "lineAddr":I
    move/from16 v0, v17

    if-ne v0, v14, :cond_4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 620
    invoke-static/range {v1 .. v6}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpLine(Ljava/io/Writer;[BIIII)V

    .line 640
    :cond_2
    :goto_1
    return-void

    .line 611
    .end local v3    # "lineAddr":I
    .end local v4    # "lineDataOffset":I
    .end local v14    # "endLineAddr":I
    .end local v17    # "startLineAddr":I
    :cond_3
    sub-int v17, v16, v5

    .line 612
    .restart local v17    # "startLineAddr":I
    sub-int v14, v15, v6

    .restart local v14    # "endLineAddr":I
    goto :goto_0

    .line 623
    .restart local v3    # "lineAddr":I
    .restart local v4    # "lineDataOffset":I
    :cond_4
    const/16 v12, 0x10

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v7 .. v12}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpLine(Ljava/io/Writer;[BIIII)V

    .line 627
    :goto_2
    add-int/lit8 v3, v3, 0x10

    .line 628
    add-int/lit8 v4, v4, 0x10

    .line 629
    if-lt v3, v14, :cond_5

    .line 637
    if-eqz v6, :cond_2

    .line 638
    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v3

    move v10, v4

    move v12, v6

    invoke-static/range {v7 .. v12}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpLine(Ljava/io/Writer;[BIIII)V

    goto :goto_1

    .line 632
    :cond_5
    const/4 v11, 0x0

    const/16 v12, 0x10

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v3

    move v10, v4

    invoke-static/range {v7 .. v12}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpLine(Ljava/io/Writer;[BIIII)V

    goto :goto_2
.end method

.method private static hexDumpLine(Ljava/io/Writer;[BIIII)V
    .locals 5
    .param p0, "w"    # Ljava/io/Writer;
    .param p1, "data"    # [B
    .param p2, "lineStartAddress"    # I
    .param p3, "lineDataOffset"    # I
    .param p4, "startDelta"    # I
    .param p5, "endDelta"    # I

    .prologue
    const/16 v4, 0x10

    .line 643
    if-lt p4, p5, :cond_0

    .line 644
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad start/end delta"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 647
    :cond_0
    const/16 v2, 0x8

    :try_start_0
    invoke-static {p0, p2, v2}, Lorg/apache/poi/hssf/dev/BiffViewer;->writeHex(Ljava/io/Writer;II)V

    .line 648
    sget-object v2, Lorg/apache/poi/hssf/dev/BiffViewer;->COLUMN_SEPARATOR:[C

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write([C)V

    .line 650
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 651
    if-lez v1, :cond_1

    .line 652
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 654
    :cond_1
    if-lt v1, p4, :cond_2

    if-ge v1, p5, :cond_2

    .line 655
    add-int v2, p3, v1

    aget-byte v2, p1, v2

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lorg/apache/poi/hssf/dev/BiffViewer;->writeHex(Ljava/io/Writer;II)V

    .line 650
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    :cond_2
    const-string v2, "  "

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 671
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 660
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i":I
    :cond_3
    :try_start_1
    sget-object v2, Lorg/apache/poi/hssf/dev/BiffViewer;->COLUMN_SEPARATOR:[C

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write([C)V

    .line 663
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_5

    .line 664
    if-lt v1, p4, :cond_4

    if-ge v1, p5, :cond_4

    .line 665
    add-int v2, p3, v1

    aget-byte v2, p1, v2

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPrintableChar(B)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    .line 663
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 667
    :cond_4
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 670
    :cond_5
    sget-object v2, Lorg/apache/poi/hssf/dev/BiffViewer;->NEW_LINE_CHARS:[C

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write([C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 674
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 384
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->parse([Ljava/lang/String;)Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    :try_end_0
    .catch Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 393
    .local v6, "cmdArgs":Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->shouldOutputToFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ".out"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 395
    .local v9, "os":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v9}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 400
    .end local v9    # "os":Ljava/io/OutputStream;
    .local v0, "ps":Ljava/io/PrintStream;
    :goto_0
    invoke-virtual {v6}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPOIFSInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    .line 402
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v6}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->shouldOutputRawHexOnly()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 403
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v10

    .line 404
    .local v10, "size":I
    new-array v7, v10, [B

    .line 406
    .local v7, "data":[B
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    .line 407
    const-wide/16 v12, 0x0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v11, 0x0

    invoke-static {v7, v12, v13, v5, v11}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;I)V

    .line 415
    .end local v7    # "data":[B
    .end local v10    # "size":I
    :goto_1
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 419
    .end local v0    # "ps":Ljava/io/PrintStream;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v6    # "cmdArgs":Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    :goto_2
    return-void

    .line 385
    :catch_0
    move-exception v8

    .line 386
    .local v8, "e":Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;
    invoke-virtual {v8}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;->printStackTrace()V

    goto :goto_2

    .line 397
    .end local v8    # "e":Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;
    .restart local v6    # "cmdArgs":Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    :cond_0
    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .restart local v0    # "ps":Ljava/io/PrintStream;
    goto :goto_0

    .line 409
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v6}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->shouldDumpRecordInterpretations()Z

    move-result v2

    .line 410
    .local v2, "dumpInterpretedRecords":Z
    invoke-virtual {v6}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->shouldDumpBiffHex()Z

    move-result v3

    .line 411
    .local v3, "dumpHex":Z
    move v4, v2

    .line 412
    .local v4, "zeroAlignHexDump":Z
    invoke-virtual {v6}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->suppressHeader()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/hssf/dev/BiffViewer;->runBiffViewer(Ljava/io/PrintStream;Ljava/io/InputStream;ZZZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 416
    .end local v0    # "ps":Ljava/io/PrintStream;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "dumpInterpretedRecords":Z
    .end local v3    # "dumpHex":Z
    .end local v4    # "zeroAlignHexDump":Z
    :catch_1
    move-exception v8

    .line 417
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected static runBiffViewer(Ljava/io/PrintStream;Ljava/io/InputStream;ZZZZ)V
    .locals 3
    .param p0, "ps"    # Ljava/io/PrintStream;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "dumpInterpretedRecords"    # Z
    .param p3, "dumpHex"    # Z
    .param p4, "zeroAlignHexDump"    # Z
    .param p5, "suppressHeader"    # Z

    .prologue
    .line 431
    new-instance v1, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;

    if-eqz p3, :cond_0

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    invoke-direct {v1, v2, p4, p5}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;-><init>(Ljava/io/Writer;ZZ)V

    .line 432
    .local v1, "recListener":Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;
    new-instance v0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;)V

    .line 433
    .end local p1    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0, p0, v1, p2}, Lorg/apache/poi/hssf/dev/BiffViewer;->createRecords(Ljava/io/InputStream;Ljava/io/PrintStream;Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;Z)[Lorg/apache/poi/hssf/record/Record;

    .line 434
    return-void

    .line 431
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "recListener":Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static writeHex(Ljava/io/Writer;II)V
    .locals 5
    .param p0, "w"    # Ljava/io/Writer;
    .param p1, "value"    # I
    .param p2, "nDigits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    new-array v1, p2, [C

    .line 686
    .local v1, "buf":[C
    move v0, p1

    .line 687
    .local v0, "acc":I
    add-int/lit8 v3, p2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 688
    and-int/lit8 v2, v0, 0xf

    .line 689
    .local v2, "digit":I
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v2, 0x30

    :goto_1
    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 690
    shr-int/lit8 v0, v0, 0x4

    .line 687
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 689
    :cond_0
    add-int/lit8 v4, v2, 0x41

    add-int/lit8 v4, v4, -0xa

    goto :goto_1

    .line 692
    .end local v2    # "digit":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write([C)V

    .line 693
    return-void
.end method
