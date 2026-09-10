.class public final Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ChartFormatRecord.java"


# static fields
.field public static final sid:S = 0x1014s

.field private static final varyDisplayPattern:Lorg/apache/poi/util/BitField;


# instance fields
.field private field1_x_position:I

.field private field2_y_position:I

.field private field3_width:I

.field private field4_height:I

.field private field5_grbit:I

.field private field6_unknown:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->varyDisplayPattern:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 50
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

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field1_x_position:I

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field2_y_position:I

    .line 55
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field3_width:I

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field4_height:I

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field6_unknown:I

    .line 59
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 84
    const/16 v0, 0x14

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field4_height:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 88
    const/16 v0, 0x1014

    return v0
.end method

.method public getVaryDisplayPattern()Z
    .locals 2

    .line 124
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->varyDisplayPattern:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field3_width:I

    return v0
.end method

.method public getXPosition()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field1_x_position:I

    return v0
.end method

.method public getYPosition()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field2_y_position:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getXPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 76
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getYPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 77
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getWidth()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 78
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getHeight()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 79
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 80
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field6_unknown:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 81
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 120
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field4_height:I

    .line 121
    return-void
.end method

.method public setVaryDisplayPattern(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 128
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->varyDisplayPattern:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    .line 129
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 112
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field3_width:I

    .line 113
    return-void
.end method

.method public setXPosition(I)V
    .locals 0
    .param p1, "xPosition"    # I

    .line 96
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field1_x_position:I

    .line 97
    return-void
.end method

.method public setYPosition(I)V
    .locals 0
    .param p1, "yPosition"    # I

    .line 104
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field2_y_position:I

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[CHARTFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, "    .xPosition       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getXPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v2, "    .yPosition       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getYPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v2, "    .width           = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v2, "    .height          = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v2, "    .grBit           = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "[/CHARTFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
