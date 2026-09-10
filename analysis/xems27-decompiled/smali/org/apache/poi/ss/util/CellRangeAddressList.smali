.class public Lorg/apache/poi/ss/util/CellRangeAddressList;
.super Ljava/lang/Object;
.source "CellRangeAddressList.java"


# instance fields
.field protected final _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "firstRow"    # I
    .param p2, "lastRow"    # I
    .param p3, "firstCol"    # I
    .param p4, "lastCol"    # I

    .line 55
    invoke-direct {p0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    .line 56
    invoke-virtual {p0, p1, p3, p2, p4}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(IIII)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 62
    invoke-direct {p0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 65
    .local v0, "nItems":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 66
    iget-object v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v3, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "k":I
    :cond_0
    return-void
.end method

.method public static getEncodedSize(I)I
    .locals 1
    .param p0, "numberOfRanges"    # I

    .line 122
    invoke-static {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getEncodedSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method public addCellRangeAddress(IIII)V
    .locals 1
    .param p1, "firstRow"    # I
    .param p2, "firstCol"    # I
    .param p3, "lastRow"    # I
    .param p4, "lastCol"    # I

    .line 90
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v0, p1, p3, p2, p4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 91
    .local v0, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 92
    return-void
.end method

.method public addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1
    .param p1, "cra"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 94
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public copy()Lorg/apache/poi/ss/util/CellRangeAddressList;
    .locals 5

    .line 141
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    .line 143
    .local v0, "result":Lorg/apache/poi/ss/util/CellRangeAddressList;
    iget-object v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 144
    .local v1, "nItems":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 145
    iget-object v3, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 146
    .local v3, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 144
    .end local v3    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "k":I
    :cond_0
    return-object v0
.end method

.method public countRanges()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCellRangeAddress(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .param p1, "index"    # I

    .line 111
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method public getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 152
    .local v0, "result":[Lorg/apache/poi/ss/util/CellRangeAddress;
    iget-object v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 153
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getEncodedSize(I)I

    move-result v0

    return v0
.end method

.method public remove(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 3
    .param p1, "rangeIndex"    # I

    .line 97
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Range index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is outside allowable range (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "List is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serialize(I[B)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 126
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getSize()I

    move-result v0

    .line 127
    .local v0, "totalSize":I
    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v1, p2, p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BII)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 128
    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 131
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 132
    .local v0, "nItems":I
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 133
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 134
    iget-object v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 135
    .local v2, "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 133
    .end local v2    # "region":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "k":I
    :cond_0
    return-void
.end method
