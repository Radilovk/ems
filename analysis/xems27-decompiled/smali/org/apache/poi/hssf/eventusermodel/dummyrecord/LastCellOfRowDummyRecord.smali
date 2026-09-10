.class public final Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;
.super Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;
.source "LastCellOfRowDummyRecord.java"


# instance fields
.field private lastColumnNumber:I

.field private row:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "lastColumnNumber"    # I

    .line 29
    invoke-direct {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;-><init>()V

    .line 30
    iput p1, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->row:I

    .line 31
    iput p2, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->lastColumnNumber:I

    .line 32
    return-void
.end method


# virtual methods
.method public getLastColumnNumber()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->lastColumnNumber:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->row:I

    return v0
.end method

.method public bridge synthetic serialize(I[B)I
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # [B

    .line 25
    invoke-super {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;->serialize(I[B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End-of-Row for Row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at Column="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->lastColumnNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
