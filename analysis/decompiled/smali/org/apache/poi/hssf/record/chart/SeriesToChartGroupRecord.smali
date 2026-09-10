.class public final Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SeriesToChartGroupRecord.java"


# static fields
.field public static final sid:S = 0x1045s


# instance fields
.field private field_1_chartGroupIndex:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;->field_1_chartGroupIndex:S

    .line 45
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;-><init>()V

    .line 77
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;->field_1_chartGroupIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;->field_1_chartGroupIndex:S

    .line 78
    return-object v0
.end method

.method public getChartGroupIndex()S
    .locals 1

    .prologue
    .line 89
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;->field_1_chartGroupIndex:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x1045

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 62
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;->field_1_chartGroupIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 63
    return-void
.end method

.method public setChartGroupIndex(S)V
    .locals 0
    .param p1, "field_1_chartGroupIndex"    # S

    .prologue
    .line 97
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;->field_1_chartGroupIndex:S

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SeriesToChartGroup]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, "    .chartGroupIndex      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;->getChartGroupIndex()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesToChartGroupRecord;->getChartGroupIndex()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, "[/SeriesToChartGroup]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
