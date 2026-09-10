.class public final Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "AxisLineFormatRecord.java"


# static fields
.field public static final AXIS_TYPE_AXIS_LINE:S = 0x0s

.field public static final AXIS_TYPE_MAJOR_GRID_LINE:S = 0x1s

.field public static final AXIS_TYPE_MINOR_GRID_LINE:S = 0x2s

.field public static final AXIS_TYPE_WALLS_OR_FLOOR:S = 0x3s

.field public static final sid:S = 0x1021s


# instance fields
.field private field_1_axisType:S


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

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->field_1_axisType:S

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 77
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;-><init>()V

    .line 79
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->field_1_axisType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->field_1_axisType:S

    .line 80
    return-object v0
.end method

.method public getAxisType()S
    .locals 1

    .line 97
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->field_1_axisType:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 68
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 73
    const/16 v0, 0x1021

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 64
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->field_1_axisType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 65
    return-void
.end method

.method public setAxisType(S)V
    .locals 0
    .param p1, "field_1_axisType"    # S

    .line 112
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->field_1_axisType:S

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[AXISLINEFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v1, "    .axisType             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->getAxisType()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->getAxisType()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "[/AXISLINEFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
