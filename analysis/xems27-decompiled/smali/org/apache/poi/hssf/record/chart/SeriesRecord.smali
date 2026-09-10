.class public final Lorg/apache/poi/hssf/record/chart/SeriesRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SeriesRecord.java"


# static fields
.field public static final BUBBLE_SERIES_TYPE_DATES:S = 0x0s

.field public static final BUBBLE_SERIES_TYPE_NUMERIC:S = 0x1s

.field public static final BUBBLE_SERIES_TYPE_SEQUENCE:S = 0x2s

.field public static final BUBBLE_SERIES_TYPE_TEXT:S = 0x3s

.field public static final CATEGORY_DATA_TYPE_DATES:S = 0x0s

.field public static final CATEGORY_DATA_TYPE_NUMERIC:S = 0x1s

.field public static final CATEGORY_DATA_TYPE_SEQUENCE:S = 0x2s

.field public static final CATEGORY_DATA_TYPE_TEXT:S = 0x3s

.field public static final VALUES_DATA_TYPE_DATES:S = 0x0s

.field public static final VALUES_DATA_TYPE_NUMERIC:S = 0x1s

.field public static final VALUES_DATA_TYPE_SEQUENCE:S = 0x2s

.field public static final VALUES_DATA_TYPE_TEXT:S = 0x3s

.field public static final sid:S = 0x1003s


# instance fields
.field private field_1_categoryDataType:S

.field private field_2_valuesDataType:S

.field private field_3_numCategories:S

.field private field_4_numValues:S

.field private field_5_bubbleSeriesType:S

.field private field_6_numBubbleValues:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 58
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_1_categoryDataType:S

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_2_valuesDataType:S

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_3_numCategories:S

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_4_numValues:S

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_5_bubbleSeriesType:S

    .line 64
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_6_numBubbleValues:S

    .line 66
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 121
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;-><init>()V

    .line 123
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/SeriesRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_1_categoryDataType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_1_categoryDataType:S

    .line 124
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_2_valuesDataType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_2_valuesDataType:S

    .line 125
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_3_numCategories:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_3_numCategories:S

    .line 126
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_4_numValues:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_4_numValues:S

    .line 127
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_5_bubbleSeriesType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_5_bubbleSeriesType:S

    .line 128
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_6_numBubbleValues:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_6_numBubbleValues:S

    .line 129
    return-object v0
.end method

.method public getBubbleSeriesType()S
    .locals 1

    .line 236
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_5_bubbleSeriesType:S

    return v0
.end method

.method public getCategoryDataType()S
    .locals 1

    .line 146
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_1_categoryDataType:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 112
    const/16 v0, 0xc

    return v0
.end method

.method public getNumBubbleValues()S
    .locals 1

    .line 259
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_6_numBubbleValues:S

    return v0
.end method

.method public getNumCategories()S
    .locals 1

    .line 198
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_3_numCategories:S

    return v0
.end method

.method public getNumValues()S
    .locals 1

    .line 214
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_4_numValues:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 117
    const/16 v0, 0x1003

    return v0
.end method

.method public getValuesDataType()S
    .locals 1

    .line 175
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_2_valuesDataType:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 103
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_1_categoryDataType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 104
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_2_valuesDataType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 105
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_3_numCategories:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 106
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_4_numValues:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 107
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_5_bubbleSeriesType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 108
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_6_numBubbleValues:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 109
    return-void
.end method

.method public setBubbleSeriesType(S)V
    .locals 0
    .param p1, "field_5_bubbleSeriesType"    # S

    .line 251
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_5_bubbleSeriesType:S

    .line 252
    return-void
.end method

.method public setCategoryDataType(S)V
    .locals 0
    .param p1, "field_1_categoryDataType"    # S

    .line 161
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_1_categoryDataType:S

    .line 162
    return-void
.end method

.method public setNumBubbleValues(S)V
    .locals 0
    .param p1, "field_6_numBubbleValues"    # S

    .line 267
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_6_numBubbleValues:S

    .line 268
    return-void
.end method

.method public setNumCategories(S)V
    .locals 0
    .param p1, "field_3_numCategories"    # S

    .line 206
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_3_numCategories:S

    .line 207
    return-void
.end method

.method public setNumValues(S)V
    .locals 0
    .param p1, "field_4_numValues"    # S

    .line 222
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_4_numValues:S

    .line 223
    return-void
.end method

.method public setValuesDataType(S)V
    .locals 0
    .param p1, "field_2_valuesDataType"    # S

    .line 190
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_2_valuesDataType:S

    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SERIES]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "    .categoryDataType     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getCategoryDataType()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getCategoryDataType()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v5, "    .valuesDataType       = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getValuesDataType()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getValuesDataType()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v5, "    .numCategories        = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getNumCategories()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getNumCategories()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v5, "    .numValues            = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getNumValues()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getNumValues()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v5, "    .bubbleSeriesType     = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getBubbleSeriesType()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getBubbleSeriesType()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v5, "    .numBubbleValues      = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getNumBubbleValues()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getNumBubbleValues()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v1, "[/SERIES]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
