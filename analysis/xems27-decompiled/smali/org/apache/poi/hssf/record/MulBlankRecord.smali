.class public final Lorg/apache/poi/hssf/record/MulBlankRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "MulBlankRecord.java"


# static fields
.field public static final sid:S = 0xbes


# instance fields
.field private final _firstCol:I

.field private final _lastCol:I

.field private final _row:I

.field private final _xfs:[S


# direct methods
.method public constructor <init>(II[S)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "firstCol"    # I
    .param p3, "xfs"    # [S

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 40
    iput p1, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_row:I

    .line 41
    iput p2, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_firstCol:I

    .line 42
    iput-object p3, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_xfs:[S

    .line 43
    array-length v0, p3

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_lastCol:I

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 87
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 88
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_row:I

    .line 89
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_firstCol:I

    .line 90
    invoke-static {p1}, Lorg/apache/poi/hssf/record/MulBlankRecord;->parseXFs(Lorg/apache/poi/hssf/record/RecordInputStream;)[S

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_xfs:[S

    .line 91
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_lastCol:I

    .line 92
    return-void
.end method

.method private static parseXFs(Lorg/apache/poi/hssf/record/RecordInputStream;)[S
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 97
    .local v0, "retval":[S
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 98
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    aput-short v2, v0, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "idx":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 140
    return-object p0
.end method

.method protected getDataSize()I
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_xfs:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getFirstColumn()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_firstCol:I

    return v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_lastCol:I

    return v0
.end method

.method public getNumColumns()I
    .locals 2

    .line 72
    iget v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_lastCol:I

    iget v1, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_firstCol:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_row:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 119
    const/16 v0, 0xbe

    return v0
.end method

.method public getXFAt(I)S
    .locals 1
    .param p1, "coffset"    # I

    .line 81
    iget-object v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_xfs:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 123
    iget v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_row:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 124
    iget v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_firstCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 125
    iget-object v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_xfs:[S

    array-length v0, v0

    .line 126
    .local v0, "nItems":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 127
    iget-object v2, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_xfs:[S

    aget-short v2, v2, v1

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_lastCol:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[MULBLANK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v1, "row  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getRow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v2, "firstcol  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getFirstColumn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v2, " lastcol  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_lastCol:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getNumColumns()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 111
    const-string v3, "xf"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "\t\t= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getXFAt(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "k":I
    :cond_0
    const-string v1, "[/MULBLANK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
