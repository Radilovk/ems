.class public final Lorg/apache/poi/hssf/record/chart/TickRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "TickRecord.java"


# static fields
.field private static final autoTextBackground:Lorg/apache/poi/util/BitField;

.field private static final autoTextColor:Lorg/apache/poi/util/BitField;

.field private static final autorotate:Lorg/apache/poi/util/BitField;

.field private static final rotation:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x101es


# instance fields
.field private field_10_options:S

.field private field_11_tickColor:S

.field private field_12_zero5:S

.field private field_1_majorTickType:B

.field private field_2_minorTickType:B

.field private field_3_labelPosition:B

.field private field_4_background:B

.field private field_5_labelColorRgb:I

.field private field_6_zero1:I

.field private field_7_zero2:I

.field private field_8_zero3:I

.field private field_9_zero4:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextColor:Lorg/apache/poi/util/BitField;

    .line 36
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextBackground:Lorg/apache/poi/util/BitField;

    .line 37
    const/16 v0, 0x1c

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->rotation:Lorg/apache/poi/util/BitField;

    .line 38
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autorotate:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 60
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_1_majorTickType:B

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_2_minorTickType:B

    .line 64
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_3_labelPosition:B

    .line 65
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_4_background:B

    .line 66
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_5_labelColorRgb:I

    .line 67
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_6_zero1:I

    .line 68
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_7_zero2:I

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_8_zero3:I

    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_9_zero4:I

    .line 72
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    .line 73
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_11_tickColor:S

    .line 74
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_12_zero5:S

    .line 75
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 156
    new-instance v0, Lorg/apache/poi/hssf/record/chart/TickRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/TickRecord;-><init>()V

    .line 158
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/TickRecord;
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_1_majorTickType:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_1_majorTickType:B

    .line 159
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_2_minorTickType:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_2_minorTickType:B

    .line 160
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_3_labelPosition:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_3_labelPosition:B

    .line 161
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_4_background:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_4_background:B

    .line 162
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_5_labelColorRgb:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_5_labelColorRgb:I

    .line 163
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_6_zero1:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_6_zero1:I

    .line 164
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_7_zero2:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_7_zero2:I

    .line 165
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_8_zero3:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_8_zero3:I

    .line 166
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_9_zero4:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_9_zero4:I

    .line 167
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    .line 168
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_11_tickColor:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_11_tickColor:S

    .line 169
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_12_zero5:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_12_zero5:S

    .line 170
    return-object v0
.end method

.method public getBackground()B
    .locals 1

    .line 229
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_4_background:B

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 147
    const/16 v0, 0x1e

    return v0
.end method

.method public getLabelColorRgb()I
    .locals 1

    .line 245
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_5_labelColorRgb:I

    return v0
.end method

.method public getLabelPosition()B
    .locals 1

    .line 213
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_3_labelPosition:B

    return v0
.end method

.method public getMajorTickType()B
    .locals 1

    .line 181
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_1_majorTickType:B

    return v0
.end method

.method public getMinorTickType()B
    .locals 1

    .line 197
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_2_minorTickType:B

    return v0
.end method

.method public getOptions()S
    .locals 1

    .line 293
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    return v0
.end method

.method public getRotation()S
    .locals 2

    .line 387
    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->rotation:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 152
    const/16 v0, 0x101e

    return v0
.end method

.method public getTickColor()S
    .locals 1

    .line 309
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_11_tickColor:S

    return v0
.end method

.method public getZero1()I
    .locals 1

    .line 261
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_6_zero1:I

    return v0
.end method

.method public getZero2()I
    .locals 1

    .line 277
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_7_zero2:I

    return v0
.end method

.method public getZero3()S
    .locals 1

    .line 325
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_12_zero5:S

    return v0
.end method

.method public isAutoTextBackground()Z
    .locals 2

    .line 369
    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextBackground:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutoTextColor()Z
    .locals 2

    .line 351
    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextColor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutorotate()Z
    .locals 2

    .line 405
    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autorotate:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 132
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_1_majorTickType:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 133
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_2_minorTickType:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 134
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_3_labelPosition:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 135
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_4_background:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 136
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_5_labelColorRgb:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 137
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_6_zero1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 138
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_7_zero2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 139
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_8_zero3:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 140
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_9_zero4:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 141
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 142
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_11_tickColor:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 143
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_12_zero5:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 144
    return-void
.end method

.method public setAutoTextBackground(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 360
    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextBackground:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    .line 361
    return-void
.end method

.method public setAutoTextColor(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 342
    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autoTextColor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    .line 343
    return-void
.end method

.method public setAutorotate(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 396
    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->autorotate:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    .line 397
    return-void
.end method

.method public setBackground(B)V
    .locals 0
    .param p1, "field_4_background"    # B

    .line 237
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_4_background:B

    .line 238
    return-void
.end method

.method public setLabelColorRgb(I)V
    .locals 0
    .param p1, "field_5_labelColorRgb"    # I

    .line 253
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_5_labelColorRgb:I

    .line 254
    return-void
.end method

.method public setLabelPosition(B)V
    .locals 0
    .param p1, "field_3_labelPosition"    # B

    .line 221
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_3_labelPosition:B

    .line 222
    return-void
.end method

.method public setMajorTickType(B)V
    .locals 0
    .param p1, "field_1_majorTickType"    # B

    .line 189
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_1_majorTickType:B

    .line 190
    return-void
.end method

.method public setMinorTickType(B)V
    .locals 0
    .param p1, "field_2_minorTickType"    # B

    .line 205
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_2_minorTickType:B

    .line 206
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "field_10_options"    # S

    .line 301
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    .line 302
    return-void
.end method

.method public setRotation(S)V
    .locals 2
    .param p1, "value"    # S

    .line 378
    sget-object v0, Lorg/apache/poi/hssf/record/chart/TickRecord;->rotation:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_10_options:S

    .line 379
    return-void
.end method

.method public setTickColor(S)V
    .locals 0
    .param p1, "field_11_tickColor"    # S

    .line 317
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_11_tickColor:S

    .line 318
    return-void
.end method

.method public setZero1(I)V
    .locals 0
    .param p1, "field_6_zero1"    # I

    .line 269
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_6_zero1:I

    .line 270
    return-void
.end method

.method public setZero2(I)V
    .locals 0
    .param p1, "field_7_zero2"    # I

    .line 285
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_7_zero2:I

    .line 286
    return-void
.end method

.method public setZero3(S)V
    .locals 0
    .param p1, "field_12_zero3"    # S

    .line 333
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/TickRecord;->field_12_zero5:S

    .line 334
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[TICK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v1, "    .majorTickType        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getMajorTickType()B

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getMajorTickType()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v5, "    .minorTickType        = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getMinorTickType()B

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getMinorTickType()B

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v5, "    .labelPosition        = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getLabelPosition()B

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getLabelPosition()B

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v5, "    .background           = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getBackground()B

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getBackground()B

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v5, "    .labelColorRgb        = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getLabelColorRgb()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getLabelColorRgb()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v5, "    .zero1                = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getZero1()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getZero1()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v5, "    .zero2                = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getZero2()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getZero2()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v5, "    .options              = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getOptions()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getOptions()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v5, "         .autoTextColor            = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->isAutoTextColor()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    const-string v6, "         .autoTextBackground       = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->isAutoTextBackground()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    const-string v6, "         .rotation                 = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getRotation()S

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    const-string v6, "         .autorotate               = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->isAutorotate()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    const-string v5, "    .tickColor            = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getTickColor()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getTickColor()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v5, "    .zero3                = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getZero3()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/TickRecord;->getZero3()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, "[/TICK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
