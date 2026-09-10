.class public abstract Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.super Lorg/apache/poi/hssf/record/RecordBase;
.source "RecordAggregate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;,
        Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordSizingVisitor;,
        Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;,
        Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordBase;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method public getRecordSize()I
    .locals 2

    .line 46
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordSizingVisitor;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordSizingVisitor;-><init>()V

    .line 47
    .local v0, "rsv":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordSizingVisitor;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 48
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordSizingVisitor;->getTotalSize()I

    move-result v1

    return v1
.end method

.method public final serialize(I[B)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 41
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;

    invoke-direct {v0, p2, p1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;-><init>([BI)V

    .line 42
    .local v0, "srv":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 43
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;->countBytesWritten()I

    move-result v1

    return v1
.end method

.method public abstract visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
.end method
