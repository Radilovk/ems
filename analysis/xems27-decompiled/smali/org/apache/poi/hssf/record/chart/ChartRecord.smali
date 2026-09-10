.class public final Lorg/apache/poi/hssf/record/chart/ChartRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ChartRecord.java"


# static fields
.field public static final sid:S = 0x1002s


# instance fields
.field private field_1_x:I

.field private field_2_y:I

.field private field_3_width:I

.field private field_4_height:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 55
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    .line 60
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 91
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;-><init>()V

    .line 93
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/ChartRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    .line 94
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    .line 95
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    .line 96
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    .line 97
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 82
    const/16 v0, 0x10

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 149
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 87
    const/16 v0, 0x1002

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 75
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 76
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 77
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 78
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 79
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 156
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_4_height:I

    .line 157
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 142
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_3_width:I

    .line 143
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .line 114
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_1_x:I

    .line 115
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .line 128
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartRecord;->field_2_y:I

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[CHART]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, "    .x     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    const-string v2, "    .y     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->getY()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    const-string v2, "    .width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    const-string v2, "    .height= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartRecord;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "[/CHART]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
