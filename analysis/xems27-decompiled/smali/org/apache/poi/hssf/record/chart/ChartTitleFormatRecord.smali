.class public Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ChartTitleFormatRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;
    }
.end annotation


# static fields
.field public static final sid:S = 0x1050s


# instance fields
.field private _formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 63
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 64
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 65
    .local v0, "nRecs":I
    new-array v1, v0, [Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 68
    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    new-instance v3, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    aput-object v3, v2, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getFormatCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 84
    const/16 v0, 0x1050

    return v0
.end method

.method public modifyFormatRun(SS)V
    .locals 6
    .param p1, "oldPos"    # S
    .param p2, "newLen"    # S

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "shift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 94
    aget-object v2, v2, v1

    .line 95
    .local v2, "ctf":Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->getOffset()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->setOffset(I)V

    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->getOffset()I

    move-result v3

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 98
    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    .line 99
    .local v3, "nextCTF":Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->getOffset()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->getOffset()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v0, p2, v4

    .line 93
    .end local v2    # "ctf":Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;
    .end local v3    # "nextCTF":Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 73
    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 75
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[CHARTTITLEFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, "    .format_runs       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;->_formats:[Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 110
    aget-object v3, v3, v2

    .line 111
    .local v3, "ctf":Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;
    const-string v4, "       .char_offset= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->getOffset()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 112
    const-string v4, ",.fontidx= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->getFontIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    .end local v3    # "ctf":Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "i":I
    :cond_0
    const-string v1, "[/CHARTTITLEFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
