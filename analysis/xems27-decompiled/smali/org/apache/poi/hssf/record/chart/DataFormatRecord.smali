.class public final Lorg/apache/poi/hssf/record/chart/DataFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DataFormatRecord.java"


# static fields
.field public static final sid:S = 0x1006s

.field private static final useExcel4Colors:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_pointNumber:S

.field private field_2_seriesIndex:S

.field private field_3_seriesNumber:S

.field private field_4_formatFlags:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->useExcel4Colors:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 49
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 100
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;-><init>()V

    .line 102
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/DataFormatRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    .line 103
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    .line 104
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    .line 105
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    .line 106
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 91
    const/16 v0, 0x8

    return v0
.end method

.method public getFormatFlags()S
    .locals 1

    .line 165
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    return v0
.end method

.method public getPointNumber()S
    .locals 1

    .line 117
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    return v0
.end method

.method public getSeriesIndex()S
    .locals 1

    .line 133
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    return v0
.end method

.method public getSeriesNumber()S
    .locals 1

    .line 149
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 96
    const/16 v0, 0x1006

    return v0
.end method

.method public isUseExcel4Colors()Z
    .locals 2

    .line 191
    sget-object v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->useExcel4Colors:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 84
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 85
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 86
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 87
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 88
    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0
    .param p1, "field_4_formatFlags"    # S

    .line 173
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    .line 174
    return-void
.end method

.method public setPointNumber(S)V
    .locals 0
    .param p1, "field_1_pointNumber"    # S

    .line 125
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    .line 126
    return-void
.end method

.method public setSeriesIndex(S)V
    .locals 0
    .param p1, "field_2_seriesIndex"    # S

    .line 141
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    .line 142
    return-void
.end method

.method public setSeriesNumber(S)V
    .locals 0
    .param p1, "field_3_seriesNumber"    # S

    .line 157
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    .line 158
    return-void
.end method

.method public setUseExcel4Colors(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 182
    sget-object v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->useExcel4Colors:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[DATAFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, "    .pointNumber          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getPointNumber()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getPointNumber()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v5, "    .seriesIndex          = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesIndex()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesIndex()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v5, "    .seriesNumber         = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesNumber()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesNumber()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v5, "    .formatFlags          = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getFormatFlags()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getFormatFlags()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "         .useExcel4Colors          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->isUseExcel4Colors()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, "[/DATAFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
