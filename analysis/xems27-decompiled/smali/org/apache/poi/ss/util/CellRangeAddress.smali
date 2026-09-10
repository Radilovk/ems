.class public Lorg/apache/poi/ss/util/CellRangeAddress;
.super Lorg/apache/poi/ss/util/CellRangeAddressBase;
.source "CellRangeAddress.java"


# static fields
.field public static final ENCODED_SIZE:I = 0x8


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "firstRow"    # I
    .param p2, "lastRow"    # I
    .param p3, "firstCol"    # I
    .param p4, "lastCol"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/CellRangeAddressBase;-><init>(IIII)V

    .line 52
    if-lt p2, p1, :cond_0

    if-lt p4, p3, :cond_0

    .line 54
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lastRow < firstRow || lastCol < firstCol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 72
    invoke-static {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->readUShortAndCheck(Lorg/apache/poi/hssf/record/RecordInputStream;)I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;-><init>(IIII)V

    .line 73
    return-void
.end method

.method public static getEncodedSize(I)I
    .locals 1
    .param p0, "numberOfItems"    # I

    .line 88
    mul-int/lit8 v0, p0, 0x8

    return v0
.end method

.method private static readUShortAndCheck(Lorg/apache/poi/hssf/record/RecordInputStream;)I
    .locals 2
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 76
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    return v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Ran out of data reading CellRangeAddress"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 8
    .param p0, "ref"    # Ljava/lang/String;

    .line 134
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "sep":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 138
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "a":Lorg/apache/poi/ss/util/CellReference;
    move-object v2, v1

    .local v2, "b":Lorg/apache/poi/ss/util/CellReference;
    goto :goto_0

    .line 141
    .end local v1    # "a":Lorg/apache/poi/ss/util/CellReference;
    .end local v2    # "b":Lorg/apache/poi/ss/util/CellReference;
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v1    # "a":Lorg/apache/poi/ss/util/CellReference;
    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v2    # "b":Lorg/apache/poi/ss/util/CellReference;
    :goto_0
    new-instance v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v6

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public copy()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 5

    .line 84
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object v0
.end method

.method public formatAsString()Ljava/lang/String;
    .locals 2

    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatAsString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "useAbsoluteAddress"    # Z

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v0, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 105
    invoke-static {p1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    invoke-direct {v1, v2, v3, p2, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 110
    .local v1, "cellRefFrom":Lorg/apache/poi/ss/util/CellReference;
    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    invoke-direct {v2, v3, v4, p2, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 112
    .local v2, "cellRefTo":Lorg/apache/poi/ss/util/CellReference;
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/util/CellReference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->isFullColumnRange()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->isFullRowRange()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    :cond_1
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public serialize(I[B)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p2, p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 62
    return v1
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 65
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 66
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 67
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 68
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 69
    return-void
.end method
