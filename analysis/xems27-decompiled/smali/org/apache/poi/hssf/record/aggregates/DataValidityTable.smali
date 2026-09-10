.class public final Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "DataValidityTable.java"


# instance fields
.field private final _headerRec:Lorg/apache/poi/hssf/record/DVALRecord;

.field private final _validationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/DVRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 51
    new-instance v0, Lorg/apache/poi/hssf/record/DVALRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DVALRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_headerRec:Lorg/apache/poi/hssf/record/DVALRecord;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 3
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/DVALRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_headerRec:Lorg/apache/poi/hssf/record/DVALRecord;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/DVRecord;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/poi/hssf/record/DVRecord;

    if-ne v1, v2, :cond_0

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/DVRecord;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method public addDataValidation(Lorg/apache/poi/hssf/record/DVRecord;)V
    .locals 2
    .param p1, "dvRecord"    # Lorg/apache/poi/hssf/record/DVRecord;

    .line 66
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_headerRec:Lorg/apache/poi/hssf/record/DVALRecord;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DVALRecord;->setDVRecNo(I)V

    .line 68
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 2
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 56
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_headerRec:Lorg/apache/poi/hssf/record/DVALRecord;

    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->_validationList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    invoke-interface {p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
