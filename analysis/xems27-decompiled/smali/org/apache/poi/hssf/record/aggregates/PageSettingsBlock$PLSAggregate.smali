.class final Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "PageSettingsBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PLSAggregate"
.end annotation


# static fields
.field private static final EMPTY_CONTINUE_RECORD_ARRAY:[Lorg/apache/poi/hssf/record/ContinueRecord;


# instance fields
.field private final _pls:Lorg/apache/poi/hssf/record/Record;

.field private _plsContinues:[Lorg/apache/poi/hssf/record/ContinueRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/hssf/record/ContinueRecord;

    sput-object v0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;->EMPTY_CONTINUE_RECORD_ARRAY:[Lorg/apache/poi/hssf/record/ContinueRecord;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 3
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 54
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 55
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;->_pls:Lorg/apache/poi/hssf/record/Record;

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/ContinueRecord;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ContinueRecord;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/ContinueRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;->_plsContinues:[Lorg/apache/poi/hssf/record/ContinueRecord;

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    .end local v0    # "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/ContinueRecord;>;"
    goto :goto_1

    .line 64
    :cond_1
    sget-object v0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;->EMPTY_CONTINUE_RECORD_ARRAY:[Lorg/apache/poi/hssf/record/ContinueRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;->_plsContinues:[Lorg/apache/poi/hssf/record/ContinueRecord;

    .line 66
    :goto_1
    return-void
.end method


# virtual methods
.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 3
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 70
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;->_pls:Lorg/apache/poi/hssf/record/Record;

    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;->_plsContinues:[Lorg/apache/poi/hssf/record/ContinueRecord;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 72
    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
