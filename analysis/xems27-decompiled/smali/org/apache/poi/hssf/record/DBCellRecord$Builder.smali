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

    .line 42
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_cellOffsets:[S

    array-length v1, v0

    iget v2, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_nCellOffsets:I

    if-gt v1, v2, :cond_0

    .line 43
    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [S

    .line 44
    .local v1, "temp":[S
    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iput-object v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_cellOffsets:[S

    .line 47
    .end local v1    # "temp":[S
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_cellOffsets:[S

    iget v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_nCellOffsets:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_nCellOffsets:I

    .line 49
    return-void
.end method

.method public build(I)Lorg/apache/poi/hssf/record/DBCellRecord;
    .locals 4
    .param p1, "rowOffset"    # I

    .line 52
    iget v0, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_nCellOffsets:I

    new-array v1, v0, [S

    .line 53
    .local v1, "cellOffsets":[S
    iget-object v2, p0, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->_cellOffsets:[S

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    new-instance v0, Lorg/apache/poi/hssf/record/DBCellRecord;

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/record/DBCellRecord;-><init>(I[S)V

    return-object v0
.end method
