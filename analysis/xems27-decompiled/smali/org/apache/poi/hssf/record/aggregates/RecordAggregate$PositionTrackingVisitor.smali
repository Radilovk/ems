.class public final Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;
.super Ljava/lang/Object;
.source "RecordAggregate.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionTrackingVisitor"
.end annotation


# instance fields
.field private _position:I

.field private final _rv:Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;I)V
    .locals 0
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;
    .param p2, "initialPosition"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->_rv:Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 102
    iput p2, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->_position:I

    .line 103
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->_position:I

    return v0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 109
    iput p1, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->_position:I

    .line 110
    return-void
.end method

.method public visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 2
    .param p1, "r"    # Lorg/apache/poi/hssf/record/Record;

    .line 105
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->_position:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getRecordSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->_position:I

    .line 106
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->_rv:Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 107
    return-void
.end method
