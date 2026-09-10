.class public Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;
.super Ljava/lang/Object;
.source "EventWorkbookBuilder.java"

# interfaces
.implements Lorg/apache/poi/hssf/eventusermodel/HSSFListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SheetRecordCollectingListener"
.end annotation


# instance fields
.field private boundSheetRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;",
            ">;"
        }
    .end annotation
.end field

.field private childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

.field private externSheetRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/ExternSheetRecord;",
            ">;"
        }
    .end annotation
.end field

.field private sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V
    .locals 1
    .param p1, "childListener"    # Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->boundSheetRecords:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->externSheetRecords:Ljava/util/List;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;

    .line 122
    iput-object p1, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    .line 123
    return-void
.end method


# virtual methods
.method public getBoundSheetRecords()[Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .locals 2

    .line 127
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->boundSheetRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hssf/record/BoundSheetRecord;

    return-object v0
.end method

.method public getExternSheetRecords()[Lorg/apache/poi/hssf/record/ExternSheetRecord;
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->externSheetRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hssf/record/ExternSheetRecord;

    return-object v0
.end method

.method public getSSTRecord()Lorg/apache/poi/hssf/record/SSTRecord;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;

    return-object v0
.end method

.method public getStubHSSFWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 4

    .line 142
    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->getStubWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->create(Lorg/apache/poi/hssf/model/InternalWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    .line 144
    .local v0, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    iget-object v1, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->boundSheetRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .line 145
    .local v2, "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 146
    .end local v2    # "bsr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    goto :goto_0

    .line 148
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public getStubWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 3

    .line 151
    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->getExternSheetRecords()[Lorg/apache/poi/hssf/record/ExternSheetRecord;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->getBoundSheetRecords()[Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->getSSTRecord()Lorg/apache/poi/hssf/record/SSTRecord;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder;->createStubWorkbook([Lorg/apache/poi/hssf/record/ExternSheetRecord;[Lorg/apache/poi/hssf/record/BoundSheetRecord;Lorg/apache/poi/hssf/record/SSTRecord;)Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public processRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 1
    .param p1, "record"    # Lorg/apache/poi/hssf/record/Record;

    .line 164
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->processRecordInternally(Lorg/apache/poi/hssf/record/Record;)V

    .line 167
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->childListener:Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 168
    return-void
.end method

.method public processRecordInternally(Lorg/apache/poi/hssf/record/Record;)V
    .locals 2
    .param p1, "record"    # Lorg/apache/poi/hssf/record/Record;

    .line 175
    instance-of v0, p1, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->boundSheetRecords:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->externSheetRecords:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/hssf/record/SSTRecord;

    if-eqz v0, :cond_2

    .line 182
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/SSTRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;->sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;

    .line 184
    :cond_2
    :goto_0
    return-void
.end method
