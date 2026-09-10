.class public final Lorg/apache/poi/hssf/record/chart/FontBasisRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "FontBasisRecord.java"


# static fields
.field public static final sid:S = 0x1060s


# instance fields
.field private field_1_xBasis:S

.field private field_2_yBasis:S

.field private field_3_heightBasis:S

.field private field_4_scale:S

.field private field_5_indexToFontTable:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    .line 51
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 101
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;-><init>()V

    .line 103
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/FontBasisRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    .line 104
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    .line 105
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    .line 106
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    .line 107
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    .line 108
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 92
    const/16 v0, 0xa

    return v0
.end method

.method public getHeightBasis()S
    .locals 1

    .line 151
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    return v0
.end method

.method public getIndexToFontTable()S
    .locals 1

    .line 183
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    return v0
.end method

.method public getScale()S
    .locals 1

    .line 167
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 97
    const/16 v0, 0x1060

    return v0
.end method

.method public getXBasis()S
    .locals 1

    .line 119
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    return v0
.end method

.method public getYBasis()S
    .locals 1

    .line 135
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 84
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 85
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 86
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 87
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 88
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 89
    return-void
.end method

.method public setHeightBasis(S)V
    .locals 0
    .param p1, "field_3_heightBasis"    # S

    .line 159
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    .line 160
    return-void
.end method

.method public setIndexToFontTable(S)V
    .locals 0
    .param p1, "field_5_indexToFontTable"    # S

    .line 191
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    .line 192
    return-void
.end method

.method public setScale(S)V
    .locals 0
    .param p1, "field_4_scale"    # S

    .line 175
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    .line 176
    return-void
.end method

.method public setXBasis(S)V
    .locals 0
    .param p1, "field_1_xBasis"    # S

    .line 127
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    .line 128
    return-void
.end method

.method public setYBasis(S)V
    .locals 0
    .param p1, "field_2_yBasis"    # S

    .line 143
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[FBI]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "    .xBasis               = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getXBasis()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getXBasis()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v5, "    .yBasis               = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getYBasis()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getYBasis()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v5, "    .heightBasis          = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getHeightBasis()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getHeightBasis()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v5, "    .scale                = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getScale()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getScale()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v5, "    .indexToFontTable     = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getIndexToFontTable()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getIndexToFontTable()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, "[/FBI]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
