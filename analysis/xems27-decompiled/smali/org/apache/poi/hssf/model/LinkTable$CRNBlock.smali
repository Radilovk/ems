.class final Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;
.super Ljava/lang/Object;
.source "LinkTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/model/LinkTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CRNBlock"
.end annotation


# instance fields
.field private final _countRecord:Lorg/apache/poi/hssf/record/CRNCountRecord;

.field private final _crns:[Lorg/apache/poi/hssf/record/CRNRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 4
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CRNCountRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;->_countRecord:Lorg/apache/poi/hssf/record/CRNCountRecord;

    .line 80
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CRNCountRecord;->getNumberOfCRNs()I

    move-result v0

    .line 81
    .local v0, "nCRNs":I
    new-array v1, v0, [Lorg/apache/poi/hssf/record/CRNRecord;

    .line 82
    .local v1, "crns":[Lorg/apache/poi/hssf/record/CRNRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 83
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/CRNRecord;

    aput-object v3, v1, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;->_crns:[Lorg/apache/poi/hssf/record/CRNRecord;

    .line 86
    return-void
.end method


# virtual methods
.method public getCrns()[Lorg/apache/poi/hssf/record/CRNRecord;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;->_crns:[Lorg/apache/poi/hssf/record/CRNRecord;

    invoke-virtual {v0}, [Lorg/apache/poi/hssf/record/CRNRecord;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hssf/record/CRNRecord;

    return-object v0
.end method
