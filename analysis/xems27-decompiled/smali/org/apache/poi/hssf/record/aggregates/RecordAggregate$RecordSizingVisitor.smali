.class final Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordSizingVisitor;
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
    name = "RecordSizingVisitor"
.end annotation


# instance fields
.field private _totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordSizingVisitor;->_totalSize:I

    .line 84
    return-void
.end method


# virtual methods
.method public getTotalSize()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordSizingVisitor;->_totalSize:I

    return v0
.end method

.method public visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 2
    .param p1, "r"    # Lorg/apache/poi/hssf/record/Record;

    .line 89
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordSizingVisitor;->_totalSize:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getRecordSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordSizingVisitor;->_totalSize:I

    .line 90
    return-void
.end method
