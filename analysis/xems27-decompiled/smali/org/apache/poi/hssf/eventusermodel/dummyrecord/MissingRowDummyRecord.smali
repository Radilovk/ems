.class public final Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;
.super Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;
.source "MissingRowDummyRecord.java"


# instance fields
.field private rowNumber:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "rowNumber"    # I

    .line 28
    invoke-direct {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;-><init>()V

    .line 29
    iput p1, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;->rowNumber:I

    .line 30
    return-void
.end method


# virtual methods
.method public getRowNumber()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;->rowNumber:I

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
