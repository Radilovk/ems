.class public final Lorg/apache/poi/hssf/record/chart/SeriesListRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SeriesListRecord.java"


# static fields
.field public static final sid:S = 0x1016s


# instance fields
.field private field_1_seriesNumbers:[S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 44
    .local v0, "nItems":I
    new-array v1, v0, [S

    .line 45
    .local v1, "ss":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v3

    aput-short v3, v1, v2

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;->field_1_seriesNumbers:[S

    .line 50
    return-void
.end method

.method public constructor <init>([S)V
    .locals 0
    .param p1, "seriesNumbers"    # [S

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;->field_1_seriesNumbers:[S

    .line 40
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 81
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;->field_1_seriesNumbers:[S

    invoke-virtual {v1}, [S->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;-><init>([S)V

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;->field_1_seriesNumbers:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getSeriesNumbers()[S
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;->field_1_seriesNumbers:[S

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 77
    const/16 v0, 0x1016

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 65
    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;->field_1_seriesNumbers:[S

    array-length v0, v0

    .line 66
    .local v0, "nItems":I
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 68
    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;->field_1_seriesNumbers:[S

    aget-short v2, v2, v1

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SERIESLIST]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, "    .seriesNumbers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesListRecord;->getSeriesNumbers()[S

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "[/SERIESLIST]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
