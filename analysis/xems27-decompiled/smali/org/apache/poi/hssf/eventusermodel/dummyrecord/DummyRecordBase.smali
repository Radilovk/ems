.class abstract Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;
.super Lorg/apache/poi/hssf/record/Record;
.source "DummyRecordBase.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public final getRecordSize()I
    .locals 2

    .line 38
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v1, "Cannot serialize a dummy record"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSid()S
    .locals 1

    .line 32
    const/4 v0, -0x1

    return v0
.end method

.method public serialize(I[B)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 35
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v1, "Cannot serialize a dummy record"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
