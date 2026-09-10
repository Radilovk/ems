.class public final Lorg/apache/poi/hssf/record/chart/AxisParentRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "AxisParentRecord.java"


# static fields
.field public static final AXIS_TYPE_MAIN:S = 0x0s

.field public static final AXIS_TYPE_SECONDARY:S = 0x1s

.field public static final sid:S = 0x1041s


# instance fields
.field private field_1_axisType:S

.field private field_2_x:I

.field private field_3_y:I

.field private field_4_width:I

.field private field_5_height:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 47
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_1_axisType:S

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_2_x:I

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_3_y:I

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_4_width:I

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_5_height:I

    .line 53
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 103
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;-><init>()V

    .line 105
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/AxisParentRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_1_axisType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_1_axisType:S

    .line 106
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_2_x:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_2_x:I

    .line 107
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_3_y:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_3_y:I

    .line 108
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_4_width:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_4_width:I

    .line 109
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_5_height:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_5_height:I

    .line 110
    return-object v0
.end method

.method public getAxisType()S
    .locals 1

    .line 125
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_1_axisType:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 94
    const/16 v0, 0x12

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 194
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_5_height:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 99
    const/16 v0, 0x1041

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 178
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_4_width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_2_x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 162
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_3_y:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 86
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_1_axisType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 87
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_2_x:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 88
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_3_y:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 89
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_4_width:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 90
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_5_height:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 91
    return-void
.end method

.method public setAxisType(S)V
    .locals 0
    .param p1, "field_1_axisType"    # S

    .line 138
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_1_axisType:S

    .line 139
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "field_5_height"    # I

    .line 202
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_5_height:I

    .line 203
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "field_4_width"    # I

    .line 186
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_4_width:I

    .line 187
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "field_2_x"    # I

    .line 154
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_2_x:I

    .line 155
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "field_3_y"    # I

    .line 170
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_3_y:I

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[AXISPARENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "    .axisType             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->getAxisType()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->getAxisType()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v5, "    .x                    = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->getX()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->getX()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v5, "    .y                    = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->getY()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->getY()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v5, "    .width                = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->getWidth()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->getWidth()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v5, "    .height               = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->getHeight()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, "[/AXISPARENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
