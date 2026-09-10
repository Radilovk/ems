.class public final Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;
.super Ljava/lang/Object;
.source "EventRecordFactory.java"


# instance fields
.field private final _listener:Lorg/apache/poi/hssf/eventmodel/ERFListener;

.field private final _sids:[S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/eventmodel/ERFListener;[S)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/poi/hssf/eventmodel/ERFListener;
    .param p2, "sids"    # [S

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_listener:Lorg/apache/poi/hssf/eventmodel/ERFListener;

    .line 49
    if-nez p2, :cond_0

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_sids:[S

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p2}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_sids:[S

    .line 53
    iget-object v0, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_sids:[S

    invoke-static {v0}, Ljava/util/Arrays;->sort([S)V

    goto :goto_0
.end method

.method private isSidIncluded(S)Z
    .locals 2
    .param p1, "sid"    # S

    .prologue
    const/4 v0, 0x1

    .line 57
    iget-object v1, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_sids:[S

    if-nez v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_sids:[S

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processRecord(Lorg/apache/poi/hssf/record/Record;)Z
    .locals 1
    .param p1, "record"    # Lorg/apache/poi/hssf/record/Record;

    .prologue
    .line 71
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->isSidIncluded(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_listener:Lorg/apache/poi/hssf/eventmodel/ERFListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/eventmodel/ERFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public processRecords(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordFormatException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, "last_record":Lorg/apache/poi/hssf/record/Record;
    new-instance v2, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .line 91
    .local v2, "recStream":Lorg/apache/poi/hssf/record/RecordInputStream;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 92
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 93
    invoke-static {v2}, Lorg/apache/poi/hssf/record/RecordFactory;->createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)[Lorg/apache/poi/hssf/record/Record;

    move-result-object v4

    .line 94
    .local v4, "recs":[Lorg/apache/poi/hssf/record/Record;
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 95
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 96
    if-eqz v1, :cond_2

    .line 97
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->processRecord(Lorg/apache/poi/hssf/record/Record;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 120
    .end local v0    # "k":I
    .end local v4    # "recs":[Lorg/apache/poi/hssf/record/Record;
    :cond_1
    :goto_2
    return-void

    .line 101
    .restart local v0    # "k":I
    .restart local v4    # "recs":[Lorg/apache/poi/hssf/record/Record;
    :cond_2
    aget-object v1, v4, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "k":I
    :cond_3
    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 106
    .local v3, "record":Lorg/apache/poi/hssf/record/Record;
    if-eqz v3, :cond_0

    .line 107
    if-eqz v1, :cond_4

    .line 108
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->processRecord(Lorg/apache/poi/hssf/record/Record;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    :cond_4
    move-object v1, v3

    goto :goto_0

    .line 117
    .end local v3    # "record":Lorg/apache/poi/hssf/record/Record;
    .end local v4    # "recs":[Lorg/apache/poi/hssf/record/Record;
    :cond_5
    if-eqz v1, :cond_1

    .line 118
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->processRecord(Lorg/apache/poi/hssf/record/Record;)Z

    goto :goto_2
.end method
