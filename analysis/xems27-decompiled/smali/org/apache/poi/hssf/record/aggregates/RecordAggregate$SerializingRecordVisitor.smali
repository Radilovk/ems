.class final Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;
.super Ljava/lang/Object;
.source "RecordAggregate.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializingRecordVisitor"
.end annotation


# instance fields
.field private _countBytesWritten:I

.field private final _data:[B

.field private final _startOffset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;->_data:[B

    .line 67
    iput p2, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;->_startOffset:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;->_countBytesWritten:I

    .line 69
    return-void
.end method


# virtual methods
.method public countBytesWritten()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;->_countBytesWritten:I

    return v0
.end method

.method public visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 3
    .param p1, "r"    # Lorg/apache/poi/hssf/record/Record;

    .line 74
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;->_startOffset:I

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;->_countBytesWritten:I

    add-int/2addr v0, v1

    .line 75
    .local v0, "currentOffset":I
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;->_data:[B

    invoke-virtual {p1, v0, v2}, Lorg/apache/poi/hssf/record/Record;->serialize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$SerializingRecordVisitor;->_countBytesWritten:I

    .line 76
    return-void
.end method
