.class public final Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CategorySeriesAxisRecord.java"


# static fields
.field private static final crossesFarRight:Lorg/apache/poi/util/BitField;

.field private static final reversed:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1020s

.field private static final valueAxisCrossing:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_crossingPoint:S

.field private field_2_labelFrequency:S

.field private field_3_tickMarkFrequency:S

.field private field_4_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->valueAxisCrossing:Lorg/apache/poi/util/BitField;

    .line 36
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->crossesFarRight:Lorg/apache/poi/util/BitField;

    .line 37
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->reversed:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    .line 55
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    .line 56
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;-><init>()V

    .line 106
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    .line 107
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    .line 108
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    .line 109
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    .line 110
    return-object v0
.end method

.method public getCrossingPoint()S
    .locals 1

    .prologue
    .line 121
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x8

    return v0
.end method

.method public getLabelFrequency()S
    .locals 1

    .prologue
    .line 137
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    return v0
.end method

.method public getOptions()S
    .locals 1

    .prologue
    .line 169
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x1020

    return v0
.end method

.method public getTickMarkFrequency()S
    .locals 1

    .prologue
    .line 153
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    return v0
.end method

.method public isCrossesFarRight()Z
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->crossesFarRight:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isReversed()Z
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->reversed:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isValueAxisCrossing()Z
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->valueAxisCrossing:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 88
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 89
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 90
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 91
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 92
    return-void
.end method

.method public setCrossesFarRight(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 204
    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->crossesFarRight:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    .line 205
    return-void
.end method

.method public setCrossingPoint(S)V
    .locals 0
    .param p1, "field_1_crossingPoint"    # S

    .prologue
    .line 129
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    .line 130
    return-void
.end method

.method public setLabelFrequency(S)V
    .locals 0
    .param p1, "field_2_labelFrequency"    # S

    .prologue
    .line 145
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    .line 146
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "field_4_options"    # S

    .prologue
    .line 177
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    .line 178
    return-void
.end method

.method public setReversed(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 222
    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->reversed:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    .line 223
    return-void
.end method

.method public setTickMarkFrequency(S)V
    .locals 0
    .param p1, "field_3_tickMarkFrequency"    # S

    .prologue
    .line 161
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    .line 162
    return-void
.end method

.method public setValueAxisCrossing(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 186
    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->valueAxisCrossing:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    .line 187
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[CATSERRANGE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, "    .crossingPoint        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getCrossingPoint()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getCrossingPoint()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, "    .labelFrequency       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getLabelFrequency()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getLabelFrequency()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "    .tickMarkFrequency    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getTickMarkFrequency()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getTickMarkFrequency()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "    .options              = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getOptions()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getOptions()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, "         .valueAxisCrossing        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->isValueAxisCrossing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, "         .crossesFarRight          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->isCrossesFarRight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, "         .reversed                 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->isReversed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, "[/CATSERRANGE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
