.class public Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;
.super Ljava/lang/Object;
.source "HSSFRequest.java"


# instance fields
.field private final _records:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/eventusermodel/HSSFListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->_records:Ljava/util/Map;

    .line 42
    return-void
.end method


# virtual methods
.method public addListener(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;S)V
    .locals 3
    .param p1, "lsnr"    # Lorg/apache/poi/hssf/eventusermodel/HSSFListener;
    .param p2, "sid"    # S

    .line 58
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->_records:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 60
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/eventusermodel/HSSFListener;>;"
    if-nez v0, :cond_0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 62
    iget-object v1, p0, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->_records:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public addListenerForAllRecords(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V
    .locals 3
    .param p1, "lsnr"    # Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    .line 78
    invoke-static {}, Lorg/apache/poi/hssf/record/RecordFactory;->getAllKnownRecordSIDs()[S

    move-result-object v0

    .line 80
    .local v0, "rectypes":[S
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 81
    aget-short v2, v0, v1

    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->addListener(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;S)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "k":I
    :cond_0
    return-void
.end method

.method protected processRecord(Lorg/apache/poi/hssf/record/Record;)S
    .locals 5
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/eventusermodel/HSSFUserException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->_records:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/eventusermodel/HSSFListener;>;"
    const/4 v1, 0x0

    .line 98
    .local v1, "userCode":S
    if-eqz v0, :cond_2

    .line 100
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, "listenObj":Ljava/lang/Object;
    instance-of v4, v3, Lorg/apache/poi/hssf/eventusermodel/AbortableHSSFListener;

    if-eqz v4, :cond_1

    .line 103
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hssf/eventusermodel/AbortableHSSFListener;

    .line 104
    .local v4, "listener":Lorg/apache/poi/hssf/eventusermodel/AbortableHSSFListener;
    invoke-virtual {v4, p1}, Lorg/apache/poi/hssf/eventusermodel/AbortableHSSFListener;->abortableProcessRecord(Lorg/apache/poi/hssf/record/Record;)S

    move-result v1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    goto :goto_2

    .line 107
    .end local v4    # "listener":Lorg/apache/poi/hssf/eventusermodel/AbortableHSSFListener;
    :cond_0
    goto :goto_1

    .line 108
    :cond_1
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    .line 109
    .local v4, "listener":Lorg/apache/poi/hssf/eventusermodel/HSSFListener;
    invoke-interface {v4, p1}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 100
    .end local v3    # "listenObj":Ljava/lang/Object;
    .end local v4    # "listener":Lorg/apache/poi/hssf/eventusermodel/HSSFListener;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v2    # "k":I
    :cond_2
    :goto_2
    return v1
.end method
