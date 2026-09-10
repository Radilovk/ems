.class public final Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SeriesIndexRecord.java"


# static fields
.field public static final sid:S = 0x1065s


# instance fields
.field private field_1_index:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;->field_1_index:S

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 73
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;-><init>()V

    .line 75
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;->field_1_index:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;->field_1_index:S

    .line 76
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 64
    const/4 v0, 0x2

    return v0
.end method

.method public getIndex()S
    .locals 1

    .line 87
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;->field_1_index:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 69
    const/16 v0, 0x1065

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 60
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;->field_1_index:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 61
    return-void
.end method

.method public setIndex(S)V
    .locals 0
    .param p1, "field_1_index"    # S

    .line 95
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;->field_1_index:S

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SINDEX]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, "    .index                = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;->getIndex()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesIndexRecord;->getIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v1, "[/SINDEX]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
