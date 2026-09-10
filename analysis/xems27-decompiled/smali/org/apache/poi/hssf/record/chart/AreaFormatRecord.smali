.class public final Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "AreaFormatRecord.java"


# static fields
.field private static final automatic:Lorg/apache/poi/util/BitField;

.field private static final invert:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x100as


# instance fields
.field private field_1_foregroundColor:I

.field private field_2_backgroundColor:I

.field private field_3_pattern:S

.field private field_4_formatFlags:S

.field private field_5_forecolorIndex:S

.field private field_6_backcolorIndex:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->automatic:Lorg/apache/poi/util/BitField;

    .line 36
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->invert:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 52
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    .line 55
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    .line 60
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 117
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;-><init>()V

    .line 119
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    .line 120
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    .line 121
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    .line 122
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    .line 123
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    .line 124
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    .line 125
    return-object v0
.end method

.method public getBackcolorIndex()S
    .locals 1

    .line 216
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 152
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 108
    const/16 v0, 0x10

    return v0
.end method

.method public getForecolorIndex()S
    .locals 1

    .line 200
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    return v0
.end method

.method public getForegroundColor()I
    .locals 1

    .line 136
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    return v0
.end method

.method public getFormatFlags()S
    .locals 1

    .line 184
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    return v0
.end method

.method public getPattern()S
    .locals 1

    .line 168
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 113
    const/16 v0, 0x100a

    return v0
.end method

.method public isAutomatic()Z
    .locals 2

    .line 242
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->automatic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isInvert()Z
    .locals 2

    .line 260
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->invert:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 99
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 100
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 101
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 102
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 103
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 104
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 105
    return-void
.end method

.method public setAutomatic(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 233
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->automatic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    .line 234
    return-void
.end method

.method public setBackcolorIndex(S)V
    .locals 0
    .param p1, "field_6_backcolorIndex"    # S

    .line 224
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    .line 225
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "field_2_backgroundColor"    # I

    .line 160
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    .line 161
    return-void
.end method

.method public setForecolorIndex(S)V
    .locals 0
    .param p1, "field_5_forecolorIndex"    # S

    .line 208
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    .line 209
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0
    .param p1, "field_1_foregroundColor"    # I

    .line 144
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    .line 145
    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0
    .param p1, "field_4_formatFlags"    # S

    .line 192
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    .line 193
    return-void
.end method

.method public setInvert(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 251
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->invert:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    .line 252
    return-void
.end method

.method public setPattern(S)V
    .locals 0
    .param p1, "field_3_pattern"    # S

    .line 176
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[AREAFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, "    .foregroundColor      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getForegroundColor()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getForegroundColor()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v5, "    .backgroundColor      = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getBackgroundColor()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getBackgroundColor()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v5, "    .pattern              = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getPattern()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getPattern()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v5, "    .formatFlags          = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getFormatFlags()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getFormatFlags()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v5, "         .automatic                = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->isAutomatic()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    const-string v6, "         .invert                   = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->isInvert()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    const-string v5, "    .forecolorIndex       = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getForecolorIndex()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getForecolorIndex()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v5, "    .backcolorIndex       = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getBackcolorIndex()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getBackcolorIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, "[/AREAFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
