.class public Lorg/apache/poi/hssf/util/CellRangeAddress;
.super Lorg/apache/poi/ss/util/CellRangeAddress;
.source "CellRangeAddress.java"


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "firstRow"    # I
    .param p2, "lastRow"    # I
    .param p3, "firstCol"    # I
    .param p4, "lastCol"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 36
    return-void
.end method
