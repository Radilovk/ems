.class public final Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "PlotGrowthRecord.java"


# static fields
.field public static final sid:S = 0x1064s


# instance fields
.field private field_1_horizontalScale:I

.field private field_2_verticalScale:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    .line 46
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 81
    new-instance v0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;-><init>()V

    .line 83
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    .line 84
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    .line 85
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 72
    const/16 v0, 0x8

    return v0
.end method

.method public getHorizontalScale()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 77
    const/16 v0, 0x1064

    return v0
.end method

.method public getVerticalScale()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 67
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 68
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 69
    return-void
.end method

.method public setHorizontalScale(I)V
    .locals 0
    .param p1, "field_1_horizontalScale"    # I

    .line 104
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_1_horizontalScale:I

    .line 105
    return-void
.end method

.method public setVerticalScale(I)V
    .locals 0
    .param p1, "field_2_verticalScale"    # I

    .line 120
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->field_2_verticalScale:I

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[PLOTGROWTH]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v1, "    .horizontalScale      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->getHorizontalScale()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->getHorizontalScale()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v5, "    .verticalScale        = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->getVerticalScale()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/PlotGrowthRecord;->getVerticalScale()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v1, "[/PLOTGROWTH]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
