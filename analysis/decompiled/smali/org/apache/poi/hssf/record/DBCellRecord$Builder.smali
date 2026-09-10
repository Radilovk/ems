.class public final Lorg/apache/poi/hssf/record/DBCellRecord$Builder;
.super Ljava/lang/Object;
.source "DBCellRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/DBCellRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private _cellOffsets:[S

.field private _nCellOffsets:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_cellOffsets:[S

    .line 39
    return-void
.end method


# virtual methods
.method public addCellOffset(I)V
    .locals 4
    .param p1, "cellRefOffset"    # I

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_cellOffsets:[S

    array-length v1, v1

    iget v2, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_nCellOffsets:I

    if-gt v1, v2, :cond_0

    .line 43
    iget v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_nCellOffsets:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [S

    .line 44
    .local v0, "temp":[S
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_cellOffsets:[S

    iget v2, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_nCellOffsets:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iput-object v0, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_cellOffsets:[S

    .line 47
    .end local v0    # "temp":[S
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_cellOffsets:[S

    iget v2, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_nCellOffsets:I

    int-to-short v3, p1

    aput-short v3, v1, v2

    .line 48
    iget v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_nCellOffsets:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_nCellOffsets:I

    .line 49
    return-void
.end method

.method public build(I)Lorg/apache/poi/hssf/record/DBCellRecord;
    .locals 4
    .param p1, "rowOffset"    # I

    .prologue
    const/4 v3, 0x0

    .line 52
    iget v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_nCellOffsets:I

    new-array v0, v1, [S

    .line 53
    .local v0, "cellOffsets":[S
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_cellOffsets:[S

    iget v2, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_nCellOffsets:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    new-instance v1, Lorg/apache/poi/hssf/record/DBCellRecord;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/hssf/record/DBCellRecord;-><init>(I[S)V

    return-object v1
.end method
