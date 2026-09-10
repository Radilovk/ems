.class public final Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;
.super Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;
.source "MissingCellDummyRecord.java"


# instance fields
.field private column:I

.field private row:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 29
    invoke-direct {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;-><init>()V

    .line 30
    iput p1, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;->row:I

    .line 31
    iput p2, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;->column:I

    .line 32
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 33
    iget v0, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingCellDummyRecord;->row:I

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
