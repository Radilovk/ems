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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_listener:Lorg/apache/poi/hssf/eventmodel/ERFListener;

    .line 49
    if-nez p2, :cond_0

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_sids:[S

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_sids:[S

    .line 53
    invoke-static {v0}, Ljava/util/Arrays;->sort([S)V

    .line 55
    :goto_0
    return-void
.end method

.method private isSidIncluded(S)Z
    .locals 2
    .param p1, "sid"    # S

    .line 57
    iget-object v0, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_sids:[S

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 58
    return v1

    .line 60
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private processRecord(Lorg/apache/poi/hssf/record/Record;)Z
    .locals 1
    .param p1, "record"    # Lorg/apache/poi/hssf/record/Record;

    .line 71
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->isSidIncluded(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->_listener:Lorg/apache/poi/hssf/eventmodel/ERFListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/eventmodel/ERFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public processRecords(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordFormatException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "last_record":Lorg/apache/poi/hssf/record/Record;
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .line 91
    .local v1, "recStream":Lorg/apache/poi/hssf/record/RecordInputStream;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 93
    invoke-static {v1}, Lorg/apache/poi/hssf/record/RecordFactory;->createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)[Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    .line 94
    .local v2, "recs":[Lorg/apache/poi/hssf/record/Record;
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 95
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->processRecord(Lorg/apache/poi/hssf/record/Record;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    aget-object v0, v2, v3

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "k":I
    :cond_1
    goto :goto_2

    .line 104
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 106
    .local v3, "record":Lorg/apache/poi/hssf/record/Record;
    if-eqz v3, :cond_4

    .line 107
    if-eqz v0, :cond_3

    .line 108
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->processRecord(Lorg/apache/poi/hssf/record/Record;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 109
    return-void

    .line 112
    :cond_3
    move-object v0, v3

    .line 115
    .end local v2    # "recs":[Lorg/apache/poi/hssf/record/Record;
    .end local v3    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_4
    :goto_2
    goto :goto_0

    .line 117
    :cond_5
    if-eqz v0, :cond_6

    .line 118
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/eventmodel/EventRecordFactory;->processRecord(Lorg/apache/poi/hssf/record/Record;)Z

    .line 120
    :cond_6
    return-void
.end method
