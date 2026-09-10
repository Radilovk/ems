.class public final Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "CustomViewSettingsRecordAggregate.java"


# instance fields
.field private final _begin:Lorg/apache/poi/hssf/record/Record;

.field private final _end:Lorg/apache/poi/hssf/record/Record;

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
    const/16 v3, 0x1ab

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_begin:Lorg/apache/poi/hssf/record/Record;

    .line 44
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_begin:Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x1aa

    if-eq v1, v2, :cond_0

    .line 45
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad begin record"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isComponentRecord(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    if-eqz v1, :cond_1

    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Found more than one PageSettingsBlock in custom view settings sub-stream"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    .line 55
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_3
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_recs:Ljava/util/List;

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_end:Lorg/apache/poi/hssf/record/Record;

    .line 62
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_end:Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    if-eq v1, v3, :cond_4

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad custom view settings end record"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_4
    return-void
.end method

.method public static isBeginRecord(I)Z
    .locals 1
    .param p0, "sid"    # I

    .prologue
    .line 84
    const/16 v0, 0x1aa

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public append(Lorg/apache/poi/hssf/record/RecordBase;)V
    .locals 1
    .param p1, "r"    # Lorg/apache/poi/hssf/record/RecordBase;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_recs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 3
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .prologue
    .line 68
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_recs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_begin:Lorg/apache/poi/hssf/record/Record;

    invoke-interface {p1, v2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_recs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 73
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_recs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    .line 74
    .local v1, "rb":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    if-eqz v2, :cond_1

    .line 75
    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    .end local v1    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 72
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    .restart local v1    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_1
    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    .end local v1    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    invoke-interface {p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_2

    .line 80
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->_end:Lorg/apache/poi/hssf/record/Record;

    invoke-interface {p1, v2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_0
.end method
