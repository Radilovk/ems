.class public final Lorg/apache/poi/hssf/record/chart/LineFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "LineFormatRecord.java"


# static fields
.field public static final LINE_PATTERN_DARK_GRAY_PATTERN:S = 0x6s

.field public static final LINE_PATTERN_DASH:S = 0x1s

.field public static final LINE_PATTERN_DASH_DOT:S = 0x3s

.field public static final LINE_PATTERN_DASH_DOT_DOT:S = 0x4s

.field public static final LINE_PATTERN_DOT:S = 0x2s

.field public static final LINE_PATTERN_LIGHT_GRAY_PATTERN:S = 0x8s

.field public static final LINE_PATTERN_MEDIUM_GRAY_PATTERN:S = 0x7s

.field public static final LINE_PATTERN_NONE:S = 0x5s

.field public static final LINE_PATTERN_SOLID:S = 0x0s

.field public static final WEIGHT_HAIRLINE:S = -0x1s

.field public static final WEIGHT_MEDIUM:S = 0x1s

.field public static final WEIGHT_NARROW:S = 0x0s

.field public static final WEIGHT_WIDE:S = 0x2s

.field private static final auto:Lorg/apache/poi/util/BitField;

.field private static final drawTicks:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1007s

.field private static final unknown:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_lineColor:I

.field private field_2_linePattern:S

.field private field_3_weight:S

.field private field_4_format:S

.field private field_5_colourPaletteIndex:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->auto:Lorg/apache/poi/util/BitField;

    .line 36
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->drawTicks:Lorg/apache/poi/util/BitField;

    .line 37
    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->unknown:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 65
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 66
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    .line 67
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    .line 68
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    .line 72
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 125
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;-><init>()V

    .line 127
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/LineFormatRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    .line 128
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    .line 129
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    .line 130
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    .line 131
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    .line 132
    return-object v0
.end method

.method public getColourPaletteIndex()S
    .locals 1

    .line 243
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 116
    const/16 v0, 0xc

    return v0
.end method

.method public getFormat()S
    .locals 1

    .line 227
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    return v0
.end method

.method public getLineColor()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    return v0
.end method

.method public getLinePattern()S
    .locals 1

    .line 170
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 121
    const/16 v0, 0x1007

    return v0
.end method

.method public getWeight()S
    .locals 1

    .line 204
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    return v0
.end method

.method public isAuto()Z
    .locals 2

    .line 269
    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->auto:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDrawTicks()Z
    .locals 2

    .line 287
    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->drawTicks:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isUnknown()Z
    .locals 2

    .line 305
    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->unknown:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 108
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 109
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 110
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 111
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 112
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 113
    return-void
.end method

.method public setAuto(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 260
    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->auto:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    .line 261
    return-void
.end method

.method public setColourPaletteIndex(S)V
    .locals 0
    .param p1, "field_5_colourPaletteIndex"    # S

    .line 251
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    .line 252
    return-void
.end method

.method public setDrawTicks(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 278
    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->drawTicks:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    .line 279
    return-void
.end method

.method public setFormat(S)V
    .locals 0
    .param p1, "field_4_format"    # S

    .line 235
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    .line 236
    return-void
.end method

.method public setLineColor(I)V
    .locals 0
    .param p1, "field_1_lineColor"    # I

    .line 151
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    .line 152
    return-void
.end method

.method public setLinePattern(S)V
    .locals 0
    .param p1, "field_2_linePattern"    # S

    .line 190
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    .line 191
    return-void
.end method

.method public setUnknown(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 296
    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->unknown:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    .line 297
    return-void
.end method

.method public setWeight(S)V
    .locals 0
    .param p1, "field_3_weight"    # S

    .line 219
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    .line 220
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[LINEFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, "    .lineColor            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getLineColor()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getLineColor()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v5, "    .linePattern          = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getLinePattern()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getLinePattern()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v5, "    .weight               = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getWeight()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getWeight()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v5, "    .format               = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getFormat()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getFormat()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v5, "         .auto                     = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->isAuto()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    const-string v6, "         .drawTicks                = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->isDrawTicks()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 97
    const-string v6, "         .unknown                  = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->isUnknown()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    const-string v5, "    .colourPaletteIndex   = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getColourPaletteIndex()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getColourPaletteIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, "[/LINEFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
