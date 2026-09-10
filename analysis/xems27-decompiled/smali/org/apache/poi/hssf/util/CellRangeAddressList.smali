.class public Lorg/apache/poi/hssf/util/CellRangeAddressList;
.super Lorg/apache/poi/ss/util/CellRangeAddressList;
.source "CellRangeAddressList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "firstRow"    # I
    .param p2, "lastRow"    # I
    .param p3, "firstCol"    # I
    .param p4, "lastCol"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>(IIII)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 47
    invoke-direct {p0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 50
    .local v0, "nItems":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 51
    iget-object v2, p0, Lorg/apache/poi/hssf/util/CellRangeAddressList;->_list:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/hssf/util/CellRangeAddress;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "k":I
    :cond_0
    return-void
.end method
