.class public final Lorg/apache/poi/hssf/record/chart/AxisRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "AxisRecord.java"


# static fields
.field public static final AXIS_TYPE_CATEGORY_OR_X_AXIS:S = 0x0s

.field public static final AXIS_TYPE_SERIES_AXIS:S = 0x2s

.field public static final AXIS_TYPE_VALUE_AXIS:S = 0x1s

.field public static final sid:S = 0x101ds


# instance fields
.field private field_1_axisType:S

.field private field_2_reserved1:I

.field private field_3_reserved2:I

.field private field_4_reserved3:I

.field private field_5_reserved4:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;-><init>()V

    .line 106
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/AxisRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    .line 107
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    .line 108
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    .line 109
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    .line 110
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    .line 111
    return-object v0
.end method

.method public getAxisType()S
    .locals 1

    .prologue
    .line 127
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x12

    return v0
.end method

.method public getReserved1()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    return v0
.end method

.method public getReserved2()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    return v0
.end method

.method public getReserved3()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    return v0
.end method

.method public getReserved4()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x101d

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 87
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 88
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 89
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 90
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 91
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 92
    return-void
.end method

.method public setAxisType(S)V
    .locals 0
    .param p1, "field_1_axisType"    # S

    .prologue
    .line 141
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    .line 142
    return-void
.end method

.method public setReserved1(I)V
    .locals 0
    .param p1, "field_2_reserved1"    # I

    .prologue
    .line 157
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    .line 158
    return-void
.end method

.method public setReserved2(I)V
    .locals 0
    .param p1, "field_3_reserved2"    # I

    .prologue
    .line 173
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    .line 174
    return-void
.end method

.method public setReserved3(I)V
    .locals 0
    .param p1, "field_4_reserved3"    # I

    .prologue
    .line 189
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    .line 190
    return-void
.end method

.method public setReserved4(I)V
    .locals 0
    .param p1, "field_5_reserved4"    # I

    .prologue
    .line 205
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    .line 206
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[AXIS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, "    .axisType             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getAxisType()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getAxisType()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, "    .reserved1            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved1()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved1()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, "    .reserved2            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved2()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved2()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "    .reserved3            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved3()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved3()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "    .reserved4            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved4()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved4()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v1, "[/AXIS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
