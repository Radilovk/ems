.class public abstract Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.super Lorg/apache/poi/hssf/record/Record;
.source "ContinuableRecord.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public final getRecordSize()I
    .locals 2

    .line 53
    invoke-static {}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->createForCountingOnly()Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    move-result-object v0

    .line 54
    .local v0, "out":Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 55
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->terminate()V

    .line 56
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->getTotalSize()I

    move-result v1

    return v1
.end method

.method public final serialize(I[B)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 61
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v0, p2, p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    .line 62
    .local v0, "leo":Lorg/apache/poi/util/LittleEndianOutput;
    new-instance v1, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;->getSid()S

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;-><init>(Lorg/apache/poi/util/LittleEndianOutput;I)V

    .line 63
    .local v1, "out":Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 64
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->terminate()V

    .line 65
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->getTotalSize()I

    move-result v2

    return v2
.end method

.method protected abstract serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
.end method
