.class public final Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "ChartSubstreamRecordAggregate.java"


# instance fields
.field private final _bofRec:Lorg/apache/poi/hssf/record/BOFRecord;

.field private _psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

.field private final _recs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 4
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/BOFRecord;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;->_bofRec:Lorg/apache/poi/hssf/record/BOFRecord;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/poi/hssf/record/EOFRecord;

    if-eq v2, v3, :cond_3

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isComponentRecord(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v2

    const/16 v3, 0x89c

    if-ne v2, v3, :cond_0

    .line 49
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->addLateHeaderFooter(Lorg/apache/poi/hssf/record/HeaderFooterRecord;)V

    goto :goto_0

    .line 52
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Found more than one PageSettingsBlock in chart sub-stream"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_1
    new-instance v2, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    iput-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    .line 56
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_3
    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;->_recs:Ljava/util/List;

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    .line 63
    .local v0, "eof":Lorg/apache/poi/hssf/record/Record;
    instance-of v2, v0, Lorg/apache/poi/hssf/record/EOFRecord;

    if-nez v2, :cond_4

    .line 64
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Bad chart EOF"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_4
    return-void
.end method


# virtual methods
.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 3
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .prologue
    .line 69
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;->_recs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;->_bofRec:Lorg/apache/poi/hssf/record/BOFRecord;

    invoke-interface {p1, v2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;->_recs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 74
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;->_recs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    .line 75
    .local v1, "rb":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    if-eqz v2, :cond_1

    .line 76
    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    .end local v1    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 73
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    .restart local v1    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_1
    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    .end local v1    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    invoke-interface {p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_2

    .line 81
    :cond_2
    sget-object v2, Lorg/apache/poi/hssf/record/EOFRecord;->instance:Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-interface {p1, v2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_0
.end method
